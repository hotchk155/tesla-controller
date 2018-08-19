;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 7.42
;// License Type  : Pro License
;// Limitations   : PIC12,PIC16 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P16F1825.inc"
; Heap block 0, size:128 (0x00002100 - 0x0000217F)
__HEAP_BLOCK0_BANK               EQU	0x00000042
__HEAP_BLOCK0_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK0_END_OFFSET         EQU	0x0000007F
; Heap block 1, size:128 (0x00002180 - 0x000021FF)
__HEAP_BLOCK1_BANK               EQU	0x00000043
__HEAP_BLOCK1_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK1_END_OFFSET         EQU	0x0000007F
; Heap block 2, size:128 (0x00002200 - 0x0000227F)
__HEAP_BLOCK2_BANK               EQU	0x00000044
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK2_END_OFFSET         EQU	0x0000007F
; Heap block 3, size:128 (0x00002280 - 0x000022FF)
__HEAP_BLOCK3_BANK               EQU	0x00000045
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x0000007F
__div_32_3_00002_arg_a           EQU	0x000000CD ; bytes:4
__div_32_3_00002_arg_b           EQU	0x000000D1 ; bytes:4
CompTempVarRet141                EQU	0x000000DC ; bytes:4
__div_32_3_00002_1_r             EQU	0x000000D6 ; bytes:4
__div_32_3_00002_1_i             EQU	0x000000DA ; bytes:1
CompTempVar143                   EQU	0x000000DB ; bytes:1
__div_8_8_00000_arg_a            EQU	0x000000E5 ; bytes:1
__div_8_8_00000_arg_b            EQU	0x000000E6 ; bytes:1
CompTempVarRet153                EQU	0x000000EA ; bytes:1
__div_8_8_00000_1_r              EQU	0x000000E7 ; bytes:1
__div_8_8_00000_1_i              EQU	0x000000E8 ; bytes:1
CompTempVar155                   EQU	0x000000E9 ; bytes:1
__rem_8_8_00000_arg_a            EQU	0x000000E0 ; bytes:1
__rem_8_8_00000_arg_b            EQU	0x000000E1 ; bytes:1
CompTempVarRet156                EQU	0x000000E7 ; bytes:1
__rem_8_8_00000_1_c              EQU	0x000000E4 ; bytes:1
__rem_8_8_00000_1_i              EQU	0x000000E5 ; bytes:1
CompTempVar158                   EQU	0x000000E6 ; bytes:1
memset8_00000_arg_ptr            EQU	0x000000BF ; bytes:2
memset8_00000_arg_ch             EQU	0x000000C1 ; bytes:1
memset8_00000_arg_len            EQU	0x000000C2 ; bytes:1
CompTempVarRet380                EQU	0x000000C5 ; bytes:2
memset8_00000_1_uPtr             EQU	0x000000C3 ; bytes:2
gbl_status                       EQU	0x00000003 ; bytes:1
__mul_8_8__00006_arg_a           EQU	0x000000BF ; bytes:1
__mul_8_8__00006_arg_b           EQU	0x000000C0 ; bytes:1
CompTempVarRet381                EQU	0x000000E7 ; bytes:1
__mul_8_8__00006_1_i             EQU	0x000000E6 ; bytes:1
__mul_16s__0000F_arg_a           EQU	0x000000C3 ; bytes:2
__mul_16s__0000F_arg_b           EQU	0x000000C5 ; bytes:2
CompTempVarRet391                EQU	0x000000CC ; bytes:2
__mul_16s__0000F_1_i             EQU	0x000000C9 ; bytes:1
__mul_16s__0000F_1_t             EQU	0x000000CA ; bytes:2
__mul_32s__00011_arg_a           EQU	0x000000DA ; bytes:4
__mul_32s__00011_arg_b           EQU	0x000000DE ; bytes:4
CompTempVarRet395                EQU	0x000000E7 ; bytes:4
__mul_32s__00011_1_i             EQU	0x000000E6 ; bytes:1
gbl_indf0                        EQU	0x00000000 ; bytes:1
gbl_indf1                        EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_fsr0                         EQU	0x00000004 ; bytes:1
gbl_fsr0l                        EQU	0x00000004 ; bytes:1
gbl_fsr0h                        EQU	0x00000005 ; bytes:1
gbl_fsr1                         EQU	0x00000006 ; bytes:1
gbl_fsr1l                        EQU	0x00000006 ; bytes:1
gbl_fsr1h                        EQU	0x00000007 ; bytes:1
gbl_bsr                          EQU	0x00000008 ; bytes:1
gbl_wreg                         EQU	0x00000009 ; bytes:1
gbl_pclath                       EQU	0x0000000A ; bytes:1
gbl_intcon                       EQU	0x0000000B ; bytes:1
gbl_porta                        EQU	0x0000000C ; bytes:1
gbl_portc                        EQU	0x0000000E ; bytes:1
gbl_pir1                         EQU	0x00000011 ; bytes:1
gbl_pir2                         EQU	0x00000012 ; bytes:1
gbl_pir3                         EQU	0x00000013 ; bytes:1
gbl_tmr0                         EQU	0x00000015 ; bytes:1
gbl_tmr1                         EQU	0x00000016 ; bytes:1
gbl_tmr1l                        EQU	0x00000016 ; bytes:1
gbl_tmr1h                        EQU	0x00000017 ; bytes:1
gbl_t1con                        EQU	0x00000018 ; bytes:1
gbl_t1gcon                       EQU	0x00000019 ; bytes:1
gbl_tmr2                         EQU	0x0000001A ; bytes:1
gbl_pr2                          EQU	0x0000001B ; bytes:1
gbl_t2con                        EQU	0x0000001C ; bytes:1
gbl_cpscon0                      EQU	0x0000001E ; bytes:1
gbl_cpscon1                      EQU	0x0000001F ; bytes:1
gbl_trisa                        EQU	0x0000008C ; bytes:1
gbl_trisc                        EQU	0x0000008E ; bytes:1
gbl_pie1                         EQU	0x00000091 ; bytes:1
gbl_pie2                         EQU	0x00000092 ; bytes:1
gbl_pie3                         EQU	0x00000093 ; bytes:1
gbl_option_reg                   EQU	0x00000095 ; bytes:1
gbl_pcon                         EQU	0x00000096 ; bytes:1
gbl_wdtcon                       EQU	0x00000097 ; bytes:1
gbl_osctune                      EQU	0x00000098 ; bytes:1
gbl_osccon                       EQU	0x00000099 ; bytes:1
gbl_oscconl                      EQU	0x00000099 ; bytes:1
gbl_oscconh                      EQU	0x0000009A ; bytes:1
gbl_oscstat                      EQU	0x0000009A ; bytes:1
gbl_adres                        EQU	0x0000009B ; bytes:1
gbl_adresl                       EQU	0x0000009B ; bytes:1
gbl_adresh                       EQU	0x0000009C ; bytes:1
gbl_adcon0                       EQU	0x0000009D ; bytes:1
gbl_adcon1                       EQU	0x0000009E ; bytes:1
gbl_lata                         EQU	0x0000010C ; bytes:1
gbl_latc                         EQU	0x0000010E ; bytes:1
gbl_cm1con0                      EQU	0x00000111 ; bytes:1
gbl_cm1con1                      EQU	0x00000112 ; bytes:1
gbl_cm2con0                      EQU	0x00000113 ; bytes:1
gbl_cm2con1                      EQU	0x00000114 ; bytes:1
gbl_cmout                        EQU	0x00000115 ; bytes:1
gbl_borcon                       EQU	0x00000116 ; bytes:1
gbl_fvrcon                       EQU	0x00000117 ; bytes:1
gbl_daccon0                      EQU	0x00000118 ; bytes:1
gbl_daccon1                      EQU	0x00000119 ; bytes:1
gbl_srcon0                       EQU	0x0000011A ; bytes:1
gbl_srcon1                       EQU	0x0000011B ; bytes:1
gbl_apfcon0                      EQU	0x0000011D ; bytes:1
gbl_apfcon1                      EQU	0x0000011E ; bytes:1
gbl_ansela                       EQU	0x0000018C ; bytes:1
gbl_anselc                       EQU	0x0000018E ; bytes:1
gbl_eeadr                        EQU	0x00000191 ; bytes:1
gbl_eeadrl                       EQU	0x00000191 ; bytes:1
gbl_eeadrh                       EQU	0x00000192 ; bytes:1
gbl_eedata                       EQU	0x00000193 ; bytes:1
gbl_eedatl                       EQU	0x00000193 ; bytes:1
gbl_eedath                       EQU	0x00000194 ; bytes:1
gbl_eecon1                       EQU	0x00000195 ; bytes:1
gbl_eecon2                       EQU	0x00000196 ; bytes:1
gbl_rcreg                        EQU	0x00000199 ; bytes:1
gbl_txreg                        EQU	0x0000019A ; bytes:1
gbl_spbrg                        EQU	0x0000019B ; bytes:1
gbl_spbrgl                       EQU	0x0000019B ; bytes:1
gbl_spbrgh                       EQU	0x0000019C ; bytes:1
gbl_rcsta                        EQU	0x0000019D ; bytes:1
gbl_txsta                        EQU	0x0000019E ; bytes:1
gbl_baudcon                      EQU	0x0000019F ; bytes:1
gbl_wpua                         EQU	0x0000020C ; bytes:1
gbl_wpuc                         EQU	0x0000020E ; bytes:1
gbl_ssp1buf                      EQU	0x00000211 ; bytes:1
gbl_sspbuf                       EQU	0x00000211 ; bytes:1
gbl_ssp1add                      EQU	0x00000212 ; bytes:1
gbl_sspadd                       EQU	0x00000212 ; bytes:1
gbl_ssp1msk                      EQU	0x00000213 ; bytes:1
gbl_sspmsk                       EQU	0x00000213 ; bytes:1
gbl_ssp1stat                     EQU	0x00000214 ; bytes:1
gbl_sspstat                      EQU	0x00000214 ; bytes:1
gbl_ssp1con1                     EQU	0x00000215 ; bytes:1
gbl_sspcon                       EQU	0x00000215 ; bytes:1
gbl_sspcon1                      EQU	0x00000215 ; bytes:1
gbl_ssp1con2                     EQU	0x00000216 ; bytes:1
gbl_sspcon2                      EQU	0x00000216 ; bytes:1
gbl_ssp1con3                     EQU	0x00000217 ; bytes:1
gbl_sspcon3                      EQU	0x00000217 ; bytes:1
gbl_ccpr1l                       EQU	0x00000291 ; bytes:1
gbl_ccpr1h                       EQU	0x00000292 ; bytes:1
gbl_ccp1con                      EQU	0x00000293 ; bytes:1
gbl_pwm1con                      EQU	0x00000294 ; bytes:1
gbl_ccp1as                       EQU	0x00000295 ; bytes:1
gbl_eccp1as                      EQU	0x00000295 ; bytes:1
gbl_pstr1con                     EQU	0x00000296 ; bytes:1
gbl_ccpr2l                       EQU	0x00000298 ; bytes:1
gbl_ccpr2h                       EQU	0x00000299 ; bytes:1
gbl_ccp2con                      EQU	0x0000029A ; bytes:1
gbl_pwm2con                      EQU	0x0000029B ; bytes:1
gbl_ccp2as                       EQU	0x0000029C ; bytes:1
gbl_pstr2con                     EQU	0x0000029D ; bytes:1
gbl_ccptmrs                      EQU	0x0000029E ; bytes:1
gbl_ccpr3l                       EQU	0x00000311 ; bytes:1
gbl_ccpr3h                       EQU	0x00000312 ; bytes:1
gbl_ccp3con                      EQU	0x00000313 ; bytes:1
gbl_ccpr4l                       EQU	0x00000318 ; bytes:1
gbl_ccpr4h                       EQU	0x00000319 ; bytes:1
gbl_ccp4con                      EQU	0x0000031A ; bytes:1
gbl_inlvla                       EQU	0x0000038C ; bytes:1
gbl_inlvlc                       EQU	0x0000038E ; bytes:1
gbl_iocap                        EQU	0x00000391 ; bytes:1
gbl_iocan                        EQU	0x00000392 ; bytes:1
gbl_iocaf                        EQU	0x00000393 ; bytes:1
gbl_clkrcon                      EQU	0x0000039A ; bytes:1
gbl_mdcon                        EQU	0x0000039C ; bytes:1
gbl_mdsrc                        EQU	0x0000039D ; bytes:1
gbl_mdcarl                       EQU	0x0000039E ; bytes:1
gbl_mdcarh                       EQU	0x0000039F ; bytes:1
gbl_tmr4                         EQU	0x00000415 ; bytes:1
gbl_pr4                          EQU	0x00000416 ; bytes:1
gbl_t4con                        EQU	0x00000417 ; bytes:1
gbl_tmr6                         EQU	0x0000041C ; bytes:1
gbl_pr6                          EQU	0x0000041D ; bytes:1
gbl_t6con                        EQU	0x0000041E ; bytes:1
gbl_status_shad                  EQU	0x00000FE4 ; bytes:1
gbl_wreg_shad                    EQU	0x00000FE5 ; bytes:1
gbl_bsr_shad                     EQU	0x00000FE6 ; bytes:1
gbl_pclath_shad                  EQU	0x00000FE7 ; bytes:1
gbl_fsr0l_shad                   EQU	0x00000FE8 ; bytes:1
gbl_fsr0h_shad                   EQU	0x00000FE9 ; bytes:1
gbl_fsr1l_shad                   EQU	0x00000FEA ; bytes:1
gbl_fsr1h_shad                   EQU	0x00000FEB ; bytes:1
gbl_stkptr                       EQU	0x00000FED ; bytes:1
gbl_tosl                         EQU	0x00000FEE ; bytes:1
gbl_tosh                         EQU	0x00000FEF ; bytes:1
gbl_rx_buffer                    EQU	0x00000020 ; bytes:64
gbl_rx_head                      EQU	0x000000B4 ; bytes:1
gbl_rx_tail                      EQU	0x000000B5 ; bytes:1
gbl_midi_status                  EQU	0x000000B6 ; bytes:1
gbl_midi_num_params              EQU	0x000000B7 ; bytes:1
gbl_midi_params                  EQU	0x000000B0 ; bytes:2
gbl_midi_param                   EQU	0x000000B8 ; bytes:1
gbl_osc1                         EQU	0x000000A0 ; bytes:16
gbl_adc_chan                     EQU	0x00000060 ; bytes:24
gbl_adc_current                  EQU	0x000000B9 ; bytes:1
gbl_adc_delay                    EQU	0x000000BA ; bytes:1
gbl_note_count                   EQU	0x000000B2 ; bytes:2
gbl_note_held                    EQU	0x00000078 ; bytes:8
interrupt_26_b                   EQU	0x000000EB ; bytes:1
interrupt_26_next_head           EQU	0x000000EC ; bytes:1
osc_apply_00000_arg_posc         EQU	0x000000C7 ; bytes:2
osc_apply_00000_1_full_wave      EQU	0x000000C9 ; bytes:4
CompTempVar579                   EQU	0x000000D5 ; bytes:1
CompTempVar581                   EQU	0x000000D5 ; bytes:1
CompTempVar582                   EQU	0x000000D6 ; bytes:1
CompTempVar583                   EQU	0x000000D5 ; bytes:1
CompTempVar584                   EQU	0x000000D5 ; bytes:1
CompTempVar585                   EQU	0x000000D5 ; bytes:1
CompTempVar588                   EQU	0x000000D6 ; bytes:1
CompTempVar589                   EQU	0x000000D7 ; bytes:2
CompTempVar592                   EQU	0x000000D9 ; bytes:1
CompTempVar594                   EQU	0x000000D5 ; bytes:4
CompTempVar595                   EQU	0x000000D9 ; bytes:2
CompTempVar596                   EQU	0x000000DB ; bytes:1
osc_duty_00000_arg_posc          EQU	0x000000BD ; bytes:2
osc_duty_00000_arg_duty          EQU	0x000000BF ; bytes:2
CompTempVar599                   EQU	0x000000C1 ; bytes:1
osc_play_00000_arg_posc          EQU	0x000000C3 ; bytes:2
osc_play_00000_arg_freq          EQU	0x000000C5 ; bytes:2
CompTempVar600                   EQU	0x000000C7 ; bytes:1
osc_stop_00000_arg_posc          EQU	0x000000C3 ; bytes:2
CompTempVar601                   EQU	0x000000C5 ; bytes:1
CompTempVar602                   EQU	0x000000C5 ; bytes:1
osc_init_00000_arg_posc          EQU	0x000000BD ; bytes:2
CompTempVar603                   EQU	0x000000BF ; bytes:1
CompTempVar604                   EQU	0x000000BF ; bytes:1
adc_run_00000_8_d                EQU	0x000000BD ; bytes:2
CompTempVar605                   EQU	0x000000C1 ; bytes:2
CompTempVar608                   EQU	0x000000C7 ; bytes:1
CompTempVar609                   EQU	0x000000C8 ; bytes:1
CompTempVar613                   EQU	0x000000C9 ; bytes:1
CompTempVar614                   EQU	0x000000CA ; bytes:1
CompTempVar615                   EQU	0x000000CB ; bytes:2
CompTempVar618                   EQU	0x000000CD ; bytes:1
CompTempVar619                   EQU	0x000000CE ; bytes:1
CompTempVar622                   EQU	0x000000E2 ; bytes:4
CompTempVar630                   EQU	0x000000CD ; bytes:1
CompTempVar633                   EQU	0x000000C9 ; bytes:1
CompTempVar634                   EQU	0x000000CA ; bytes:2
CompTempVar636                   EQU	0x000000CC ; bytes:1
CompTempVarRet637                EQU	0x000000C3 ; bytes:1
midi_in_00000_3_ch               EQU	0x000000BF ; bytes:1
CompTempVar639                   EQU	0x000000C0 ; bytes:1
CompTempVar642                   EQU	0x000000C1 ; bytes:1
CompTempVar643                   EQU	0x000000C2 ; bytes:1
CompTempVar645                   EQU	0x000000C4 ; bytes:1
CompTempVar648                   EQU	0x000000C4 ; bytes:1
add_note_00000_arg_note          EQU	0x000000C3 ; bytes:1
CompTempVarRet649                EQU	0x000000C7 ; bytes:1
add_note_00000_1_i               EQU	0x000000C4 ; bytes:1
CompTempVar652                   EQU	0x000000C5 ; bytes:1
CompTempVar653                   EQU	0x000000C6 ; bytes:1
CompTempVar657                   EQU	0x000000C8 ; bytes:1
CompTempVar658                   EQU	0x000000C9 ; bytes:1
CompTempVar662                   EQU	0x000000C8 ; bytes:1
CompTempVar663                   EQU	0x000000C9 ; bytes:1
CompTempVar666                   EQU	0x000000C8 ; bytes:1
CompTempVar667                   EQU	0x000000C9 ; bytes:1
remove_not_00013_arg_note        EQU	0x000000C3 ; bytes:1
CompTempVarRet669                EQU	0x000000C5 ; bytes:1
remove_not_00013_1_i             EQU	0x000000C4 ; bytes:1
CompTempVar673                   EQU	0x000000C5 ; bytes:1
CompTempVar674                   EQU	0x000000C6 ; bytes:1
get_freq_00000_arg_note          EQU	0x000000C7 ; bytes:1
CompTempVarRet675                EQU	0x000000E4 ; bytes:2
get_freq_00000_1_f               EQU	0x000000C8 ; bytes:24
CompTempVar678                   EQU	0x000000E2 ; bytes:1
CompTempVar680                   EQU	0x000000E3 ; bytes:1
CompTempVar683                   EQU	0x000000E4 ; bytes:1
note_msg_00000_arg_note          EQU	0x000000BF ; bytes:1
note_msg_00000_arg_vel           EQU	0x000000C0 ; bytes:1
note_msg_00000_1_i               EQU	0x000000C1 ; bytes:1
note_msg_00000_1_new_note        EQU	0x000000C2 ; bytes:1
main_1_new_mode                  EQU	0x000000BB ; bytes:1
main_1_mode                      EQU	0x000000BC ; bytes:1
main_58_msg                      EQU	0x000000BD ; bytes:1
CompTempVar710                   EQU	0x000000BE ; bytes:1
	ORG 0x00000000
	GOTO	_startup
	ORG 0x00000004
	MOVLP 0x00
	GOTO	interrupt
	ORG 0x00000007
