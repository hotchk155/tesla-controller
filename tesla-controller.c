
//
// HEADER FILES
//
#include <system.h>
#include <memory.h>

// PIC CONFIG BITS
// - RESET INPUT DISABLED
// - WATCHDOG TIMER OFF
// - INTERNAL OSC
#pragma DATA _CONFIG1, _FOSC_INTOSC & _WDTE_OFF & _MCLRE_OFF &_CLKOUTEN_OFF
#pragma DATA _CONFIG2, _WRT_OFF & _PLLEN_OFF & _STVREN_ON & _BORV_19 & _LVP_OFF
#pragma CLOCK_FREQ 16000000

//
// TYPE DEFS
//
typedef unsigned char byte;

//
// MACRO DEFS
//

/*+
		VDD - VSS
LED		RA5	- RA0/PGD	PGD
AN		RA4 - RA1/PGC	PGC
VPP		VPP - RA2		AN
RX		RC5 - RC0		AN
-		RC4 - RC1		OUT2
OUT1	RC3 - RC2		AN
*/
#define P_LED 	lata.5
#define P_OUT1 	latc.1
#define P_OUT2 	latc.3


#define TRIS_A 	0b11011111
#define TRIS_C 	0b11110101

//
// GLOBAL DATA
//

// define the buffer used to receive MIDI input
#define SZ_RXBUFFER 			64		// size of MIDI receive buffer (power of 2)
#define SZ_RXBUFFER_MASK 		0x3F	// mask to keep an index within range of buffer
volatile byte rx_buffer[SZ_RXBUFFER];	// the MIDI receive buffer
volatile byte rx_head = 0;				// buffer data insertion index
volatile byte rx_tail = 0;				// buffer data retrieval index

// State flags used while receiving MIDI data
byte midi_status = 0;					// current MIDI message status (running status)
byte midi_num_params = 0;				// number of parameters needed by current MIDI message
byte midi_params[2];					// parameter values of current MIDI message
char midi_param = 0;					// number of params currently received

#define NO_NOTE 0xFF


//////////////////////////////////////////////////
#define OSC_RESOLUTION 1000000L
#define WAVE_OFF 0xFF

enum {
	WAVE_LOW,
	WAVE_HIGH
};

typedef struct {
	int freq;
	int duty;
	
	volatile byte phase;
	volatile unsigned int next_event;
	volatile unsigned int high_ticks;
	volatile unsigned int low_ticks;
	
	volatile byte update;
	volatile unsigned int next_high_ticks;
	volatile unsigned int next_low_ticks;
} OSCILLATOR;

OSCILLATOR osc1;


#define NUM_ADC_CHANNELS	4
#define MK_ADC_CONF(a) 0b00000001|((a)<<2)
#define ADC_0_RA0	MK_ADC_CONF(0)
#define ADC_1_RA1	MK_ADC_CONF(1)
#define ADC_2_RA2	MK_ADC_CONF(2)
#define ADC_3_RA4	MK_ADC_CONF(3)
#define ADC_4_RC0	MK_ADC_CONF(4)
#define ADC_5_RC1	MK_ADC_CONF(5)
#define ADC_6_RC2	MK_ADC_CONF(6)
#define ADC_7_RC3	MK_ADC_CONF(7)


