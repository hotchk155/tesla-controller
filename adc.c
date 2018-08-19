#include <system.h>

#define MK_ADC_CONF(a) 0b00000001|((a)<<2)
#define ADC_0_RA0	MK_ADC_CONF(0)
#define ADC_1_RA1	MK_ADC_CONF(1)
#define ADC_2_RA2	MK_ADC_CONF(2)
#define ADC_3_RA4	MK_ADC_CONF(3)
#define ADC_4_RC0	MK_ADC_CONF(4)
#define ADC_5_RC1	MK_ADC_CONF(5)
#define ADC_6_RC2	MK_ADC_CONF(6)
#define ADC_7_RC3	MK_ADC_CONF(7)


byte adc_channel[8] = {0};
byte adc_count = 0;
byte adc_current = 0xFF;
unsigned adc_result[8] = {0}; // 10-bit (0-1023) ADC result for each gate
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
			adc_result[adc_chan] = adresh << 8 | adresl;			

			// next channel
			if(++adc_chan >= adc_count) {
				adc_chan = 0;
			}
		}
		
		// connect ADC to appropriate channel
		adcon0 = adc_channel
		
		// force a delay before we start the conversion
		// to give time for ADC sample and hold cap to charge
		adc_delay = 10;
	}
}