__mul_32s__00011
; { __mul_32s_32s ; function begin
	CLRF __mul_32s__00011_1_i
	CLRF CompTempVarRet395
	CLRF CompTempVarRet395+D'1'
	CLRF CompTempVarRet395+D'2'
	CLRF CompTempVarRet395+D'3'
	BTFSS __mul_32s__00011_arg_b+D'1',7
	GOTO	label1
	BSF __mul_32s__00011_1_i,7
	COMF __mul_32s__00011_arg_b, F
	COMF __mul_32s__00011_arg_b+D'1', F
	COMF __mul_32s__00011_arg_b+D'2', F
	COMF __mul_32s__00011_arg_b+D'3', F
	INCF __mul_32s__00011_arg_b, F
	BTFSC gbl_status,2
	INCF __mul_32s__00011_arg_b+D'1', F
	BTFSC gbl_status,2
	INCF __mul_32s__00011_arg_b+D'2', F
	BTFSC gbl_status,2
	INCF __mul_32s__00011_arg_b+D'3', F
label1
	BTFSC __mul_32s__00011_1_i,5
	GOTO	label3
	BTFSS __mul_32s__00011_arg_b,0
	GOTO	label2
	MOVF __mul_32s__00011_arg_a, W
	ADDWF CompTempVarRet395, F
	MOVF __mul_32s__00011_arg_a+D'1', W
	BTFSC gbl_status,0
	INCFSZ __mul_32s__00011_arg_a+D'1', W
	ADDWF CompTempVarRet395+D'1', F
	MOVF __mul_32s__00011_arg_a+D'2', W
	BTFSC gbl_status,0
	INCFSZ __mul_32s__00011_arg_a+D'2', W
	ADDWF CompTempVarRet395+D'2', F
	MOVF __mul_32s__00011_arg_a+D'3', W
	BTFSC gbl_status,0
	INCFSZ __mul_32s__00011_arg_a+D'3', W
	ADDWF CompTempVarRet395+D'3', F
label2
	BCF gbl_status,0
	RRF __mul_32s__00011_arg_b+D'3', F
	RRF __mul_32s__00011_arg_b+D'2', F
	RRF __mul_32s__00011_arg_b+D'1', F
	RRF __mul_32s__00011_arg_b, F
	BCF gbl_status,0
	RLF __mul_32s__00011_arg_a, F
	RLF __mul_32s__00011_arg_a+D'1', F
	RLF __mul_32s__00011_arg_a+D'2', F
	RLF __mul_32s__00011_arg_a+D'3', F
	INCF __mul_32s__00011_1_i, F
	GOTO	label1
label3
	BTFSS __mul_32s__00011_1_i,7
	RETURN
	COMF CompTempVarRet395, F
	COMF CompTempVarRet395+D'1', F
	COMF CompTempVarRet395+D'2', F
	COMF CompTempVarRet395+D'3', F
	INCF CompTempVarRet395, F
	BTFSC gbl_status,2
	INCF CompTempVarRet395+D'1', F
	BTFSC gbl_status,2
	INCF CompTempVarRet395+D'2', F
	BTFSC gbl_status,2
	INCF CompTempVarRet395+D'3', F
	RETURN
; } __mul_32s_32s function end

	ORG 0x00000046
