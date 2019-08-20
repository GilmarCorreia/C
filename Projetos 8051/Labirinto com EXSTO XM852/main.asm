;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
; This file was generated Tue Aug 20 11:45:57 2019
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setFinish
	.globl _setLevel5
	.globl _setLevel4
	.globl _setLevel3
	.globl _setLevel2
	.globl _setLevel1
	.globl _setInstructions
	.globl _setInitialScreen
	.globl _configs
	.globl _interruptConfig
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _beep2_noteTime
	.globl _beep2_melody
	.globl _beep1_noteTime
	.globl _beep1_melody
	.globl _adobe_noteTime
	.globl _adobe_melody
	.globl _underworld_noteTime
	.globl _underworld_melody
	.globl _mainMario_noteTime
	.globl _mainMario_melody
	.globl _player
	.globl _dacWrite
	.globl _Timer0
	.globl _map
	.globl _SCmap
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_winstLCD	=	0xffc2
_wdataLCD	=	0xffd2
_rinstLCD	=	0xffe2
_rdataLCD	=	0xfff2
_point:
	.ds 8
_SCmap::
	.ds 64
_map::
	.ds 64
_Timer0::
	.ds 7
_dacWrite	=	0xffe4
_player::
	.ds 3
_setInitialScreen_control_1_1:
	.ds 1
_setLevel1_control_1_1:
	.ds 1
_setLevel2_control_1_1:
	.ds 1
_setLevel3_control_1_1:
	.ds 1
_setLevel4_control_1_1:
	.ds 1
_setLevel5_control_1_1:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_rxMsg:
	.ds 1
_mainMario_melody::
	.ds 156
_mainMario_noteTime::
	.ds 78
_underworld_melody::
	.ds 112
_underworld_noteTime::
	.ds 56
_adobe_melody::
	.ds 32
_adobe_noteTime::
	.ds 16
_beep1_melody::
	.ds 4
_beep1_noteTime::
	.ds 2
_beep2_melody::
	.ds 4
