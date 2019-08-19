;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
; This file was generated Mon Aug 19 00:21:24 2019
;--------------------------------------------------------
	.module TIMER
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _delay_PARM_2
	.globl _Timer0
	.globl _timerConfig
	.globl _delay
	.globl _timer
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
_Timer0::
	.ds 7
_delay_PARM_2:
	.ds 1
_delay_time_1_1:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'timerConfig'
;------------------------------------------------------------
;------------------------------------------------------------
;	TIMER.c:6: void timerConfig(){
;	-----------------------------------------
;	 function timerConfig
;	-----------------------------------------
_timerConfig:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	TIMER.c:7: TH0 = 0; 					// Zerar os bits mais significativos do temporizador TIMER0
	mov	_TH0,#0x00
;	TIMER.c:8: TL0 = 0; 					// Zerar os bits menos significativos do temporizador TIMER0
	mov	_TL0,#0x00
;	TIMER.c:10: TMOD = 0x21; 				// Habilitando modo 8-bits recarga automática (TIMER1) e contagem modo 16-bits (TIMER0) (slide sistmicro 04_Timer.pdf pg.8)
	mov	_TMOD,#0x21
;	TIMER.c:12: TH1 = 0xFD; 				// Zerar os bits mais significativos do temporizador - HABILITANDO COMUNICAÇÃO 9600 bps(usando 8 bits)
	mov	_TH1,#0xFD
;	TIMER.c:13: TL1 = 0xFD; 				// Zerar os bits menos significativos do temporizador - HABILITANDO COMUNICAÇÃO 9600 bps (usando 8 bits)
	mov	_TL1,#0xFD
;	TIMER.c:15: TR1 = 1;        			// Iniciando o T1
	setb	_TR1
;	TIMER.c:17: P1 = 0x00;
	mov	_P1,#0x00
;	TIMER.c:19: Timer0.finishMicro = 0;
	mov	dptr,#(_Timer0 + 0x0005)
;	TIMER.c:20: Timer0.finishMili = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_Timer0 + 0x0004)
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;miliseconds               Allocated with name '_delay_PARM_2'
;time                      Allocated with name '_delay_time_1_1'
;------------------------------------------------------------
;	TIMER.c:28: void delay(unsigned int time, unsigned char miliseconds){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_delay_time_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	TIMER.c:33: Timer0.flag=1;
	mov	dptr,#(_Timer0 + 0x0006)
	mov	a,#0x01
	movx	@dptr,a
;	TIMER.c:35: if(!Timer0.finishMili && miliseconds){
	mov	dptr,#(_Timer0 + 0x0004)
	movx	a,@dptr
	mov	r2,a
	jz	00122$
	ljmp	00110$
00122$:
	mov	dptr,#_delay_PARM_2
	movx	a,@dptr
	mov	r3,a
	jz	00110$
;	TIMER.c:36: Timer0.cycles = time/65;
	mov	dptr,#_delay_time_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#__divuint_PARM_2
	mov	a,#0x41
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar3
	push	ar4
	lcall	__divuint
	mov	r5,dpl
	mov	r6,dph
	pop	ar4
	pop	ar3
	mov	dptr,#_Timer0
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	TIMER.c:37: Timer0.lastClock = 65535 - ((time % 65)*1000);
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x41
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	lcall	__moduint
	mov	r3,dpl
	mov	r4,dph
	mov	dptr,#__mulint_PARM_2
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#0x03E8
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,#0xFF
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,#0xFF
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	mov	dptr,#(_Timer0 + 0x0002)
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	TIMER.c:39: TR0 = 1;
	setb	_TR0
;	TIMER.c:40: Timer0.finishMili = 1;
	mov	dptr,#(_Timer0 + 0x0004)
	mov	a,#0x01
	movx	@dptr,a
;	TIMER.c:42: while(Timer0.finishMili);
00101$:
	mov	dptr,#(_Timer0 + 0x0004)
	movx	a,@dptr
	jz	00113$
	sjmp	00101$
00110$:
;	TIMER.c:44: else if(!Timer0.finishMili){
	mov	a,r2
	jnz	00113$
;	TIMER.c:45: Timer0.cycles = 1;
	mov	dptr,#_Timer0
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	TIMER.c:46: Timer0.lastClock = 65535 - time;
	mov	dptr,#_delay_time_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,#0xFF
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,#0xFF
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	mov	dptr,#(_Timer0 + 0x0002)
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	TIMER.c:47: TR0 = 1;
	setb	_TR0
;	TIMER.c:49: while(!Timer0.finishMicro);
00104$:
	mov	dptr,#(_Timer0 + 0x0005)
	movx	a,@dptr
	jz	00104$
;	TIMER.c:51: Timer0.finishMicro = 0;
	mov	dptr,#(_Timer0 + 0x0005)
	clr	a
	movx	@dptr,a
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer'
;------------------------------------------------------------
;------------------------------------------------------------
;	TIMER.c:61: void volatile timer() __interrupt 1{ 			//(slide aplicmicro 11_C.pdf pg.13)
;	-----------------------------------------
;	 function timer
;	-----------------------------------------
_timer:
	push	acc
	push	dpl
	push	dph
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	psw
	mov	psw,#0x00
;	TIMER.c:63: TH0 = 0; 												// Zerar os bits mais significativos do contador
	mov	_TH0,#0x00
;	TIMER.c:64: TL0 = 0; 												// Zerar os bits menos significativos do contador
	mov	_TL0,#0x00
;	TIMER.c:65: TF0 = 0;												// Zero a flag do contador
	clr	_TF0
;	TIMER.c:66: TR0 = 0;												// Paro timer0
	clr	_TR0
;	TIMER.c:68: if(Timer0.cycles > 1){
	mov	dptr,#_Timer0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,#0x01
	subb	a,r2
	clr	a
	subb	a,r3
	jnc	00107$
;	TIMER.c:69: Timer0.cycles--;									// decrementa cycles
	mov	a,r2
	add	a,#0xff
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_Timer0
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	TIMER.c:70: TR0 = 1;											// inicia contador
	setb	_TR0
	sjmp	00109$
00107$:
;	TIMER.c:72: else if(Timer0.cycles == 1){
	cjne	r2,#0x01,00104$
	cjne	r3,#0x00,00104$
;	TIMER.c:73: TH0 = Timer0.lastClock & 0xFF ;						// Atribui ao ultimo timer o valor dos bits mais significativos
	mov	dptr,#(_Timer0 + 0x0002)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar6,r4
	mov	r7,#0x00
	mov	_TH0,r6
;	TIMER.c:74: TL0 = Timer0.lastClock >> 8;						// Atribui ao ultimo timer o valor dos bits menos significativos
	mov	_TL0,r5
;	TIMER.c:75: Timer0.cycles--;									// decrementa cycles
	mov	dptr,#_Timer0
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00117$
	dec	r5
00117$:
	mov	dptr,#_Timer0
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	TIMER.c:77: Timer0.finishMicro = 1;
	mov	dptr,#(_Timer0 + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	TIMER.c:79: TR0 = 1;											// inicia contador
	setb	_TR0
	sjmp	00109$
00104$:
;	TIMER.c:81: else if(Timer0.cycles == 0){
	mov	a,r2
	orl	a,r3
	jnz	00109$
;	TIMER.c:82: Timer0.finishMili = 0;								// finish é uma flag que indica que o tempo acabou
	mov	dptr,#(_Timer0 + 0x0004)
	clr	a
	movx	@dptr,a
00109$:
	pop	psw
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