__div_32_3_00002
; { __div_32_32 ; function begin
	CLRF __div_32_3_00002_1_r
	CLRF __div_32_3_00002_1_r+D'1'
	CLRF __div_32_3_00002_1_r+D'2'
	CLRF __div_32_3_00002_1_r+D'3'
	CLRF CompTempVarRet141
	CLRF CompTempVarRet141+D'1'
	CLRF CompTempVarRet141+D'2'
	CLRF CompTempVarRet141+D'3'
	CLRF __div_32_3_00002_1_i
label4
	MOVLW 0x20
	ANDWF __div_32_3_00002_1_i, W
	MOVWF CompTempVar143
	MOVF CompTempVar143, F
	BTFSS STATUS,Z
	RETURN
	LSLF CompTempVarRet141, F
	RLF CompTempVarRet141+D'1', F
	RLF CompTempVarRet141+D'2', F
	RLF CompTempVarRet141+D'3', F
	RLF __div_32_3_00002_arg_a, F
	RLF __div_32_3_00002_arg_a+D'1', F
	RLF __div_32_3_00002_arg_a+D'2', F
	RLF __div_32_3_00002_arg_a+D'3', F
	RLF __div_32_3_00002_1_r, F
	RLF __div_32_3_00002_1_r+D'1', F
	RLF __div_32_3_00002_1_r+D'2', F
	RLF __div_32_3_00002_1_r+D'3', F
	MOVF __div_32_3_00002_arg_b+D'3', W
	SUBWF __div_32_3_00002_1_r+D'3', W
	BTFSS STATUS,Z
	GOTO	label5
	MOVF __div_32_3_00002_arg_b+D'2', W
	SUBWF __div_32_3_00002_1_r+D'2', W
	BTFSS STATUS,Z
	GOTO	label5
	MOVF __div_32_3_00002_arg_b+D'1', W
	SUBWF __div_32_3_00002_1_r+D'1', W
	BTFSS STATUS,Z
	GOTO	label5
	MOVF __div_32_3_00002_arg_b, W
	SUBWF __div_32_3_00002_1_r, W
label5
	BTFSS STATUS,C
	GOTO	label6
	MOVF __div_32_3_00002_arg_b, W
	SUBWF __div_32_3_00002_1_r, F
	MOVF __div_32_3_00002_arg_b+D'1', W
	BTFSS STATUS,C
	INCFSZ __div_32_3_00002_arg_b+D'1', W
	SUBWF __div_32_3_00002_1_r+D'1', F
	MOVF __div_32_3_00002_arg_b+D'2', W
	BTFSS STATUS,C
	INCFSZ __div_32_3_00002_arg_b+D'2', W
	SUBWF __div_32_3_00002_1_r+D'2', F
	MOVF __div_32_3_00002_arg_b+D'3', W
	BTFSS STATUS,C
	INCFSZ __div_32_3_00002_arg_b+D'3', W
	SUBWF __div_32_3_00002_1_r+D'3', F
	BSF CompTempVarRet141,0
label6
	INCF __div_32_3_00002_1_i, F
	GOTO	label4
; } __div_32_32 function end

	ORG 0x00000082
osc_apply_00000
; { osc_apply ; function begin
	MOVF osc_apply_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_apply_00000_arg_posc, W
	MOVWF FSR0L
	MOVF INDF0, W
	MOVWF __div_32_3_00002_arg_b
	INCF FSR0L, F
	CLRF CompTempVar579
	MOVLW 0x40
	MOVWF __div_32_3_00002_arg_a
	MOVLW 0x42
	MOVWF __div_32_3_00002_arg_a+D'1'
	MOVLW 0x0F
	MOVWF __div_32_3_00002_arg_a+D'2'
	MOVLW 0x00
	MOVWF __div_32_3_00002_arg_a+D'3'
	MOVF INDF0, W
	MOVWF __div_32_3_00002_arg_b+D'1'
	CLRF __div_32_3_00002_arg_b+D'2'
	BTFSC INDF0,7
	DECF __div_32_3_00002_arg_b+D'2', F
	CLRF __div_32_3_00002_arg_b+D'3'
	BTFSC INDF0,7
	DECF __div_32_3_00002_arg_b+D'3', F
	BTFSS INDF0,7
	GOTO	label7
	COMF __div_32_3_00002_arg_b, F
	COMF __div_32_3_00002_arg_b+D'1', F
	COMF __div_32_3_00002_arg_b+D'2', F
	COMF __div_32_3_00002_arg_b+D'3', F
	INCF __div_32_3_00002_arg_b, F
	BTFSC STATUS,Z
	INCF __div_32_3_00002_arg_b+D'1', F
	BTFSC STATUS,Z
	INCF __div_32_3_00002_arg_b+D'2', F
	BTFSC STATUS,Z
	INCF __div_32_3_00002_arg_b+D'3', F
	INCF CompTempVar579, F
label7
	CALL __div_32_3_00002
	MOVF CompTempVarRet141, W
	MOVWF osc_apply_00000_1_full_wave
	MOVF CompTempVarRet141+D'1', W
	MOVWF osc_apply_00000_1_full_wave+D'1'
	MOVF CompTempVarRet141+D'2', W
	MOVWF osc_apply_00000_1_full_wave+D'2'
	MOVF CompTempVarRet141+D'3', W
	MOVWF osc_apply_00000_1_full_wave+D'3'
	BTFSS CompTempVar579,0
	GOTO	label8
	COMF osc_apply_00000_1_full_wave, F
	COMF osc_apply_00000_1_full_wave+D'1', F
	COMF osc_apply_00000_1_full_wave+D'2', F
	COMF osc_apply_00000_1_full_wave+D'3', F
	INCF osc_apply_00000_1_full_wave, F
	BTFSC STATUS,Z
	INCF osc_apply_00000_1_full_wave+D'1', F
	BTFSC STATUS,Z
	INCF osc_apply_00000_1_full_wave+D'2', F
	BTFSC STATUS,Z
	INCF osc_apply_00000_1_full_wave+D'3', F
label8
	MOVF osc_apply_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_apply_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x0B
	ADDWF FSR0L, F
	MOVF INDF0, F
	BTFSS STATUS,Z
	GOTO	label8
	MOVF osc_apply_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_apply_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x02
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar582
	INCF FSR0L, F
	MOVF INDF0, W
	XORLW 0x80
	MOVWF CompTempVar581
	MOVLW 0x80
	SUBWF CompTempVar581, W
	BTFSS STATUS,Z
	GOTO	label9
	MOVLW 0xFA
	SUBWF CompTempVar582, W
label9
	BTFSS STATUS,C
	GOTO	label10
	MOVF osc_apply_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_apply_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x0C
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVF osc_apply_00000_1_full_wave, W
	MOVWF CompTempVar583
	MOVF osc_apply_00000_1_full_wave+D'1', W
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar583, W
	MOVWF INDF0
	MOVF osc_apply_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x0E
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVLW 0x00
	MOVWF CompTempVar584
	CLRF INDF0
	DECF FSR0L, F
	MOVF CompTempVar584, W
	MOVWF INDF0
	GOTO	label11
label10
	MOVF osc_apply_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_apply_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x02
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF __mul_32s__00011_arg_b
	INCF FSR0L, F
	MOVF osc_apply_00000_1_full_wave, W
	MOVWF __mul_32s__00011_arg_a
	MOVF osc_apply_00000_1_full_wave+D'1', W
	MOVWF __mul_32s__00011_arg_a+D'1'
	MOVF osc_apply_00000_1_full_wave+D'2', W
	MOVWF __mul_32s__00011_arg_a+D'2'
	MOVF osc_apply_00000_1_full_wave+D'3', W
	MOVWF __mul_32s__00011_arg_a+D'3'
	MOVF INDF0, W
	MOVWF __mul_32s__00011_arg_b+D'1'
	CLRF __mul_32s__00011_arg_b+D'2'
	BTFSC INDF0,7
	DECF __mul_32s__00011_arg_b+D'2', F
	CLRF __mul_32s__00011_arg_b+D'3'
	BTFSC INDF0,7
	DECF __mul_32s__00011_arg_b+D'3', F
	CALL __mul_32s__00011
	MOVF CompTempVarRet395, W
	MOVWF CompTempVar585
	MOVF CompTempVarRet395+D'1', W
	MOVWF CompTempVar592
	MOVF CompTempVarRet395+D'2', W
	MOVWF CompTempVar589+D'1'
	MOVF CompTempVarRet395+D'3', W
	MOVWF CompTempVar588
	MOVF osc_apply_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_apply_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x0C
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVF CompTempVar589+D'1', W
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar592, W
	MOVWF INDF0
	MOVF osc_apply_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x0C
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar594
	INCF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar594+D'1'
	CLRF CompTempVar594+D'2'
	CLRF CompTempVar594+D'3'
	MOVF CompTempVar594, W
	SUBWF osc_apply_00000_1_full_wave, W
	MOVWF CompTempVar596
	MOVF osc_apply_00000_1_full_wave+D'1', W
	MOVWF CompTempVar595+D'1'
	MOVF CompTempVar594+D'1', W
	BTFSS STATUS,C
	INCFSZ CompTempVar594+D'1', W
	SUBWF CompTempVar595+D'1', F
	MOVF osc_apply_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_apply_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x0E
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVF CompTempVar595+D'1', W
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar596, W
	MOVWF INDF0
label11
	MOVF osc_apply_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_apply_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x0B
	ADDWF FSR0L, F
	MOVLW 0x01
	MOVWF INDF0
	RETURN
; } osc_apply function end

	ORG 0x0000014C