// MIDI message bytes
#define MIDI_MTC_QTR_FRAME 		0xf1
#define MIDI_SPP 				0xf2
#define MIDI_SONG_SELECT 		0xf3 
#define MIDI_SYNCH_TICK     	0xf8
#define MIDI_SYNCH_START    	0xfa
#define MIDI_SYNCH_CONTINUE 	0xfb
#define MIDI_SYNCH_STOP     	0xfc
#define MIDI_SYSEX_BEGIN     	0xf0
#define MIDI_SYSEX_END     		0xf7
////////////////////////////////////////////////////////////
// INTERRUPT HANDLER CALLED WHEN CHARACTER RECEIVED AT 
// SERIAL PORT OR WHEN TIMER 1 OVERLOWS
void interrupt( void )
{

	// Tone generation for voice 1
	if(pir1.2) //CCP1IF
	{	
		if(osc1.phase == WAVE_LOW) { // AT END OF LOW PHASE
			if(osc1.high_ticks) { // nonzero duty?			
				P_OUT1 = 1;
				osc1.next_event += osc1.high_ticks;
				osc1.phase = WAVE_HIGH;		
			}
			else {
				P_OUT1 = 0;
				osc1.next_event += osc1.low_ticks;
			}
		}
		else { // AT END OF HIGH PHASE
			if(osc1.low_ticks) { // nonzero duty?			
				P_OUT1 = 0;
				osc1.next_event += osc1.low_ticks;
				osc1.phase = WAVE_LOW;		
			}
			else {
				P_OUT1 = 1;
				osc1.next_event += osc1.high_ticks;
			}
		}
		ccpr1h = osc1.next_event >> 8;
		ccpr1l = (byte)osc1.next_event;
		
		if(osc1.update) { // got new frequency/duty info?
			osc1.high_ticks = osc1.next_high_ticks;
			osc1.low_ticks = osc1.next_low_ticks;
			osc1.update = 0;
		}
		
		pir1.2 = 0;
	}

		
	// serial rx ISR
	if(pir1.5)
	{	
		byte b = rcreg;
		byte next_head = (rx_head + 1)&SZ_RXBUFFER_MASK;
		if(next_head != rx_tail) {
			rx_buffer[rx_head] = b;
			rx_head = next_head;
		}
		//LED_1_PULSE(LED_PULSE_MIDI_IN);
		pir1.5 = 0;
		//P_LED = 1;
	}
}

void osc_apply(OSCILLATOR *posc) {
	long full_wave = OSC_RESOLUTION/posc->freq;
	while(posc->update);
	if(posc->duty >= 250) {
		posc->next_high_ticks = full_wave;
		posc->next_low_ticks = 0;
	}
	else {
		posc->next_high_ticks = (full_wave * posc->duty)>>8;
		posc->next_low_ticks = full_wave - posc->next_high_ticks;	
	}
	posc->update = 1;
	
}
void osc_duty(OSCILLATOR *posc, int duty) {
	posc->duty = duty;
	osc_apply(posc);
}
void osc_play(OSCILLATOR *posc, int freq) {
	posc->freq = freq;
	osc_apply(posc);
}
void osc_stop(OSCILLATOR *posc) {
	while(posc->update);
	posc->next_high_ticks = 0;
	posc->next_low_ticks = 1000;
	posc->update = 1;
}
void osc_init(OSCILLATOR *posc) {
	memset(posc, 0, sizeof(OSCILLATOR));
	posc->freq = 440;
	posc->duty = 128;
	osc_stop(posc);
}

enum {
	KNOB_MODE = 1,	//
	KNOB_FREQ = 3,
	KNOB_DUTY1 = 0,//
	KNOB_DUTY2 = 2
};
typedef struct {
	byte config;
	byte status;
	unsigned int smoothed;
	unsigned int result;
} ADC_CHAN;

ADC_CHAN adc_chan[NUM_ADC_CHANNELS] = {
	{ADC_2_RA2},
	{ADC_3_RA4},
	{ADC_4_RC0},
	{ADC_6_RC2}
};
byte adc_current = 0xFF;
byte adc_delay = 0; // counter used to force delay for cap to charge

///////////////////////////////////////////////////////
// ADC STATE MACHINE
void adc_run() 
{	
	if(adc_delay > 0) {	// waiting for ADC acquisition delay
		if(--adc_delay == 0) {
			// start conversion
			adcon0.1 = 1;
		}
	}
	else if(!adcon0.1) { // conversion complete
		if(adc_current == 0xFF) { // no result to store
			adc_current = 0;
		}
		else { 
			// format the 10 bit result 
			adc_chan[adc_current].smoothed = 
				(1023 - (adresh << 8 | adresl) + 15*(long)adc_chan[adc_current].smoothed) / 16;
			
			int d = adc_chan[adc_current].smoothed - adc_chan[adc_current].result;
			if(d*d > 1) {
				adc_chan[adc_current].result = adc_chan[adc_current].smoothed;
				adc_chan[adc_current].status = 1;
			}
				
			// next channel
			if(++adc_current >= NUM_ADC_CHANNELS) {
				adc_current = 0;
			}
		}
		
		// connect ADC to appropriate channel
		adcon0 = adc_chan[adc_current].config;
		
		// force a delay before we start the conversion
		// to give time for ADC sample and hold cap to charge
		adc_delay = 10;
	}
}