_beep2_noteTime::
	.ds 2
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'interruptConfig'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:19: void interruptConfig(){
;	-----------------------------------------
;	 function interruptConfig
;	-----------------------------------------
_interruptConfig:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	main.c:20: IE = 0x82; 								// Habilitando interrupções, Serial e timer0 (slide sistmicro 03_Interrupções.pdf pg.9)
	mov	_IE,#0x82
;	main.c:21: IP = 0x08;								// Prioridade de interrupção Serial
	mov	_IP,#0x08
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configs'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:24: void configs(){
;	-----------------------------------------
;	 function configs
;	-----------------------------------------
_configs:
;	main.c:25: interruptConfig();						// Habilitando configuracoes
	lcall	_interruptConfig
;	main.c:26: timerConfig();
	lcall	_timerConfig
;	main.c:27: LCDconfig();
	lcall	_LCDconfig
;	main.c:28: serialConfig(1,player);
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_serialConfig_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	dpl,#0x01
	ljmp	_serialConfig
;------------------------------------------------------------
;Allocation info for local variables in function 'setInitialScreen'
;------------------------------------------------------------
;control                   Allocated with name '_setInitialScreen_control_1_1'
;------------------------------------------------------------
;	main.c:32: void setInitialScreen(){
;	-----------------------------------------
;	 function setInitialScreen
;	-----------------------------------------
_setInitialScreen:
;	main.c:34: unsigned char control = 1;
	mov	dptr,#_setInitialScreen_control_1_1
	mov	a,#0x01
	movx	@dptr,a
;	main.c:36: setMap1CGram();
	lcall	_setMap1CGram
;	main.c:37: LCD_putTextAt("MAZE GAME",2,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:39: while(control)
00101$:
	mov	dptr,#_setInitialScreen_control_1_1
	movx	a,@dptr
	mov	r2,a
	jz	00103$
;	main.c:40: control = LCD_putText(" aperte ESPACO para iniciar",3, 250);
	mov	dptr,#_LCD_putText_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_LCD_putText_PARM_3
	mov	a,#0xFA
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_LCD_putText
	mov	a,dpl
	mov	dptr,#_setInitialScreen_control_1_1
	movx	@dptr,a
	sjmp	00101$
00103$:
;	main.c:42: clearLCD();
	ljmp	_clearLCD
;------------------------------------------------------------
;Allocation info for local variables in function 'setInstructions'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:46: void setInstructions(){
;	-----------------------------------------
;	 function setInstructions
;	-----------------------------------------
_setInstructions:
;	main.c:48: LCD_putTextAt("INSTRUCOES",1,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:49: LCD_putTextAt("1) Movimente com",2,LEFT);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#__str_3
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:50: LCD_putTextAt("W,S,A,D ",3,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:51: delay(3500,1);
	mov	dptr,#_delay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#0x0DAC
	lcall	_delay
;	main.c:52: clearLCD();
	lcall	_clearLCD
;	main.c:54: LCD_putTextAt("COMO GANHAR",1,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_5
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:55: LCD_putTextAt("Ache uma saida ",2,LEFT);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:56: LCD_putTextAt("para CIMA,DIREI-",3,LEFT);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#__str_7
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:57: LCD_putTextAt("TA ou ESQUERDA",4,LEFT);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#__str_8
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:58: delay(3500,1);
	mov	dptr,#_delay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#0x0DAC
	lcall	_delay
;	main.c:59: clearLCD();
	ljmp	_clearLCD
;------------------------------------------------------------
;Allocation info for local variables in function 'setLevel1'
;------------------------------------------------------------
;control                   Allocated with name '_setLevel1_control_1_1'
;------------------------------------------------------------
;	main.c:64: void setLevel1(){
;	-----------------------------------------
;	 function setLevel1
;	-----------------------------------------
_setLevel1:
;	main.c:65: unsigned char control = 1;
	mov	dptr,#_setLevel1_control_1_1
	mov	a,#0x01
	movx	@dptr,a
;	main.c:67: LCD_putTextAt("NIVEL",2,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_9
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:68: LCD_putTextAt("1",3,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_10
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:69: delay(3000,1);
	mov	dptr,#_delay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#0x0BB8
	lcall	_delay
;	main.c:70: clearLCD();
	lcall	_clearLCD
;	main.c:72: player->sline = 7;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x07
	lcall	__gptrput
;	main.c:73: player->scol = 3;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r2
	cjne	r2,#0x00,00108$
	inc	r3
00108$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x03
	lcall	__gptrput
;	main.c:74: player->line = 4;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x04
	lcall	__gptrput
;	main.c:75: player->col = 10;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x0A
	lcall	__gptrput
;	main.c:77: printMap();
	lcall	_printMap
;	main.c:79: while(control)
00101$:
	mov	dptr,#_setLevel1_control_1_1
	movx	a,@dptr
	mov	r2,a
	jz	00103$
;	main.c:80: control = configMap(player->line, player->col);
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_player
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dptr,#_configMap_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	lcall	_configMap
	mov	a,dpl
	mov	dptr,#_setLevel1_control_1_1
	movx	@dptr,a
	sjmp	00101$
00103$:
;	main.c:82: clearLCD();
	ljmp	_clearLCD
;------------------------------------------------------------
;Allocation info for local variables in function 'setLevel2'
;------------------------------------------------------------
;control                   Allocated with name '_setLevel2_control_1_1'
;------------------------------------------------------------
;	main.c:85: void setLevel2(){
;	-----------------------------------------
;	 function setLevel2
;	-----------------------------------------
_setLevel2:
;	main.c:86: unsigned char control = 1;
	mov	dptr,#_setLevel2_control_1_1
	mov	a,#0x01
	movx	@dptr,a
;	main.c:88: LCD_putTextAt("NIVEL",2,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_9
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:89: LCD_putTextAt("2",3,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_11
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:90: delay(3000,1);
	mov	dptr,#_delay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#0x0BB8
	lcall	_delay
;	main.c:91: clearLCD();
	lcall	_clearLCD
;	main.c:93: setMap2CGram();
	lcall	_setMap2CGram
;	main.c:95: player->sline = 7;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x07
	lcall	__gptrput
;	main.c:96: player->scol = 2;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r2
	cjne	r2,#0x00,00108$
	inc	r3
00108$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
;	main.c:97: player->line = 4;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x04
	lcall	__gptrput
;	main.c:98: player->col = 2;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
;	main.c:100: while(control)
00101$:
	mov	dptr,#_setLevel2_control_1_1
	movx	a,@dptr
	mov	r2,a
	jz	00103$
;	main.c:101: control = configMap(player->line, player->col);
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_player
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dptr,#_configMap_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	lcall	_configMap
	mov	a,dpl
	mov	dptr,#_setLevel2_control_1_1
	movx	@dptr,a
	sjmp	00101$
00103$:
;	main.c:103: clearLCD();
	ljmp	_clearLCD
;------------------------------------------------------------
;Allocation info for local variables in function 'setLevel3'
;------------------------------------------------------------
;control                   Allocated with name '_setLevel3_control_1_1'
;------------------------------------------------------------
;	main.c:106: void setLevel3(){
;	-----------------------------------------
;	 function setLevel3
;	-----------------------------------------
_setLevel3:
;	main.c:107: unsigned char control = 1;
	mov	dptr,#_setLevel3_control_1_1
	mov	a,#0x01
	movx	@dptr,a
;	main.c:109: LCD_putTextAt("NIVEL",2,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_9
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:110: LCD_putTextAt("3",3,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_12
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:111: delay(3000,1);
	mov	dptr,#_delay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#0x0BB8
	lcall	_delay
;	main.c:112: clearLCD();
	lcall	_clearLCD
;	main.c:114: setMap3CGram();
	lcall	_setMap3CGram
;	main.c:116: player->sline = 5;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x05
	lcall	__gptrput
;	main.c:117: player->scol = 5;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r2
	cjne	r2,#0x00,00108$
	inc	r3
00108$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x05
	lcall	__gptrput
;	main.c:118: player->line = 4;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x04
	lcall	__gptrput
;	main.c:119: player->col = 10;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x0A
	lcall	__gptrput
;	main.c:121: while(control)
00101$:
	mov	dptr,#_setLevel3_control_1_1
	movx	a,@dptr
	mov	r2,a
	jz	00103$
;	main.c:122: control = configMap(player->line, player->col);
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_player
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dptr,#_configMap_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	lcall	_configMap
	mov	a,dpl
	mov	dptr,#_setLevel3_control_1_1
	movx	@dptr,a
	sjmp	00101$
00103$:
;	main.c:124: clearLCD();
	ljmp	_clearLCD
;------------------------------------------------------------
;Allocation info for local variables in function 'setLevel4'
;------------------------------------------------------------
;control                   Allocated with name '_setLevel4_control_1_1'
;------------------------------------------------------------
;	main.c:127: void setLevel4(){
;	-----------------------------------------
;	 function setLevel4
;	-----------------------------------------
_setLevel4:
;	main.c:128: unsigned char control = 1;
	mov	dptr,#_setLevel4_control_1_1
	mov	a,#0x01
	movx	@dptr,a
;	main.c:130: LCD_putTextAt("NIVEL",2,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_9
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:131: LCD_putTextAt("4",3,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_13
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:132: delay(3000,1);
	mov	dptr,#_delay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#0x0BB8
	lcall	_delay
;	main.c:133: clearLCD();
	lcall	_clearLCD
;	main.c:135: setMap4CGram();
	lcall	_setMap4CGram
;	main.c:137: player->sline = 3;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x03
	lcall	__gptrput
;	main.c:138: player->scol = 4;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r2
	cjne	r2,#0x00,00108$
	inc	r3
00108$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x04
	lcall	__gptrput
;	main.c:139: player->line = 4;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x04
	lcall	__gptrput
;	main.c:140: player->col = 16;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x10
	lcall	__gptrput
;	main.c:142: while(control)
00101$:
	mov	dptr,#_setLevel4_control_1_1
	movx	a,@dptr
	mov	r2,a
	jz	00103$
;	main.c:143: control = configMap(player->line, player->col);
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_player
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dptr,#_configMap_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	lcall	_configMap
	mov	a,dpl
	mov	dptr,#_setLevel4_control_1_1
	movx	@dptr,a
	sjmp	00101$
00103$:
;	main.c:145: clearLCD();
	ljmp	_clearLCD
;------------------------------------------------------------
;Allocation info for local variables in function 'setLevel5'
;------------------------------------------------------------
;control                   Allocated with name '_setLevel5_control_1_1'
;------------------------------------------------------------
;	main.c:148: void setLevel5(){
;	-----------------------------------------
;	 function setLevel5
;	-----------------------------------------
_setLevel5:
;	main.c:149: unsigned char control = 1;
	mov	dptr,#_setLevel5_control_1_1
	mov	a,#0x01
	movx	@dptr,a
;	main.c:151: LCD_putTextAt("NIVEL",2,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_9
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:152: LCD_putTextAt("5",3,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_14
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:153: delay(3000,1);
	mov	dptr,#_delay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#0x0BB8
	lcall	_delay
;	main.c:154: clearLCD();
	lcall	_clearLCD
;	main.c:156: setMap5CGram();
	lcall	_setMap5CGram
;	main.c:158: player->sline = 7;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x07
	lcall	__gptrput
;	main.c:159: player->scol = 5;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r2
	cjne	r2,#0x00,00108$
	inc	r3
00108$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x05
	lcall	__gptrput
;	main.c:160: player->line = 4;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x04
	lcall	__gptrput
;	main.c:161: player->col = 1;
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	main.c:163: while(control)
00101$:
	mov	dptr,#_setLevel5_control_1_1
	movx	a,@dptr
	mov	r2,a
	jz	00103$
;	main.c:164: control = configMap(player->line, player->col);
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_player
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dptr,#_configMap_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	lcall	_configMap
	mov	a,dpl
	mov	dptr,#_setLevel5_control_1_1
	movx	@dptr,a
	sjmp	00101$
00103$:
;	main.c:166: clearLCD();
	ljmp	_clearLCD
;------------------------------------------------------------
;Allocation info for local variables in function 'setFinish'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:168: void setFinish(){
;	-----------------------------------------
;	 function setFinish
;	-----------------------------------------
_setFinish:
;	main.c:169: LCD_putTextAt("VOCE",2,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_15
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:170: LCD_putTextAt("VENCEU",3,CENTER);
	mov	dptr,#_LCD_putTextAt_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#__str_16
	mov	b,#0x80
	lcall	_LCD_putTextAt
;	main.c:171: delay(3000,1);
	mov	dptr,#_delay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#0x0BB8
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:174: void main(void){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:176: configs();
	lcall	_configs
;	main.c:178: while(1){
00102$:
;	main.c:179: setInitialScreen();
	lcall	_setInitialScreen
;	main.c:181: setInstructions();
	lcall	_setInstructions
;	main.c:183: setLevel1();
	lcall	_setLevel1
;	main.c:185: setLevel2();
	lcall	_setLevel2
;	main.c:187: setLevel3();
	lcall	_setLevel3
;	main.c:189: setLevel4();
	lcall	_setLevel4
;	main.c:191: setLevel5();
	lcall	_setLevel5
;	main.c:193: setFinish();
	lcall	_setFinish
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "MAZE GAME"
	.db 0x00
__str_1:
	.ascii " aperte ESPACO para iniciar"
	.db 0x00
__str_2:
	.ascii "INSTRUCOES"
	.db 0x00
__str_3:
	.ascii "1) Movimente com"
	.db 0x00
__str_4:
	.ascii "W,S,A,D "
	.db 0x00
__str_5:
	.ascii "COMO GANHAR"
	.db 0x00
__str_6:
	.ascii "Ache uma saida "
	.db 0x00
__str_7:
	.ascii "para CIMA,DIREI-"
	.db 0x00
__str_8:
	.ascii "TA ou ESQUERDA"
	.db 0x00
__str_9:
	.ascii "NIVEL"
	.db 0x00
__str_10:
	.ascii "1"
	.db 0x00
__str_11:
	.ascii "2"
	.db 0x00
__str_12:
	.ascii "3"
	.db 0x00
__str_13:
	.ascii "4"
	.db 0x00
__str_14:
	.ascii "5"
	.db 0x00
__str_15:
	.ascii "VOCE"
	.db 0x00
__str_16:
	.ascii "VENCEU"
	.db 0x00
	.area XINIT   (CODE)
__xinit__rxMsg:
	.db #0x00
__xinit__mainMario_melody:
	.byte #0x63,#0x00
	.byte #0x63,#0x00
	.byte #0x00,#0x00
	.byte #0x63,#0x00
	.byte #0x00,#0x00
	.byte #0x7D,#0x00
	.byte #0x63,#0x00
	.byte #0x00,#0x00
	.byte #0x54,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xA7,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x7D,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xA7,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xC7,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x95,#0x00
	.byte #0x00,#0x00
	.byte #0x85,#0x00
	.byte #0x00,#0x00
	.byte #0x8D,#0x00
	.byte #0x95,#0x00
	.byte #0x00,#0x00
	.byte #0xA7,#0x00
	.byte #0x63,#0x00
	.byte #0x54,#0x00
	.byte #0x4B,#0x00
	.byte #0x00,#0x00
	.byte #0x5E,#0x00
	.byte #0x54,#0x00
	.byte #0x00,#0x00
	.byte #0x63,#0x00
	.byte #0x00,#0x00
	.byte #0x7D,#0x00
	.byte #0x70,#0x00
	.byte #0x85,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x7D,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xA7,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xC7,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x95,#0x00
	.byte #0x00,#0x00
	.byte #0x85,#0x00
	.byte #0x00,#0x00
	.byte #0x8D,#0x00
	.byte #0x95,#0x00
	.byte #0x00,#0x00
	.byte #0xA7,#0x00
	.byte #0x63,#0x00
	.byte #0x54,#0x00
	.byte #0x4B,#0x00
	.byte #0x00,#0x00
	.byte #0x5E,#0x00
	.byte #0x54,#0x00
	.byte #0x00,#0x00
	.byte #0x63,#0x00
	.byte #0x00,#0x00
	.byte #0x7D,#0x00
	.byte #0x70,#0x00
	.byte #0x85,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
__xinit__mainMario_noteTime:
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
__xinit__underworld_melody:
	.byte #0xFB,#0x00
	.byte #0x7D,#0x00
	.byte #0x2A,#0x01
	.byte #0x95,#0x00
	.byte #0x1A,#0x01
	.byte #0x8D,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xFB,#0x00
	.byte #0x7D,#0x00
	.byte #0x2A,#0x01
	.byte #0x95,#0x00
	.byte #0x1A,#0x01
	.byte #0x8D,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x78,#0x01
	.byte #0xBC,#0x00
	.byte #0xBF,#0x01
	.byte #0xDF,#0x00
	.byte #0xA6,#0x01
	.byte #0xD3,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x78,#0x01
	.byte #0xBC,#0x00
	.byte #0xBF,#0x01
	.byte #0xDF,#0x00
	.byte #0xA6,#0x01
	.byte #0xD3,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xD3,#0x00
	.byte #0xED,#0x00
	.byte #0xDF,#0x00
	.byte #0xED,#0x00
	.byte #0xD3,#0x00
	.byte #0xD3,#0x00
	.byte #0x3C,#0x01
	.byte #0x4F,#0x01
	.byte #0xED,#0x00
	.byte #0xFB,#0x00
	.byte #0xB1,#0x00
	.byte #0xBC,#0x00
	.byte #0x8E,#0x01
	.byte #0x8D,#0x00
	.byte #0x95,#0x00
	.byte #0x9E,#0x00
	.byte #0xD3,#0x00
	.byte #0x0A,#0x01
	.byte #0x1A,#0x01
	.byte #0x2A,#0x01
	.byte #0x3C,#0x01
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
__xinit__underworld_noteTime:
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x06
	.db #0x03
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x06
	.db #0x03
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x06
	.db #0x03
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x06
	.db #0x06
	.db #0x12
	.db #0x12
	.db #0x12
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x12
	.db #0x12
	.db #0x12
	.db #0x12
	.db #0x12
	.db #0x12
	.db #0x0A
	.db #0x0A
	.db #0x0A
	.db #0x0A
	.db #0x0A
	.db #0x0A
	.db #0x03
	.db #0x03
	.db #0x03
__xinit__adobe_melody:
	.byte #0x85,#0x00
	.byte #0x85,#0x00
	.byte #0x00,#0x00
	.byte #0x85,#0x00
	.byte #0x70,#0x00
	.byte #0x70,#0x00
	.byte #0x00,#0x00
	.byte #0x70,#0x00
	.byte #0x95,#0x00
	.byte #0x95,#0x00
	.byte #0x00,#0x00
	.byte #0x95,#0x00
	.byte #0x85,#0x00
	.byte #0x85,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
__xinit__adobe_noteTime:
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
__xinit__beep1_melody:
	.byte #0xFB,#0x00
	.byte #0x00,#0x00
__xinit__beep1_noteTime:
	.db #0x06
	.db #0x0C
__xinit__beep2_melody:
	.byte #0xED,#0x00
	.byte #0x00,#0x00
__xinit__beep2_noteTime:
	.db #0x06
	.db #0x0C
	.area CABS    (ABS,CODE)