__rem_8_8_00000
; { __rem_8_8 ; function begin
	CLRF CompTempVarRet156
	CLRF __rem_8_8_00000_1_c
	CLRF __rem_8_8_00000_1_i
label12
	MOVLW 0x08
	ANDWF __rem_8_8_00000_1_i, W
	MOVWF CompTempVar158
	MOVF CompTempVar158, F
	BTFSS STATUS,Z
	RETURN
	LSLF __rem_8_8_00000_1_c, F
	RLF __rem_8_8_00000_arg_a, F
	RLF CompTempVarRet156, F
	MOVF __rem_8_8_00000_arg_b, W
	SUBWF CompTempVarRet156, W
	BTFSS STATUS,C
	GOTO	label13
	MOVWF CompTempVarRet156
	BSF __rem_8_8_00000_1_c,0
label13
	INCF __rem_8_8_00000_1_i, F
	GOTO	label12
; } __rem_8_8 function end

	ORG 0x00000160
__div_8_8_00000
; { __div_8_8 ; function begin
	CLRF __div_8_8_00000_1_r
	CLRF CompTempVarRet153
	CLRF __div_8_8_00000_1_i
label14
	MOVLW 0x08
	ANDWF __div_8_8_00000_1_i, W
	MOVWF CompTempVar155
	MOVF CompTempVar155, F
	BTFSS STATUS,Z
	RETURN
	LSLF CompTempVarRet153, F
	RLF __div_8_8_00000_arg_a, F
	RLF __div_8_8_00000_1_r, F
	MOVF __div_8_8_00000_arg_b, W
	SUBWF __div_8_8_00000_1_r, W
	BTFSS STATUS,C
	GOTO	label15
	MOVWF __div_8_8_00000_1_r
	BSF CompTempVarRet153,0
label15
	INCF __div_8_8_00000_1_i, F
	GOTO	label14
; } __div_8_8 function end

	ORG 0x00000174
remove_not_00013
; { remove_note ; function begin
	CLRF remove_not_00013_1_i
label16
	MOVF gbl_note_count, W
	SUBWF remove_not_00013_1_i, W
	MOVF gbl_note_count+D'1', W
	BTFSC STATUS,C
	BTFSS STATUS,Z
	BTFSC gbl_note_count+D'1',7
	GOTO	label21
	MOVLW	HIGH(gbl_note_held)

	MOVWF FSR0H
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF FSR0L
	MOVF remove_not_00013_1_i, W
	ADDWF FSR0L, F
	MOVF remove_not_00013_arg_note, W
	XORWF INDF0, W
	BTFSS STATUS,Z
	GOTO	label20
	MOVF gbl_note_count, F
	BTFSS STATUS,Z
	GOTO	label17
	DECF gbl_note_count+D'1', F
label17
	DECF gbl_note_count, F
label18
	MOVF gbl_note_count, W
	SUBWF remove_not_00013_1_i, W
	MOVF gbl_note_count+D'1', W
	BTFSC STATUS,C
	BTFSS STATUS,Z
	BTFSC gbl_note_count+D'1',7
	GOTO	label19
	MOVLW	HIGH(gbl_note_held)

	MOVWF FSR0H
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF FSR0L
	INCF remove_not_00013_1_i, W
	MOVWF CompTempVar673
	MOVF CompTempVar673, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar674
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF FSR0L
	MOVF remove_not_00013_1_i, W
	ADDWF FSR0L, F
	MOVF CompTempVar674, W
	MOVWF INDF0
	INCF remove_not_00013_1_i, F
	GOTO	label18
label19
	MOVLW 0x01
	MOVWF CompTempVarRet669
	RETURN
label20
	INCF remove_not_00013_1_i, F
	GOTO	label16
label21
	CLRF CompTempVarRet669
	RETURN
; } remove_note function end

	ORG 0x000001AB
osc_stop_00000
; { osc_stop ; function begin
label22
	MOVF osc_stop_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_stop_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x0B
	ADDWF FSR0L, F
	MOVF INDF0, F
	BTFSS STATUS,Z
	GOTO	label22
	MOVF osc_stop_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_stop_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x0C
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVLW 0x00
	MOVWF CompTempVar601
	CLRF INDF0
	DECF FSR0L, F
	MOVF CompTempVar601, W
	MOVWF INDF0
	MOVF osc_stop_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x0E
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVLW 0xE8
	MOVWF CompTempVar602
	MOVLW 0x03
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar602, W
	MOVWF INDF0
	MOVF osc_stop_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x0B
	ADDWF FSR0L, F
	MOVLW 0x01
	MOVWF INDF0
	RETURN
; } osc_stop function end

	ORG 0x000001D4
osc_play_00000
; { osc_play ; function begin
	MOVF osc_play_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_play_00000_arg_posc, W
	MOVWF FSR0L
	INCF FSR0L, F
	MOVF osc_play_00000_arg_freq, W
	MOVWF CompTempVar600
	MOVF osc_play_00000_arg_freq+D'1', W
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar600, W
	MOVWF INDF0
	MOVF osc_play_00000_arg_posc, W
	MOVWF osc_apply_00000_arg_posc
	MOVF osc_play_00000_arg_posc+D'1', W
	MOVWF osc_apply_00000_arg_posc+D'1'
	CALL osc_apply_00000
	RETURN
; } osc_play function end

	ORG 0x000001E6
memset8_00000
; { memset8 ; function begin
	MOVF memset8_00000_arg_ptr, W
	MOVWF memset8_00000_1_uPtr
	MOVF memset8_00000_arg_ptr+D'1', W
	MOVWF memset8_00000_1_uPtr+D'1'
label23
	MOVF memset8_00000_arg_len, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label24
	MOVF memset8_00000_1_uPtr+D'1', W
	MOVWF FSR0H
	MOVF memset8_00000_1_uPtr, W
	MOVWF FSR0L
	INCF memset8_00000_1_uPtr, F
	BTFSC STATUS,Z
	INCF memset8_00000_1_uPtr+D'1', F
	MOVF memset8_00000_arg_ch, W
	MOVWF INDF0
	DECF memset8_00000_arg_len, F
	GOTO	label23
label24
	MOVF memset8_00000_arg_ptr, W
	MOVWF CompTempVarRet380
	MOVF memset8_00000_arg_ptr+D'1', W
	MOVWF CompTempVarRet380+D'1'
	RETURN
; } memset8 function end

	ORG 0x000001FE
get_freq_00000
; { get_freq ; function begin
	MOVLW 0x10
	MOVWF get_freq_00000_1_f+D'1'
	MOVLW 0x11
	MOVWF get_freq_00000_1_f+D'3'
	MOVLW 0x12
	MOVWF get_freq_00000_1_f+D'5'
	MOVLW 0x13
	MOVWF get_freq_00000_1_f+D'7'
	MOVLW 0x14
	MOVWF get_freq_00000_1_f+D'9'
	MOVLW 0x15
	MOVWF get_freq_00000_1_f+D'11'
	MOVLW 0x17
	MOVWF get_freq_00000_1_f+D'13'
	MOVLW 0x18
	MOVWF get_freq_00000_1_f+D'15'
	MOVLW 0x19
	MOVWF get_freq_00000_1_f+D'17'
	MOVLW 0x1B
	MOVWF get_freq_00000_1_f+D'19'
	MOVLW 0x1D
	MOVWF get_freq_00000_1_f+D'21'
	MOVLW 0x1E
	MOVWF get_freq_00000_1_f+D'23'
	MOVLW 0x20
	MOVWF get_freq_00000_1_f+D'12'
	MOVLW 0x23
	MOVWF get_freq_00000_1_f+D'20'
	MOVLW 0x53
	MOVWF get_freq_00000_1_f+D'2'
	MOVLW 0x5A
	MOVWF get_freq_00000_1_f
	MOVLW 0x5B
	MOVWF get_freq_00000_1_f+D'4'
	MOVLW 0x72
	MOVWF get_freq_00000_1_f+D'6'
	MOVLW 0x80
	MOVWF get_freq_00000_1_f+D'14'
	MOVWF get_freq_00000_1_f+D'18'
	MOVLW 0x9A
	MOVWF get_freq_00000_1_f+D'8'
	MOVLW 0xD4
	MOVWF get_freq_00000_1_f+D'10'
	MOVLW 0xDE
	MOVWF get_freq_00000_1_f+D'22'
	MOVLW 0xF5
	MOVWF get_freq_00000_1_f+D'16'
label25
	MOVF get_freq_00000_arg_note, W
	SUBLW 0x77
	BTFSC STATUS,C
	GOTO	label26
	MOVLW 0x0C
	SUBWF get_freq_00000_arg_note, F
	GOTO	label25
label26
	MOVLW	HIGH(get_freq_00000_1_f)

	MOVWF FSR0H
	MOVLW LOW(get_freq_00000_1_f+D'0')
	MOVWF FSR0L
	MOVF get_freq_00000_arg_note, W
	MOVWF __rem_8_8_00000_arg_a
	MOVLW 0x0C
	MOVWF __rem_8_8_00000_arg_b
	CALL __rem_8_8_00000
	MOVF CompTempVarRet156, W
	MOVWF CompTempVar678
	BCF STATUS,C
	RLF CompTempVar678, W
	ADDWF FSR0L, F
	MOVF get_freq_00000_arg_note, W
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0C
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
	MOVF CompTempVarRet153, W
	MOVWF CompTempVar683
	MOVF CompTempVar683, W
	SUBLW 0x09
	MOVWF CompTempVar680
	MOVF INDF0, W
	MOVWF CompTempVarRet675
	INCF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVarRet675+D'1'
	MOVF CompTempVar680, F
label27
	BTFSC STATUS,Z
	RETURN
	RLF INDF0, W
	RRF CompTempVarRet675+D'1', F
	RRF CompTempVarRet675, F
	DECF CompTempVar680, F
	GOTO	label27
; } get_freq function end

	ORG 0x00000259