////////////////////////////////////////////////////////////
// INITIALISE SERIAL PORT FOR MIDI
void uart_init()
{
	pir1.1 = 0;		//TXIF 		
	pir1.5 = 0;		//RCIF
	
	pie1.1 = 0;		//TXIE 		no interrupts
	pie1.5 = 1;		//RCIE 		enable
	
	baudcon.4 = 0;	// SCKP		synchronous bit polarity 
	baudcon.3 = 1;	// BRG16	enable 16 bit brg
	baudcon.1 = 0;	// WUE		wake up enable off
	baudcon.0 = 0;	// ABDEN	auto baud detect
		
	txsta.6 = 0;	// TX9		8 bit transmission
	txsta.5 = 0;	// TXEN		transmit enable
	txsta.4 = 0;	// SYNC		async mode
	txsta.3 = 0;	// SEDNB	break character
	txsta.2 = 0;	// BRGH		high baudrate 
	txsta.0 = 0;	// TX9D		bit 9

	rcsta.7 = 1;	// SPEN 	serial port enable
	rcsta.6 = 0;	// RX9 		8 bit operation
	rcsta.5 = 1;	// SREN 	enable receiver
	rcsta.4 = 1;	// CREN 	continuous receive enable
		
	spbrgh = 0;		// brg high byte
	spbrg = 31;		// brg low byte (31250)	
	
}

////////////////////////////////////////////////////////////
// GET MESSAGES FROM MIDI INPUT
byte midi_in()
{
	// loop until there is no more data or
	// we receive a full message
	for(;;)
	{
		// usart buffer overrun error?
		if(rcsta.1)
		{
			rcsta.4 = 0;
			rcsta.4 = 1;
		}
		
		// check for empty receive buffer
		if(rx_head == rx_tail)
			return 0;
		
		// read the character out of buffer
		byte ch = rx_buffer[rx_tail];
		++rx_tail;
		rx_tail&=SZ_RXBUFFER_MASK;

		// SYSTEM MESSAGE
		if((ch & 0xf0) == 0xf0)
		{
			switch(ch)
			{
			// RELEVANT REALTIME MESSAGE 
			case MIDI_SYNCH_TICK:
			case MIDI_SYNCH_START:
			case MIDI_SYNCH_CONTINUE:
			case MIDI_SYNCH_STOP:
				return ch;		
			// SYSTEM COMMON MESSAGES WITH PARAMETERS
			case MIDI_MTC_QTR_FRAME:	// 1 param byte follows
			case MIDI_SONG_SELECT:		// 1 param byte follows			
			case MIDI_SPP:				// 2 param bytes follow
				midi_param = 0;
				midi_status = ch; 
				midi_num_params = (ch==MIDI_SPP)? 2:1;
				break;
			}
			// Ignoring....			
			//  0xF4	RESERVED
			//  0xF5	RESERVED
			//  0xF6	TUNE REQUEST
			//	0xF9	RESERVED
			//	0xFD	RESERVED
			//	0xFE	ACTIVE SENSING
			//	0xFF	RESET
		}    
		// STATUS BYTE
		else if(!!(ch & 0x80))
		{
			midi_param = 0;
			midi_status = ch; 
			switch(ch & 0xF0)
			{
			case 0xC0: //  Patch change  1  instrument #   
			case 0xD0: //  Channel Pressure  1  pressure  
				midi_num_params = 1;
				break;    
			case 0xA0: //  Polyphonic aftertouch  2  key  touch  
			case 0x80: //  Note-off  2  key  velocity  
			case 0x90: //  Note-on  2  key  veolcity  
			case 0xB0: //  Continuous controller  2  controller #  controller value  
			case 0xE0: //  Pitch bend  2  lsb (7 bits)  msb (7 bits)  
			default:
				midi_num_params = 2;
				break;        
			}
		}    
		else 
		{
			if(midi_status)
			{
				// gathering parameters
				midi_params[midi_param++] = ch;
				if(midi_param >= midi_num_params)
				{
					// we have a complete message.. is it one we care about?
					midi_param = 0;
					switch(midi_status&0xF0)
					{
					case 0x80: // note off
					case 0x90: // note on
					case 0xE0: // pitch bend
					case 0xB0: // cc
					case 0xD0: // channel pressure
						return midi_status; 
					}
				}
			}
		}
	}
	// no message ready yet
	return 0;
}