add_note_00000
; { add_note ; function begin
	MOVF gbl_note_count, W
	SUBLW 0x00
	MOVF gbl_note_count+D'1', W
	BTFSC STATUS,C
	BTFSS STATUS,Z
	BTFSC gbl_note_count+D'1',7
	GOTO	label28
	MOVLW HIGH(gbl_note_held+D'0')
	MOVWF CompTempVar653
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF CompTempVar652
	MOVF add_note_00000_arg_note, W
	XORWF CompTempVar652, W
	BTFSC STATUS,Z
	MOVF CompTempVar653, W
	BTFSS STATUS,Z
	GOTO	label28
	CLRF CompTempVarRet649
	RETURN
label28
	CLRF add_note_00000_1_i
label29
	MOVF gbl_note_count, W
	SUBWF add_note_00000_1_i, W
	MOVF gbl_note_count+D'1', W
	BTFSC STATUS,C
	BTFSS STATUS,Z
	BTFSC gbl_note_count+D'1',7
	GOTO	label33
	MOVLW	HIGH(gbl_note_held)

	MOVWF FSR0H
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF FSR0L
	MOVF add_note_00000_1_i, W
	ADDWF FSR0L, F
	MOVF add_note_00000_arg_note, W
	XORWF INDF0, W
	BTFSS STATUS,Z
	GOTO	label32
label30
	MOVF add_note_00000_1_i, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label31
	MOVLW	HIGH(gbl_note_held)

	MOVWF FSR0H
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF FSR0L
	DECF add_note_00000_1_i, W
	MOVWF CompTempVar657
	MOVF CompTempVar657, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar658
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF FSR0L
	MOVF add_note_00000_1_i, W
	ADDWF FSR0L, F
	MOVF CompTempVar658, W
	MOVWF INDF0
	DECF add_note_00000_1_i, F
	GOTO	label30
label31
	MOVF add_note_00000_arg_note, W
	MOVWF gbl_note_held
	MOVLW 0x01
	MOVWF CompTempVarRet649
	RETURN
label32
	INCF add_note_00000_1_i, F
	GOTO	label29
label33
	MOVLW 0x08
	XORWF gbl_note_count, W
	BTFSC STATUS,Z
	MOVF gbl_note_count+D'1', W
	BTFSS STATUS,Z
	GOTO	label35
	MOVLW 0x07
	MOVWF add_note_00000_1_i
label34
	MOVF add_note_00000_1_i, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label38
	MOVLW	HIGH(gbl_note_held)

	MOVWF FSR0H
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF FSR0L
	DECF add_note_00000_1_i, W
	MOVWF CompTempVar662
	MOVF CompTempVar662, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar663
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF FSR0L
	MOVF add_note_00000_1_i, W
	ADDWF FSR0L, F
	MOVF CompTempVar663, W
	MOVWF INDF0
	DECF add_note_00000_1_i, F
	GOTO	label34
label35
	MOVF gbl_note_count, W
	MOVWF add_note_00000_1_i
label36
	MOVF add_note_00000_1_i, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label37
	MOVLW	HIGH(gbl_note_held)

	MOVWF FSR0H
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF FSR0L
	DECF add_note_00000_1_i, W
	MOVWF CompTempVar666
	MOVF CompTempVar666, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar667
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF FSR0L
	MOVF add_note_00000_1_i, W
	ADDWF FSR0L, F
	MOVF CompTempVar667, W
	MOVWF INDF0
	DECF add_note_00000_1_i, F
	GOTO	label36
label37
	INCF gbl_note_count, F
	BTFSC STATUS,Z
	INCF gbl_note_count+D'1', F
label38
	MOVF add_note_00000_arg_note, W
	MOVWF gbl_note_held
	MOVLW 0x01
	MOVWF CompTempVarRet649
	RETURN
; } add_note function end

	ORG 0x000002D9
__mul_8_8__00006
; { __mul_8_8__8 ; function begin
	CLRF __mul_8_8__00006_1_i
	CLRF CompTempVarRet381
label39
	BTFSC __mul_8_8__00006_1_i,3
	RETURN
	BTFSS __mul_8_8__00006_arg_b,0
	GOTO	label40
	MOVF __mul_8_8__00006_arg_a, W
	ADDWF CompTempVarRet381, F
label40
	RRF __mul_8_8__00006_arg_b, F
	BCF gbl_status,0
	RLF __mul_8_8__00006_arg_a, F
	INCF __mul_8_8__00006_1_i, F
	GOTO	label39
; } __mul_8_8__8 function end

	ORG 0x000002E6
__mul_16s__0000F
; { __mul_16s_16s__16 ; function begin
	CLRF __mul_16s__0000F_1_i
	CLRF CompTempVarRet391
	CLRF CompTempVarRet391+D'1'
	MOVF __mul_16s__0000F_arg_a, W
	MOVWF __mul_16s__0000F_1_t
	MOVF __mul_16s__0000F_arg_a+D'1', W
	MOVWF __mul_16s__0000F_1_t+D'1'
	BTFSS __mul_16s__0000F_arg_b+D'1',7
	GOTO	label41
	BSF __mul_16s__0000F_1_i,7
	COMF __mul_16s__0000F_arg_b, F
	COMF __mul_16s__0000F_arg_b+D'1', F
	INCF __mul_16s__0000F_arg_b, F
	BTFSC gbl_status,2
	INCF __mul_16s__0000F_arg_b+D'1', F
label41
	BTFSC __mul_16s__0000F_1_i,4
	GOTO	label43
	BTFSS __mul_16s__0000F_arg_b,0
	GOTO	label42
	MOVF __mul_16s__0000F_1_t, W
	ADDWF CompTempVarRet391, F
	MOVF __mul_16s__0000F_1_t+D'1', W
	BTFSC gbl_status,0
	INCFSZ __mul_16s__0000F_1_t+D'1', W
	ADDWF CompTempVarRet391+D'1', F
label42
	BCF gbl_status,0
	RRF __mul_16s__0000F_arg_b+D'1', F
	RRF __mul_16s__0000F_arg_b, F
	BCF gbl_status,0
	RLF __mul_16s__0000F_1_t, F
	RLF __mul_16s__0000F_1_t+D'1', F
	INCF __mul_16s__0000F_1_i, F
	GOTO	label41
label43
	BTFSS __mul_16s__0000F_1_i,7
	RETURN
	COMF CompTempVarRet391, F
	COMF CompTempVarRet391+D'1', F
	INCF CompTempVarRet391, F
	BTFSC gbl_status,2
	INCF CompTempVarRet391+D'1', F
	RETURN
; } __mul_16s_16s__16 function end

	ORG 0x0000030F
uart_init_00000
; { uart_init ; function begin
	MOVLB 0x00
	BCF gbl_pir1,1
	BCF gbl_pir1,5
	MOVLB 0x01
	BCF gbl_pie1,1
	BSF gbl_pie1,5
	MOVLB 0x03
	BCF gbl_baudcon,4
	BSF gbl_baudcon,3
	BCF gbl_baudcon,1
	BCF gbl_baudcon,0
	BCF gbl_txsta,6
	BCF gbl_txsta,5
	BCF gbl_txsta,4
	BCF gbl_txsta,3
	BCF gbl_txsta,2
	BCF gbl_txsta,0
	BSF gbl_rcsta,7
	BCF gbl_rcsta,6
	BSF gbl_rcsta,5
	BSF gbl_rcsta,4
	CLRF gbl_spbrgh
	MOVLW 0x1F
	MOVWF gbl_spbrg
	RETURN
; } uart_init function end

	ORG 0x00000328
osc_init_00000
; { osc_init ; function begin
	MOVF osc_init_00000_arg_posc, W
	MOVWF memset8_00000_arg_ptr
	MOVF osc_init_00000_arg_posc+D'1', W
	MOVWF memset8_00000_arg_ptr+D'1'
	CLRF memset8_00000_arg_ch
	MOVLW 0x10
	MOVWF memset8_00000_arg_len
	CALL memset8_00000
	MOVF osc_init_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_init_00000_arg_posc, W
	MOVWF FSR0L
	INCF FSR0L, F
	MOVLW 0xB8
	MOVWF CompTempVar603
	MOVLW 0x01
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar603, W
	MOVWF INDF0
	MOVLW 0x02
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVLW 0x80
	MOVWF CompTempVar604
	CLRF INDF0
	DECF FSR0L, F
	MOVF CompTempVar604, W
	MOVWF INDF0
	MOVF osc_init_00000_arg_posc, W
	MOVWF osc_stop_00000_arg_posc
	MOVF osc_init_00000_arg_posc+D'1', W
	MOVWF osc_stop_00000_arg_posc+D'1'
	CALL osc_stop_00000
	RETURN
; } osc_init function end

	ORG 0x0000034B
osc_duty_00000
; { osc_duty ; function begin
	MOVF osc_duty_00000_arg_posc+D'1', W
	MOVWF FSR0H
	MOVF osc_duty_00000_arg_posc, W
	MOVWF FSR0L
	MOVLW 0x02
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVF osc_duty_00000_arg_duty, W
	MOVWF CompTempVar599
	MOVF osc_duty_00000_arg_duty+D'1', W
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar599, W
	MOVWF INDF0
	MOVF osc_duty_00000_arg_posc, W
	MOVWF osc_apply_00000_arg_posc
	MOVF osc_duty_00000_arg_posc+D'1', W
	MOVWF osc_apply_00000_arg_posc+D'1'
	CALL osc_apply_00000
	RETURN
; } osc_duty function end

	ORG 0x0000035F
note_msg_00000
; { note_msg ; function begin
	CLRF note_msg_00000_1_i
	MOVLW 0xFF
	MOVWF note_msg_00000_1_new_note
	MOVF note_msg_00000_arg_vel, F
	BTFSC STATUS,Z
	GOTO	label44
	MOVF note_msg_00000_arg_note, W
	MOVWF add_note_00000_arg_note
	CALL add_note_00000
	GOTO	label45
label44
	MOVF note_msg_00000_arg_note, W
	MOVWF remove_not_00013_arg_note
	CALL remove_not_00013
label45
	CLRF note_msg_00000_1_i
label46
	MOVF gbl_note_count, W
	SUBWF note_msg_00000_1_i, W
	MOVF gbl_note_count+D'1', W
	BTFSC STATUS,C
	BTFSS STATUS,Z
	BTFSC gbl_note_count+D'1',7
	GOTO	label49
	INCF note_msg_00000_1_new_note, W
	BTFSC STATUS,Z
	GOTO	label47
	MOVLW	HIGH(gbl_note_held)

	MOVWF FSR0H
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF FSR0L
	MOVF note_msg_00000_1_i, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	SUBWF note_msg_00000_1_new_note, W
	BTFSC STATUS,C
	GOTO	label48
label47
	MOVLW	HIGH(gbl_note_held)

	MOVWF FSR0H
	MOVLW LOW(gbl_note_held+D'0')
	MOVWF FSR0L
	MOVF note_msg_00000_1_i, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF note_msg_00000_1_new_note
label48
	INCF note_msg_00000_1_i, F
	GOTO	label46
label49
	INCF note_msg_00000_1_new_note, W
	BTFSC STATUS,Z
	GOTO	label50
	MOVLW HIGH(gbl_osc1+D'0')
	MOVWF osc_play_00000_arg_posc+D'1'
	MOVLW LOW(gbl_osc1+D'0')
	MOVWF osc_play_00000_arg_posc
	MOVF note_msg_00000_1_new_note, W
	MOVWF get_freq_00000_arg_note
	CALL get_freq_00000
	MOVF CompTempVarRet675, W
	MOVWF osc_play_00000_arg_freq
	MOVF CompTempVarRet675+D'1', W
	MOVWF osc_play_00000_arg_freq+D'1'
	CALL osc_play_00000
	RETURN
label50
	MOVLW HIGH(gbl_osc1+D'0')
	MOVWF osc_stop_00000_arg_posc+D'1'
	MOVLW LOW(gbl_osc1+D'0')
	MOVWF osc_stop_00000_arg_posc
	CALL osc_stop_00000
	RETURN
; } note_msg function end

	ORG 0x000003A1
midi_in_00000
; { midi_in ; function begin
label51
	MOVLB 0x03
	BTFSS gbl_rcsta,1
	GOTO	label52
	BCF gbl_rcsta,4
	BSF gbl_rcsta,4
label52
	MOVLB 0x01
	MOVF gbl_rx_tail, W
	XORWF gbl_rx_head, W
	BTFSS STATUS,Z
	GOTO	label53
	CLRF CompTempVarRet637
	RETURN
label53
	MOVLW	HIGH(gbl_rx_buffer)

	MOVWF FSR0H
	MOVLW LOW(gbl_rx_buffer+D'0')
	MOVWF FSR0L
	MOVF gbl_rx_tail, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF midi_in_00000_3_ch
	INCF gbl_rx_tail, F
	MOVLW 0x3F
	ANDWF gbl_rx_tail, F
	MOVLW 0xF0
	ANDWF midi_in_00000_3_ch, W
	MOVWF CompTempVar639
	MOVF CompTempVar639, W
	XORLW 0xF0
	BTFSS STATUS,Z
	GOTO	label57
	MOVF midi_in_00000_3_ch, W
	XORLW 0xF8
	BTFSC STATUS,Z
	GOTO	label54
	XORLW 0x02
	BTFSC STATUS,Z
	GOTO	label54
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label54
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label54
	XORLW 0x0D
	BTFSC STATUS,Z
	GOTO	label55
	XORLW 0x02
	BTFSC STATUS,Z
	GOTO	label55
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label55
	GOTO	label51
label54
	MOVF midi_in_00000_3_ch, W
	MOVWF CompTempVarRet637
	RETURN
label55
	CLRF gbl_midi_param
	MOVF midi_in_00000_3_ch, W
	MOVWF gbl_midi_status
	MOVF midi_in_00000_3_ch, W
	XORLW 0xF2
	BTFSS STATUS,Z
	GOTO	label56
	MOVLW 0x02
	MOVWF gbl_midi_num_params
	GOTO	label51
label56
	MOVLW 0x01
	MOVWF gbl_midi_num_params
	GOTO	label51
label57
	MOVLW 0x80
	ANDWF midi_in_00000_3_ch, W
	MOVWF CompTempVar642
	CLRF CompTempVar643
	MOVF CompTempVar642, F
	BTFSC STATUS,Z
	INCF CompTempVar643, F
	MOVF CompTempVar643, F
	BTFSS STATUS,Z
	GOTO	label60
	CLRF gbl_midi_param
	MOVF midi_in_00000_3_ch, W
	MOVWF gbl_midi_status
	MOVLW 0xF0
	ANDWF midi_in_00000_3_ch, W
	MOVWF CompTempVar645
	MOVF CompTempVar645, W
	XORLW 0xC0
	BTFSC STATUS,Z
	GOTO	label58
	XORLW 0x10
	BTFSC STATUS,Z
	GOTO	label58
	XORLW 0x70
	BTFSC STATUS,Z
	GOTO	label59
	XORLW 0x20
	BTFSC STATUS,Z
	GOTO	label59
	XORLW 0x10
	BTFSC STATUS,Z
	GOTO	label59
	XORLW 0x20
	BTFSC STATUS,Z
	GOTO	label59
	XORLW 0x50
	BTFSC STATUS,Z
	GOTO	label59
	GOTO	label59
label58
	MOVLW 0x01
	MOVWF gbl_midi_num_params
	GOTO	label51
label59
	MOVLW 0x02
	MOVWF gbl_midi_num_params
	GOTO	label51
label60
	MOVF gbl_midi_status, F
	BTFSC STATUS,Z
	GOTO	label51
	MOVLW	HIGH(gbl_midi_params)

	MOVWF FSR0H
	MOVLW LOW(gbl_midi_params+D'0')
	MOVWF FSR0L
	MOVF gbl_midi_param, W
	INCF gbl_midi_param, F
	ADDWF FSR0L, F
	MOVF midi_in_00000_3_ch, W
	MOVWF INDF0
	MOVF gbl_midi_num_params, W
	SUBWF gbl_midi_param, W
	BTFSS STATUS,C
	GOTO	label51
	CLRF gbl_midi_param
	MOVLW 0xF0
	ANDWF gbl_midi_status, W
	MOVWF CompTempVar648
	MOVF CompTempVar648, W
	XORLW 0x80
	BTFSC STATUS,Z
	GOTO	label61
	XORLW 0x10
	BTFSC STATUS,Z
	GOTO	label61
	XORLW 0x70
	BTFSC STATUS,Z
	GOTO	label61
	XORLW 0x50
	BTFSC STATUS,Z
	GOTO	label61
	XORLW 0x60
	BTFSS STATUS,Z
	GOTO	label51
label61
	MOVF gbl_midi_status, W
	MOVWF CompTempVarRet637
	RETURN
; } midi_in function end

	ORG 0x0000043A