#define MAX_NOTES 8
int note_count = 0;
byte note_held[MAX_NOTES];

static byte add_note(byte note) {
	char i;

	// if the note is already at top of stack
	// there is nothing to do
	if(note_count>0 && note == note_held) {
		return 0;
	}
	
	// check if note is already in the stack
	for(i = 0; i < note_count; ++i) {
		if(note_held[i] == note) { // found it
			// shuffle all lower indexed notes up one place
			for(; i > 0; --i) {
				note_held[i] = note_held[i-1];
			}
			// and place this note at the front
			note_held[0] = note;
			return 1;
		}
	}

	// is the note stack full?
	if(note_count == MAX_NOTES) { 
		// ok, we're going to lose the oldest note
		for(i = MAX_NOTES-1; i > 0; --i) {
			note_held[i] = note_held[i-1];
		}
	}
	else {
		// otherwise make space for the new note
		for(i = note_count; i > 0; --i) {
			note_held[i] = note_held[i-1];
		}
		++note_count;
	}
	// add the new note
	note_held[0] = note;	
	return 1;
}

///////////////////////////////////////////////////////////////
// REMOVE A NOTE FROM A STACK
static byte remove_note(byte note) 
{
	char i;
	
	// search for the note
	for(i = 0; i < note_count; ++i) {
		if(note_held[i] == note) { 
			// remove the note by shufflng all later notes down
			--note_count;
			for(; i<note_count; ++i) {
				note_held[i] = note_held[i+1];
			}
			return 1;
		}
	}
	return 0;
}

int get_freq(byte note) {

	const int f[] = {	
		4186,	//c
		4435,	
		4699,	//d
		4978,	
		5274,	//e
		5588,	//f
		5920,
		6272,	//g
		6645,	
		7040,	//a
		7459,	
		7902	//b
	};
	while(note > 119) {
		note -=12;
	}
	return  f[note%12]>>(9-(note/12));	
}

///////////////////////////////////////////////////////////////
// PRIORITIZE A NOTE
static void note_msg(byte note, byte vel)
{
	
	byte i = 0;
	byte new_note = NO_NOTE;

	// maintain stack of notes that are held
	if(vel) {
		add_note(note);
	}
	else {
		remove_note(note);
	}
	
	for(i=0; i<note_count; ++i) {				
		if(new_note == NO_NOTE || new_note < note_held[i]) {
			new_note = note_held[i];
		}
	}
	
	if(new_note != NO_NOTE) {
		osc_play(&osc1, get_freq(new_note));
	}
	else {
		osc_stop(&osc1);
	}	
}