adc_run_00000
; { adc_run ; function begin
	MOVLB 0x01
	MOVF gbl_adc_delay, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label62
	DECFSZ gbl_adc_delay, F
	RETURN
	BSF gbl_adcon0,1
	RETURN
label62
	BTFSC gbl_adcon0,1
	RETURN
	INCF gbl_adc_current, W
	BTFSS STATUS,Z
	GOTO	label63
	CLRF gbl_adc_current
	GOTO	label65
label63
	CLRF CompTempVar618
	MOVF gbl_adresh, W
	MOVWF CompTempVar619
	MOVF gbl_adresl, W
	IORWF CompTempVar618, F
	MOVF CompTempVar618, W
	SUBLW 0xFF
	MOVWF CompTempVar622
	MOVF CompTempVar619, W
	BTFSS STATUS,C
	INCF CompTempVar619, W
	SUBLW 0x03
	MOVWF CompTempVar622+D'1'
	CLRF CompTempVar622+D'2'
	CLRF CompTempVar622+D'3'
	MOVLW	HIGH(gbl_adc_chan)

	MOVWF FSR0H
	MOVLW LOW(gbl_adc_chan+D'0')
	MOVWF FSR0L
	MOVF gbl_adc_current, W
	MOVWF __mul_8_8__00006_arg_a
	MOVLW 0x06
	MOVWF __mul_8_8__00006_arg_b
	CALL __mul_8_8__00006
	MOVF CompTempVarRet381, W
	ADDWF FSR0L, F
	MOVLW 0x02
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF __mul_32s__00011_arg_b
	INCF FSR0L, F
	MOVF INDF0, W
	MOVWF __mul_32s__00011_arg_b+D'1'
	CLRF __mul_32s__00011_arg_b+D'2'
	CLRF __mul_32s__00011_arg_b+D'3'
	DECF FSR0L, F
	MOVLW 0x0F
	MOVWF __mul_32s__00011_arg_a
	CLRF __mul_32s__00011_arg_a+D'1'
	CLRF __mul_32s__00011_arg_a+D'2'
	CLRF __mul_32s__00011_arg_a+D'3'
	CALL __mul_32s__00011
	MOVF CompTempVarRet395, W
	MOVWF CompTempVar615
	MOVF CompTempVarRet395+D'1', W
	MOVWF CompTempVar615+D'1'
	MOVF CompTempVarRet395+D'2', W
	MOVWF CompTempVar614
	MOVF CompTempVarRet395+D'3', W
	MOVWF CompTempVar613
	MOVF CompTempVar622, W
	ADDWF CompTempVar615, F
	MOVF CompTempVar622+D'1', W
	ADDWFC CompTempVar615+D'1', F
	MOVF CompTempVar622+D'2', W
	ADDWFC CompTempVar614, F
	MOVF CompTempVar622+D'3', W
	ADDWFC CompTempVar613, F
	RRF CompTempVar614, F
	RRF CompTempVar615+D'1', F
	RRF CompTempVar615, F
	RRF CompTempVar614, F
	RRF CompTempVar615+D'1', F
	RRF CompTempVar615, F
	RRF CompTempVar614, F
	RRF CompTempVar615+D'1', F
	RRF CompTempVar615, F
	RRF CompTempVar614, F
	RRF CompTempVar615+D'1', F
	RRF CompTempVar615, F
	MOVLW	HIGH(gbl_adc_chan)

	MOVWF FSR0H
	MOVLW LOW(gbl_adc_chan+D'0')
	MOVWF FSR0L
	MOVF gbl_adc_current, W
	MOVWF __mul_8_8__00006_arg_a
	MOVLW 0x06
	MOVWF __mul_8_8__00006_arg_b
	CALL __mul_8_8__00006
	MOVF CompTempVarRet381, W
	ADDWF FSR0L, F
	MOVLW 0x02
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVF CompTempVar615, W
	MOVWF CompTempVar630
	MOVF CompTempVar615+D'1', W
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar630, W
	MOVWF INDF0
	MOVLW	HIGH(gbl_adc_chan)

	MOVWF FSR0H
	MOVLW LOW(gbl_adc_chan+D'0')
	MOVWF FSR0L
	MOVF gbl_adc_current, W
	MOVWF __mul_8_8__00006_arg_a
	MOVLW 0x06
	MOVWF __mul_8_8__00006_arg_b
	CALL __mul_8_8__00006
	MOVF CompTempVarRet381, W
	ADDWF FSR0L, F
	MOVLW 0x04
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar605
	INCF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar605+D'1'
	MOVLW	HIGH(gbl_adc_chan)

	MOVWF FSR0H
	MOVLW LOW(gbl_adc_chan+D'0')
	MOVWF FSR0L
	MOVF gbl_adc_current, W
	MOVWF __mul_8_8__00006_arg_a
	MOVLW 0x06
	MOVWF __mul_8_8__00006_arg_b
	CALL __mul_8_8__00006
	MOVF CompTempVarRet381, W
	ADDWF FSR0L, F
	MOVLW 0x02
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF adc_run_00000_8_d
	INCF FSR0L, F
	MOVF CompTempVar605, W
	SUBWF adc_run_00000_8_d, F
	MOVF CompTempVar605+D'1', W
	SUBWFB INDF0, W
	MOVWF adc_run_00000_8_d+D'1'
	MOVF adc_run_00000_8_d, W
	MOVWF __mul_16s__0000F_arg_a
	MOVF adc_run_00000_8_d+D'1', W
	MOVWF __mul_16s__0000F_arg_a+D'1'
	MOVF adc_run_00000_8_d, W
	MOVWF __mul_16s__0000F_arg_b
	MOVF adc_run_00000_8_d+D'1', W
	MOVWF __mul_16s__0000F_arg_b+D'1'
	CALL __mul_16s__0000F
	MOVF CompTempVarRet391, W
	MOVWF CompTempVar608
	MOVF CompTempVarRet391+D'1', W
	MOVWF CompTempVar609
	MOVF CompTempVar608, W
	SUBLW 0x01
	MOVF CompTempVar609, W
	BTFSC STATUS,C
	BTFSS STATUS,Z
	BTFSC CompTempVar609,7
	GOTO	label64
	MOVLW	HIGH(gbl_adc_chan)

	MOVWF FSR0H
	MOVLW LOW(gbl_adc_chan+D'0')
	MOVWF FSR0L
	MOVF gbl_adc_current, W
	MOVWF __mul_8_8__00006_arg_a
	MOVLW 0x06
	MOVWF __mul_8_8__00006_arg_b
	CALL __mul_8_8__00006
	MOVF CompTempVarRet381, W
	MOVWF CompTempVar633
	MOVF CompTempVar633, W
	ADDWF FSR0L, F
	MOVLW 0x02
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar634
	INCF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar634+D'1'
	MOVLW	HIGH(gbl_adc_chan)

	MOVWF FSR0H
	MOVLW LOW(gbl_adc_chan+D'0')
	MOVWF FSR0L
	MOVF gbl_adc_current, W
	MOVWF __mul_8_8__00006_arg_a
	MOVLW 0x06
	MOVWF __mul_8_8__00006_arg_b
	CALL __mul_8_8__00006
	MOVF CompTempVarRet381, W
	ADDWF FSR0L, F
	MOVLW 0x04
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVF CompTempVar634, W
	MOVWF CompTempVar636
	MOVF CompTempVar634+D'1', W
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar636, W
	MOVWF INDF0
	MOVLW	HIGH(gbl_adc_chan)

	MOVWF FSR0H
	MOVLW LOW(gbl_adc_chan+D'0')
	MOVWF FSR0L
	MOVF gbl_adc_current, W
	MOVWF __mul_8_8__00006_arg_a
	MOVLW 0x06
	MOVWF __mul_8_8__00006_arg_b
	CALL __mul_8_8__00006
	MOVF CompTempVarRet381, W
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVLW 0x01
	MOVWF INDF0
	MOVLB 0x02
	BSF gbl_lata,5
label64
	MOVLB 0x01
	INCF gbl_adc_current, F
	MOVLW 0x04
	SUBWF gbl_adc_current, W
	BTFSC STATUS,C
	CLRF gbl_adc_current
label65
	MOVLW	HIGH(gbl_adc_chan)

	MOVWF FSR0H
	MOVLW LOW(gbl_adc_chan+D'0')
	MOVWF FSR0L
	MOVF gbl_adc_current, W
	MOVWF __mul_8_8__00006_arg_a
	MOVLW 0x06
	MOVWF __mul_8_8__00006_arg_b
	CALL __mul_8_8__00006
	MOVF CompTempVarRet381, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF gbl_adcon0
	MOVLW 0x0A
	MOVWF gbl_adc_delay
	RETURN
; } adc_run function end

	ORG 0x0000052F
main
; { main ; function begin
	MOVLW 0x7A
	MOVLB 0x01
	MOVWF gbl_osccon
	MOVLW 0xDF
	MOVWF gbl_trisa
	MOVLW 0xF5
	MOVWF gbl_trisc
	MOVLW 0x14
	MOVLB 0x03
	MOVWF gbl_ansela
	MOVLW 0x05
	MOVWF gbl_anselc
	MOVLB 0x00
	CLRF gbl_porta
	CLRF gbl_portc
	CALL uart_init_00000
	BSF gbl_intcon,7
	BSF gbl_intcon,6
	MOVLW HIGH(gbl_osc1+D'0')
	MOVLB 0x01
	MOVWF osc_init_00000_arg_posc+D'1'
	MOVLW LOW(gbl_osc1+D'0')
	MOVWF osc_init_00000_arg_posc
	CALL osc_init_00000
	MOVLW 0x0A
	MOVLB 0x05
	MOVWF gbl_ccp1con
	CLRF gbl_ccpr1h
	CLRF gbl_ccpr1l
	MOVLB 0x01
	BSF gbl_pie1,2
	MOVLB 0x00
	CLRF gbl_tmr1h
	CLRF gbl_tmr1l
	MOVLW 0x21
	MOVWF gbl_t1con
	MOVLW 0xD0
	MOVLB 0x01
	MOVWF gbl_adcon1
	MOVLW 0x01
	MOVWF gbl_adcon0
	CLRF main_1_new_mode
	CLRF main_1_mode
label66
	MOVLB 0x02
	BCF gbl_lata,5
	CALL adc_run_00000
	MOVLB 0x00
	MOVF gbl_adc_chan+D'7', F
	BTFSC STATUS,Z
	GOTO	label78
	CLRF gbl_adc_chan+D'7'
	MOVLW 0x64
	SUBWF gbl_adc_chan+D'10', W
	MOVF gbl_adc_chan+D'11', W
	BTFSC STATUS,C
	GOTO	label67
	BTFSS STATUS,Z
	GOTO	label67
	MOVLB 0x01
	CLRF main_1_new_mode
	GOTO	label72
label67
	MOVLW 0x01
	SUBWF gbl_adc_chan+D'11', W
	BTFSS STATUS,Z
	GOTO	label68
	MOVLW 0x2C
	SUBWF gbl_adc_chan+D'10', W
label68
	BTFSC STATUS,C
	GOTO	label69
	MOVLW 0x01
	MOVLB 0x01
	MOVWF main_1_new_mode
	GOTO	label72
label69
	MOVLW 0x01
	SUBWF gbl_adc_chan+D'11', W
	BTFSS STATUS,Z
	GOTO	label70
	MOVLW 0xF4
	SUBWF gbl_adc_chan+D'10', W
label70
	BTFSC STATUS,C
	GOTO	label71
	MOVLW 0x02
	MOVLB 0x01
	MOVWF main_1_new_mode
	GOTO	label72
label71
	MOVLW 0x03
	MOVLB 0x01
	MOVWF main_1_new_mode
label72
	MOVF main_1_mode, W
	XORWF main_1_new_mode, W
	BTFSC STATUS,Z
	GOTO	label78
	MOVF main_1_new_mode, W
	XORLW 0x00
	BTFSC STATUS,Z
	GOTO	label73
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label74
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label75
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label76
	GOTO	label77
label73
	MOVLW HIGH(gbl_osc1+D'0')
	MOVWF osc_stop_00000_arg_posc+D'1'
	MOVLW LOW(gbl_osc1+D'0')
	MOVWF osc_stop_00000_arg_posc
	CALL osc_stop_00000
	GOTO	label77
label74
	MOVLW HIGH(gbl_osc1+D'0')
	MOVWF osc_stop_00000_arg_posc+D'1'
	MOVLW LOW(gbl_osc1+D'0')
	MOVWF osc_stop_00000_arg_posc
	CALL osc_stop_00000
	CLRF gbl_rx_head
	CLRF gbl_rx_tail
	GOTO	label77
label75
	MOVLW HIGH(gbl_osc1+D'0')
	MOVWF osc_play_00000_arg_posc+D'1'
	MOVLW LOW(gbl_osc1+D'0')
	MOVWF osc_play_00000_arg_posc
	MOVLB 0x00
	MOVF gbl_adc_chan+D'10', W
	MOVLB 0x01
	MOVWF osc_play_00000_arg_freq
	MOVLB 0x00
	MOVF gbl_adc_chan+D'11', W
	MOVLB 0x01
	MOVWF osc_play_00000_arg_freq+D'1'
	CALL osc_play_00000
	GOTO	label77
label76
	MOVLW HIGH(gbl_osc1+D'0')
	MOVWF osc_play_00000_arg_posc+D'1'
	MOVLW LOW(gbl_osc1+D'0')
	MOVWF osc_play_00000_arg_posc
	MOVLB 0x00
	SWAPF gbl_adc_chan+D'10', W
	MOVLB 0x01
	MOVWF osc_play_00000_arg_freq
	MOVLW 0x0F
	ANDWF osc_play_00000_arg_freq, F
	MOVLB 0x00
	SWAPF gbl_adc_chan+D'11', W
	MOVLB 0x01
	MOVWF osc_play_00000_arg_freq+D'1'
	ANDLW 0xF0
	IORWF osc_play_00000_arg_freq, F
	MOVLW 0x0F
	ANDWF osc_play_00000_arg_freq+D'1', F
	CALL osc_play_00000
label77
	MOVF main_1_new_mode, W
	MOVWF main_1_mode
label78
	MOVLB 0x01
	MOVF main_1_mode, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label79
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label82
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label83
	GOTO	label84
label79
	CALL midi_in_00000
	MOVF CompTempVarRet637, W
	MOVWF main_58_msg
	MOVLW 0xF0
	ANDWF main_58_msg, W
	MOVWF CompTempVar710
	MOVF CompTempVar710, W
	XORLW 0x80
	BTFSC STATUS,Z
	GOTO	label80
	XORLW 0x10
	BTFSC STATUS,Z
	GOTO	label80
	GOTO	label81
label80
	MOVF gbl_midi_params, W
	MOVWF note_msg_00000_arg_note
	MOVF gbl_midi_params+D'1', W
	MOVWF note_msg_00000_arg_vel
	CALL note_msg_00000
	MOVLB 0x02
	BSF gbl_lata,5
	GOTO	label84
label81
	MOVLB 0x02
	BCF gbl_lata,5
	GOTO	label84
label82
	MOVF gbl_adc_chan+D'19', F
	BTFSC STATUS,Z
	GOTO	label84
	CLRF gbl_adc_chan+D'19'
	MOVLW HIGH(gbl_osc1+D'0')
	MOVWF osc_play_00000_arg_posc+D'1'
	MOVLW LOW(gbl_osc1+D'0')
	MOVWF osc_play_00000_arg_posc
	MOVF gbl_adc_chan+D'22', W
	MOVWF osc_play_00000_arg_freq
	MOVF gbl_adc_chan+D'23', W
	MOVWF osc_play_00000_arg_freq+D'1'
	CALL osc_play_00000
	GOTO	label84
label83
	MOVF gbl_adc_chan+D'19', F
	BTFSC STATUS,Z
	GOTO	label84
	CLRF gbl_adc_chan+D'19'
	MOVLW HIGH(gbl_osc1+D'0')
	MOVWF osc_play_00000_arg_posc+D'1'
	MOVLW LOW(gbl_osc1+D'0')
	MOVWF osc_play_00000_arg_posc
	SWAPF gbl_adc_chan+D'22', W
	MOVWF osc_play_00000_arg_freq
	MOVLW 0x0F
	ANDWF osc_play_00000_arg_freq, F
	SWAPF gbl_adc_chan+D'23', W
	MOVWF osc_play_00000_arg_freq+D'1'
	ANDLW 0xF0
	IORWF osc_play_00000_arg_freq, F
	MOVLW 0x0F
	ANDWF osc_play_00000_arg_freq+D'1', F
	CALL osc_play_00000
label84
	MOVLB 0x00
	MOVF gbl_adc_chan+D'1', F
	BTFSC STATUS,Z
	GOTO	label66
	CLRF gbl_adc_chan+D'1'
	MOVLW 0x02
	SUBWF gbl_adc_chan+D'4', W
	MOVF gbl_adc_chan+D'5', W
	BTFSC STATUS,C
	GOTO	label85
	BTFSS STATUS,Z
	GOTO	label85
	MOVLW HIGH(gbl_osc1+D'0')
	MOVLB 0x01
	MOVWF osc_stop_00000_arg_posc+D'1'
	MOVLW LOW(gbl_osc1+D'0')
	MOVWF osc_stop_00000_arg_posc
	CALL osc_stop_00000
	GOTO	label66
label85
	MOVF gbl_adc_chan+D'5', W
	SUBLW 0x03
	BTFSS STATUS,Z
	GOTO	label86
	MOVF gbl_adc_chan+D'4', W
	SUBLW 0xFC
label86
	BTFSC STATUS,C
	GOTO	label87
	MOVLW HIGH(gbl_osc1+D'0')
	MOVLB 0x01
	MOVWF osc_duty_00000_arg_posc+D'1'
	MOVLW LOW(gbl_osc1+D'0')
	MOVWF osc_duty_00000_arg_posc
	MOVLW 0xFF
	MOVWF osc_duty_00000_arg_duty
	CLRF osc_duty_00000_arg_duty+D'1'
	CALL osc_duty_00000
	GOTO	label66
label87
	MOVLW HIGH(gbl_osc1+D'0')
	MOVLB 0x01
	MOVWF osc_duty_00000_arg_posc+D'1'
	MOVLW LOW(gbl_osc1+D'0')
	MOVWF osc_duty_00000_arg_posc
	MOVLB 0x00
	MOVF gbl_adc_chan+D'4', W
	MOVLB 0x01
	MOVWF osc_duty_00000_arg_duty
	MOVLB 0x00
	RRF gbl_adc_chan+D'5', W
	MOVLB 0x01
	MOVWF osc_duty_00000_arg_duty+D'1'
	RRF osc_duty_00000_arg_duty, F
	RRF osc_duty_00000_arg_duty+D'1', F
	RRF osc_duty_00000_arg_duty, F
	MOVLW 0x3F
	ANDWF osc_duty_00000_arg_duty+D'1', F
	CALL osc_duty_00000
	GOTO	label66
; } main function end

	ORG 0x00000649
_startup
	MOVLB 0x01
	CLRF gbl_rx_head
	CLRF gbl_rx_tail
	CLRF gbl_midi_status
	CLRF gbl_midi_num_params
	CLRF gbl_midi_param
	MOVLW 0x09
	MOVLB 0x00
	MOVWF gbl_adc_chan
	MOVLW 0x0D
	MOVWF gbl_adc_chan+D'6'
	MOVLW 0x11
	MOVWF gbl_adc_chan+D'12'
	MOVLW 0x19
	MOVWF gbl_adc_chan+D'18'
	MOVLW 0xFF
	MOVLB 0x01
	MOVWF gbl_adc_current
	CLRF gbl_adc_delay
	CLRF gbl_note_count
	CLRF gbl_note_count+D'1'
	MOVLP 0x00
	GOTO	main
	ORG 0x00000660
interrupt
; { interrupt ; function begin
	MOVLB 0x00
	BTFSS gbl_pir1,2
	GOTO	label96
	MOVLB 0x01
	MOVF gbl_osc1+D'4', F
	BTFSS STATUS,Z
	GOTO	label91
	MOVF gbl_osc1+D'7', F
	BTFSS STATUS,Z
	GOTO	label89
	MOVF gbl_osc1+D'8', F
	BTFSC STATUS,Z
	GOTO	label90
label89
	MOVLB 0x02
	BSF gbl_latc,3
	MOVLB 0x01
	MOVF gbl_osc1+D'7', W
	ADDWF gbl_osc1+D'5', F
	MOVF gbl_osc1+D'8', W
	ADDWFC gbl_osc1+D'6', F
	MOVLW 0x01
	MOVWF gbl_osc1+D'4'
	GOTO	label94
label90
	MOVLB 0x02
	BCF gbl_latc,3
	MOVLB 0x01
	MOVF gbl_osc1+D'9', W
	ADDWF gbl_osc1+D'5', F
	MOVF gbl_osc1+D'10', W
	ADDWFC gbl_osc1+D'6', F
	GOTO	label94
label91
	MOVF gbl_osc1+D'9', F
	BTFSS STATUS,Z
	GOTO	label92
	MOVF gbl_osc1+D'10', F
	BTFSC STATUS,Z
	GOTO	label93
label92
	MOVLB 0x02
	BCF gbl_latc,3
	MOVLB 0x01
	MOVF gbl_osc1+D'9', W
	ADDWF gbl_osc1+D'5', F
	MOVF gbl_osc1+D'10', W
	ADDWFC gbl_osc1+D'6', F
	CLRF gbl_osc1+D'4'
	GOTO	label94
label93
	MOVLB 0x02
	BSF gbl_latc,3
	MOVLB 0x01
	MOVF gbl_osc1+D'7', W
	ADDWF gbl_osc1+D'5', F
	MOVF gbl_osc1+D'8', W
	ADDWFC gbl_osc1+D'6', F
label94
	MOVF gbl_osc1+D'6', W
	MOVLB 0x05
	MOVWF gbl_ccpr1h
	MOVLB 0x01
	MOVF gbl_osc1+D'5', W
	MOVLB 0x05
	MOVWF gbl_ccpr1l
	MOVLB 0x01
	MOVF gbl_osc1+D'11', F
	BTFSC STATUS,Z
	GOTO	label95
	MOVF gbl_osc1+D'12', W
	MOVWF gbl_osc1+D'7'
	MOVF gbl_osc1+D'13', W
	MOVWF gbl_osc1+D'8'
	MOVF gbl_osc1+D'14', W
	MOVWF gbl_osc1+D'9'
	MOVF gbl_osc1+D'15', W
	MOVWF gbl_osc1+D'10'
	CLRF gbl_osc1+D'11'
label95
	MOVLB 0x00
	BCF gbl_pir1,2
label96
	BTFSS gbl_pir1,5
	RETFIE
	MOVLB 0x03
	MOVF gbl_rcreg, W
	MOVLB 0x01
	MOVWF interrupt_26_b
	INCF gbl_rx_head, W
	MOVWF interrupt_26_next_head
	MOVLW 0x3F
	ANDWF interrupt_26_next_head, F
	MOVF gbl_rx_tail, W
	XORWF interrupt_26_next_head, W
	BTFSC STATUS,Z
	GOTO	label97
	MOVLW	HIGH(gbl_rx_buffer)

	MOVWF FSR0H
	MOVLW LOW(gbl_rx_buffer+D'0')
	MOVWF FSR0L
	MOVF gbl_rx_head, W
	ADDWF FSR0L, F
	MOVF interrupt_26_b, W
	MOVWF INDF0
	MOVF interrupt_26_next_head, W
	MOVWF gbl_rx_head
label97
	MOVLB 0x00
	BCF gbl_pir1,5
	RETFIE
; } interrupt function end

	ORG 0x00008007
	DW 0xFFA4
	DW 0xDEFF
	END