////////////////////////////////////////////////////////////
// MAIN
void main()
{ 
	
	// osc control / 16MHz / internal
	osccon = 0b01111010;
	
	// configure io
	trisa = TRIS_A;              	
    trisc = TRIS_C;              
	ansela = 0b00010100;		
	anselc = 0b00000101;		
	lata=0;
	latc=0;

	uart_init();

	// initialise MIDI comms
	//initUSART();

	// Configure timer 1 (controls tempo)
	// Input 4MHz
	// Prescaled to 500KHz
	//tmr1l = 0;	 // reset timer count register
	//tmr1h = 0;
	//t1con.7 = 0; // } Fosc/4 rate
	//t1con.6 = 0; // }
	//t1con.5 = 1; // } 1:8 prescale
	//t1con.4 = 1; // }
	//t1con.0 = 1; // timer 1 on
	//pie1.0 = 1;  // timer 1 interrupt enable
	
	// Configure timer 0 (controls systemticks)
	// 	timer 0 runs at 4MHz
	// 	prescaled 1/16 = 250kHz
	// 	rollover at 250 = 1kHz
	// 	1ms per rollover	
	//option_reg.5 = 0; // timer 0 driven from instruction cycle clock
	//option_reg.3 = 0; // timer 0 is prescaled
	//option_reg.2 = 0; // }
	//option_reg.1 = 1; // } 1/16 prescaler
	//option_reg.0 = 1; // }
	//intcon.5 = 1; 	  // enabled timer 0 interrrupt
	//intcon.2 = 0;     // clear interrupt fired flag
	
	// enable interrupts	
	intcon.7 = 1; //GIE
	intcon.6 = 1; //PEIE


	
/*
	clock at 4MHz.. 1/4 prescale, 1MHz resolution
	
	440Hz
	full cycle = 0.0022727272727273 sec
	= 1136 counts per wave cycle
	= 568 counts per flip at 50% duty
*/
	osc_init(&osc1);
	
//	set_osc1(356,128);
	ccp1con = 0b00001010; // software interrupt only
	
	ccpr1h = 0;
	ccpr1l = 0;
	pie1.2 = 1; // CCP1IE
	

	// Configure timer 1
	tmr1h = 0;
	tmr1l = 0;
	t1con = 0b00100001; // Internal clock, Fosc/4
			
	// Configure the ADC
    adcon1=0b11010000; // right justify, Fosc/16, Vdd - Vss
    adcon0=0b00000001; // turn on the ADC

	enum {
		MODE_OFF,
		MODE_MIDI,
		MODE_PITCH,
		MODE_PITCHLO
	};
	byte new_mode = MODE_OFF;
	byte mode = MODE_OFF;
	for(;;) {
	P_LED = 0;
		adc_run();
		
		if(adc_chan[KNOB_MODE].status) {
			adc_chan[KNOB_MODE].status = 0;
			if(adc_chan[KNOB_MODE].result < 100) {
				new_mode = MODE_OFF;
			}
			else if(adc_chan[KNOB_MODE].result < 300) {
				new_mode = MODE_MIDI;
			}
			else if(adc_chan[KNOB_MODE].result < 500) {			
				new_mode = MODE_PITCH;
			}
			else {//if(adc_chan[KNOB_MODE].result < 700) {
				new_mode = MODE_PITCHLO;
			}/*
			else if(adc_chan[KNOB_MODE].result < 900) {
			}
			else {
			}*/

			if(new_mode != mode) {
				switch(new_mode) {
					case MODE_OFF:
						osc_stop(&osc1);
						break;
					case MODE_MIDI:					
						osc_stop(&osc1);
						rx_head = 0;
						rx_tail = 0;
						break;
					case MODE_PITCH:
						osc_play(&osc1, adc_chan[KNOB_MODE].result);
						break;
					case MODE_PITCHLO:
						osc_play(&osc1, adc_chan[KNOB_MODE].result/16);
						break;
				}
				mode = new_mode;
			}
		}
		
		switch(mode) {
		case MODE_MIDI:	
			{
				byte msg = midi_in();		
				switch(msg & 0xF0) {
				// MIDI NOTE OFF
				case 0x80:
				case 0x90:
					note_msg(midi_params[0], midi_params[1]);
					P_LED = 1;
					break;
				default:
					P_LED = 0;
					break;
				}		
			}
			break;
		case MODE_PITCH:	
			if(adc_chan[KNOB_FREQ].status) {
				adc_chan[KNOB_FREQ].status = 0;
				osc_play(&osc1, adc_chan[KNOB_FREQ].result);
			}
			break;
		case MODE_PITCHLO:	
			if(adc_chan[KNOB_FREQ].status) {
				adc_chan[KNOB_FREQ].status = 0;
				osc_play(&osc1, adc_chan[KNOB_FREQ].result/16);
			}
			break;
		}
		
		if(adc_chan[KNOB_DUTY1].status) {
			adc_chan[KNOB_DUTY1].status = 0;
			if(adc_chan[KNOB_DUTY1].result < 2) {
				osc_stop(&osc1);
			}
			else if(adc_chan[KNOB_DUTY1].result > 1020) {
				osc_duty(&osc1, 255);
			}
			else {
				osc_duty(&osc1, adc_chan[KNOB_DUTY1].result>>2);
			}
		}
	}
}

/* 
	< 100
	< 300
	< 500
	< 700
	< 900
	
	
*/

/*
0
192	200	
394	400
599	600
804	800
1000
*/