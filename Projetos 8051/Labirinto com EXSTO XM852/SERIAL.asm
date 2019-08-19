;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
; This file was generated Mon Aug 19 00:21:25 2019
;--------------------------------------------------------
	.module SERIAL
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _receivedChar
	.globl _transNumber
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
	.globl _serialControl_PARM_2
	.globl _serialConfig_PARM_2
	.globl _player
	.globl _Timer0
	.globl _map
	.globl _SCmap
	.globl _transmitter
	.globl _receiver
	.globl _serialConfig
	.globl _serialBegin
	.globl _serialControl
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
_serialControl_sloc0_1_0:
	.ds 2
_serialControl_sloc1_1_0:
	.ds 3
_serialControl_sloc2_1_0:
	.ds 3
_serialControl_sloc3_1_0:
	.ds 3
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
_player::
	.ds 3
_transmitter_message_1_1:
	.ds 1
_transNumber_number_1_1:
	.ds 1
_serialConfig_PARM_2:
	.ds 3
_serialConfig_read_1_1:
	.ds 1
_serialControl_PARM_2:
	.ds 3
_serialControl_scmap_1_1:
	.ds 3
_serialControl_logic_op_1_1:
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
;Allocation info for local variables in function 'transmitter'
;------------------------------------------------------------
;message                   Allocated with name '_transmitter_message_1_1'
;------------------------------------------------------------
;	SERIAL.c:9: void transmitter(unsigned char message){
;	-----------------------------------------
;	 function transmitter
;	-----------------------------------------
_transmitter:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	a,dpl
	mov	dptr,#_transmitter_message_1_1
	movx	@dptr,a
;	SERIAL.c:10: if(! TI){
	jb	_TI,00106$
;	SERIAL.c:11: SBUF = message;				// Manda a mensagem para o buffer
	mov	dptr,#_transmitter_message_1_1
	movx	a,@dptr
	mov	_SBUF,a
;	SERIAL.c:13: while(TI == 0);		// Esperando a flag TI parar a transmissão
00101$:
;	SERIAL.c:14: TI = 0;			// Zerando a flag
	jbc	_TI,00112$
	sjmp	00101$
00112$:
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transNumber'
;------------------------------------------------------------
;number                    Allocated with name '_transNumber_number_1_1'
;------------------------------------------------------------
;	SERIAL.c:19: void transNumber(unsigned char number){
;	-----------------------------------------
;	 function transNumber
;	-----------------------------------------
_transNumber:
	mov	a,dpl
	mov	dptr,#_transNumber_number_1_1
	movx	@dptr,a
;	SERIAL.c:21: transmitter(number/10 + '0'); 
	mov	dptr,#_transNumber_number_1_1
	movx	a,@dptr
	mov	r2,a
	mov	b,#0x0A
	div	ab
	add	a,#0x30
	mov	dpl,a
	push	ar2
	lcall	_transmitter
	pop	ar2
;	SERIAL.c:22: transmitter(number%10 + '0'); 
	mov	b,#0x0A
	mov	a,r2
	div	ab
	mov	a,b
	add	a,#0x30
	mov	dpl,a
	lcall	_transmitter
;	SERIAL.c:23: transmitter('\n'); 
	mov	dpl,#0x0A
	ljmp	_transmitter
;------------------------------------------------------------
;Allocation info for local variables in function 'receiver'
;------------------------------------------------------------
;------------------------------------------------------------
;	SERIAL.c:26: char receiver(){
;	-----------------------------------------
;	 function receiver
;	-----------------------------------------
_receiver:
;	SERIAL.c:27: return SBUF;						// Recebe a mensagem do buffer
	mov	r2,_SBUF
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'receivedChar'
;------------------------------------------------------------
;------------------------------------------------------------
;	SERIAL.c:30: char receivedChar(){
;	-----------------------------------------
;	 function receivedChar
;	-----------------------------------------
_receivedChar:
;	SERIAL.c:31: return rxMsg;
	mov	dptr,#_rxMsg
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serialConfig'
;------------------------------------------------------------
;gamer                     Allocated with name '_serialConfig_PARM_2'
;read                      Allocated with name '_serialConfig_read_1_1'
;------------------------------------------------------------
;	SERIAL.c:34: void serialConfig(unsigned char read, struct position *gamer){
;	-----------------------------------------
;	 function serialConfig
;	-----------------------------------------
_serialConfig:
	mov	a,dpl
	mov	dptr,#_serialConfig_read_1_1
	movx	@dptr,a
;	SERIAL.c:35: player = gamer;
	mov	dptr,#_serialConfig_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_player
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	SERIAL.c:37: if(read)
	mov	dptr,#_serialConfig_read_1_1
	movx	a,@dptr
	mov	r2,a
	jz	00102$
;	SERIAL.c:38: SCON = 0x50; 						// Configurando o modo 1 para serial (05 Serial.pdf de sistmicro)
	mov	_SCON,#0x50
;	SERIAL.c:40: SCON = 0x40;
	ret
00102$:
	mov	_SCON,#0x40
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serialBegin'
;------------------------------------------------------------
;------------------------------------------------------------
;	SERIAL.c:44: unsigned char serialBegin(){
;	-----------------------------------------
;	 function serialBegin
;	-----------------------------------------
_serialBegin:
;	SERIAL.c:46: if(RI){
	jnb	_RI,00104$
;	SERIAL.c:47: rxMsg = receiver();
	lcall	_receiver
	mov	r2,dpl
	mov	dptr,#_rxMsg
	mov	a,r2
	movx	@dptr,a
;	SERIAL.c:49: if(rxMsg == ' ')
	cjne	r2,#0x20,00104$
;	SERIAL.c:50: return 0;
	mov	dpl,#0x00
;	SERIAL.c:53: return 1;
	ret
00104$:
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serialControl'
;------------------------------------------------------------
;sloc0                     Allocated with name '_serialControl_sloc0_1_0'
;sloc1                     Allocated with name '_serialControl_sloc1_1_0'
;sloc2                     Allocated with name '_serialControl_sloc2_1_0'
;sloc3                     Allocated with name '_serialControl_sloc3_1_0'
;map                       Allocated with name '_serialControl_PARM_2'
;scmap                     Allocated with name '_serialControl_scmap_1_1'
;logic_op                  Allocated with name '_serialControl_logic_op_1_1'
;------------------------------------------------------------
;	SERIAL.c:56: unsigned char serialControl(struct SChar scmap[8],struct Map map[4][16]){
;	-----------------------------------------
;	 function serialControl
;	-----------------------------------------
_serialControl:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_serialControl_scmap_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	SERIAL.c:58: unsigned char logic_op = 1;
	mov	dptr,#_serialControl_logic_op_1_1
	mov	a,#0x01
	movx	@dptr,a
;	SERIAL.c:60: LCD_putSCharAt(player->sline,player->scol, player->line,player->col);
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
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x01
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x02
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x03
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
	mov	dptr,#_LCD_putSCharAt_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_LCD_putSCharAt_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_LCD_putSCharAt_PARM_4
	mov	a,r2
	movx	@dptr,a
	mov	dpl,r5
	lcall	_LCD_putSCharAt
;	SERIAL.c:62: if(RI){
	jb	_RI,00214$
	ljmp	00178$
00214$:
;	SERIAL.c:63: rxMsg = receiver();
	lcall	_receiver
	mov	r2,dpl
	mov	dptr,#_rxMsg
	mov	a,r2
	movx	@dptr,a
;	SERIAL.c:65: if(rxMsg == 'w' || rxMsg == 'W'){		
	cjne	r2,#0x77,00215$
	sjmp	00173$
00215$:
	cjne	r2,#0x57,00216$
	sjmp	00217$
00216$:
	ljmp	00174$
00217$:
00173$:
;	SERIAL.c:67: if((player->sline - 1) >0)
	mov	dptr,#_player
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	mov	r7,a
	mov	r0,#0x00
	dec	r7
	cjne	r7,#0xff,00218$
	dec	r0
00218$:
	clr	c
	clr	a
	subb	a,r7
	mov	a,#(0x00 ^ 0x80)
	mov	b,r0
	xrl	b,#0x80
	subb	a,b
	jc	00219$
	ljmp	00109$
00219$:
;	SERIAL.c:68: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-2] & (pow(2,5-player->scol));
	mov	a,#0x02
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r0,#0x00
	add	a,#0xff
	mov	_serialControl_sloc0_1_0,a
	mov	a,r0
	addc	a,#0xff
	mov	(_serialControl_sloc0_1_0 + 1),a
	mov	dptr,#_serialControl_PARM_2
	movx	a,@dptr
	mov	_serialControl_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 2),a
	mov	r7,_serialControl_sloc0_1_0
	mov	a,(_serialControl_sloc0_1_0 + 1)
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,r7
	add	a,_serialControl_sloc1_1_0
	mov	_serialControl_sloc1_1_0,a
	mov	a,r0
	addc	a,(_serialControl_sloc1_1_0 + 1)
	mov	(_serialControl_sloc1_1_0 + 1),a
	mov	a,#0x03
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	dec	a
	add	a,_serialControl_sloc1_1_0
	mov	r7,a
	clr	a
	addc	a,(_serialControl_sloc1_1_0 + 1)
	mov	r0,a
	mov	r1,(_serialControl_sloc1_1_0 + 2)
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	a,r7
	add	a,#0xff
	mov	_serialControl_sloc1_1_0,a
	mov	a,r0
	addc	a,#0xff
	mov	(_serialControl_sloc1_1_0 + 1),a
	mov	dptr,#_serialControl_scmap_1_1
	movx	a,@dptr
	mov	_serialControl_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc2_1_0 + 2),a
	mov	r7,_serialControl_sloc1_1_0
	mov	a,(_serialControl_sloc1_1_0 + 1)
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r7
	swap	a
	rr	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf8
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,r7
	add	a,_serialControl_sloc2_1_0
	mov	r7,a
	mov	a,r0
	addc	a,(_serialControl_sloc2_1_0 + 1)
	mov	r0,a
	mov	r1,(_serialControl_sloc2_1_0 + 2)
	mov	a,r6
	add	a,#0xfe
	add	a,r7
	mov	_serialControl_sloc2_1_0,a
	clr	a
	addc	a,r0
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	(_serialControl_sloc2_1_0 + 2),r1
	mov	a,#0x01
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_pow_PARM_2
	mov	a,#0x05
	clr	c
	subb	a,r7
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_pow
	mov	r7,dpl
	mov	dpl,_serialControl_sloc2_1_0
	mov	dph,(_serialControl_sloc2_1_0 + 1)
	mov	b,(_serialControl_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_serialControl_logic_op_1_1
	mov	a,r7
	anl	a,r0
	movx	@dptr,a
	ljmp	00110$
00109$:
;	SERIAL.c:69: else if(player->sline == 1 && player->line > 1)
	clr	a
	cjne	r6,#0x01,00220$
	inc	a
00220$:
	mov	r6,a
	jnz	00222$
	ljmp	00105$
00222$:
	mov	a,#0x02
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov  r7,a
	add	a,#0xff - 0x01
	jc	00223$
	ljmp	00105$
00223$:
;	SERIAL.c:70: logic_op = scmap[(map[player->line-2][player->col-1].schar) - 1].adds[7] & (pow(2,5-player->scol));
	mov	r0,#0x00
	mov	a,r7
	add	a,#0xfe
	mov	_serialControl_sloc2_1_0,a
	mov	a,r0
	addc	a,#0xff
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	dptr,#_serialControl_PARM_2
	movx	a,@dptr
	mov	_serialControl_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 2),a
	mov	r7,_serialControl_sloc2_1_0
	mov	a,(_serialControl_sloc2_1_0 + 1)
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,r7
	add	a,_serialControl_sloc1_1_0
	mov	_serialControl_sloc2_1_0,a
	mov	a,r0
	addc	a,(_serialControl_sloc1_1_0 + 1)
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
	mov	a,#0x03
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	dec	a
	add	a,_serialControl_sloc2_1_0
	mov	r7,a
	clr	a
	addc	a,(_serialControl_sloc2_1_0 + 1)
	mov	r0,a
	mov	r1,(_serialControl_sloc2_1_0 + 2)
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	a,r7
	add	a,#0xff
	mov	_serialControl_sloc2_1_0,a
	mov	a,r0
	addc	a,#0xff
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	dptr,#_serialControl_scmap_1_1
	movx	a,@dptr
	mov	_serialControl_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 2),a
	mov	r7,_serialControl_sloc2_1_0
	mov	a,(_serialControl_sloc2_1_0 + 1)
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r7
	swap	a
	rr	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf8
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,r7
	add	a,_serialControl_sloc1_1_0
	mov	r7,a
	mov	a,r0
	addc	a,(_serialControl_sloc1_1_0 + 1)
	mov	r0,a
	mov	r1,(_serialControl_sloc1_1_0 + 2)
	mov	a,#0x07
	add	a,r7
	mov	_serialControl_sloc2_1_0,a
	clr	a
	addc	a,r0
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	(_serialControl_sloc2_1_0 + 2),r1
	mov	a,#0x01
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_pow_PARM_2
	mov	a,#0x05
	clr	c
	subb	a,r7
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_pow
	mov	r7,dpl
	mov	dpl,_serialControl_sloc2_1_0
	mov	dph,(_serialControl_sloc2_1_0 + 1)
	mov	b,(_serialControl_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_serialControl_logic_op_1_1
	mov	a,r7
	anl	a,r0
	movx	@dptr,a
	sjmp	00110$
00105$:
;	SERIAL.c:71: else if(player->sline == 1 && player->line == 1 )
	mov	a,r6
	jz	00110$
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x01,00110$
;	SERIAL.c:72: return 0;
	mov	dpl,#0x00
	ret
00110$:
;	SERIAL.c:75: if(logic_op == 0){
	mov	dptr,#_serialControl_logic_op_1_1
	movx	a,@dptr
	mov	r3,a
	jz	00227$
	ljmp	00175$
00227$:
;	SERIAL.c:76: if(player->sline != 1)
	mov	dptr,#_player
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	cjne	r6,#0x01,00228$
	sjmp	00114$
00228$:
;	SERIAL.c:77: player->sline--;
	dec	r6
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	ljmp	00175$
00114$:
;	SERIAL.c:79: if(player->line != 1){
	mov	a,#0x02
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x01,00229$
	ljmp	00175$
00229$:
;	SERIAL.c:80: player->sline = 8;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x08
	lcall	__gptrput
;	SERIAL.c:81: player->line--;
	dec	r1
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__gptrput
	ljmp	00175$
00174$:
;	SERIAL.c:89: else if(rxMsg == 's' || rxMsg == 'S'){
	cjne	r2,#0x73,00230$
	sjmp	00169$
00230$:
	cjne	r2,#0x53,00231$
	sjmp	00232$
00231$:
	ljmp	00170$
00232$:
00169$:
;	SERIAL.c:92: if((player->sline-1) < 7)
	mov	dptr,#_player
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	mov	r7,a
	mov	r0,#0x00
	dec	r7
	cjne	r7,#0xff,00233$
	dec	r0
00233$:
	clr	c
	mov	a,r7
	subb	a,#0x07
	mov	a,r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00234$
	ljmp	00119$
00234$:
;	SERIAL.c:93: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline] & (pow(2,5-player->scol));
	mov	a,#0x02
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r0,#0x00
	add	a,#0xff
	mov	_serialControl_sloc2_1_0,a
	mov	a,r0
	addc	a,#0xff
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	dptr,#_serialControl_PARM_2
	movx	a,@dptr
	mov	_serialControl_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 2),a
	mov	r7,_serialControl_sloc2_1_0
	mov	a,(_serialControl_sloc2_1_0 + 1)
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,r7
	add	a,_serialControl_sloc1_1_0
	mov	_serialControl_sloc2_1_0,a
	mov	a,r0
	addc	a,(_serialControl_sloc1_1_0 + 1)
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
	mov	a,#0x03
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	dec	a
	add	a,_serialControl_sloc2_1_0
	mov	r7,a
	clr	a
	addc	a,(_serialControl_sloc2_1_0 + 1)
	mov	r0,a
	mov	r1,(_serialControl_sloc2_1_0 + 2)
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	a,r7
	add	a,#0xff
	mov	_serialControl_sloc2_1_0,a
	mov	a,r0
	addc	a,#0xff
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	dptr,#_serialControl_scmap_1_1
	movx	a,@dptr
	mov	_serialControl_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 2),a
	mov	r7,_serialControl_sloc2_1_0
	mov	a,(_serialControl_sloc2_1_0 + 1)
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r7
	swap	a
	rr	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf8
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,r7
	add	a,_serialControl_sloc1_1_0
	mov	r7,a
	mov	a,r0
	addc	a,(_serialControl_sloc1_1_0 + 1)
	mov	r0,a
	mov	r1,(_serialControl_sloc1_1_0 + 2)
	mov	a,r6
	add	a,r7
	mov	_serialControl_sloc2_1_0,a
	clr	a
	addc	a,r0
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	(_serialControl_sloc2_1_0 + 2),r1
	mov	a,#0x01
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_pow_PARM_2
	mov	a,#0x05
	clr	c
	subb	a,r6
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_pow
	mov	r6,dpl
	mov	dpl,_serialControl_sloc2_1_0
	mov	dph,(_serialControl_sloc2_1_0 + 1)
	mov	b,(_serialControl_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_serialControl_logic_op_1_1
	mov	a,r6
	anl	a,r7
	movx	@dptr,a
	ljmp	00120$
00119$:
;	SERIAL.c:95: logic_op = scmap[(map[player->line][player->col-1].schar) - 1].adds[0] & (pow(2,5-player->scol));	
	mov	a,#0x02
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_serialControl_PARM_2
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	add	a,r7
	mov	_serialControl_sloc2_1_0,a
	clr	a
	addc	a,r0
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	(_serialControl_sloc2_1_0 + 2),r1
	mov	a,#0x03
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	dec	a
	add	a,_serialControl_sloc2_1_0
	mov	r6,a
	clr	a
	addc	a,(_serialControl_sloc2_1_0 + 1)
	mov	r7,a
	mov	r0,(_serialControl_sloc2_1_0 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,r6
	add	a,#0xff
	mov	_serialControl_sloc2_1_0,a
	mov	a,r7
	addc	a,#0xff
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	dptr,#_serialControl_scmap_1_1
	movx	a,@dptr
	mov	_serialControl_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 2),a
	mov	r7,_serialControl_sloc2_1_0
	mov	a,(_serialControl_sloc2_1_0 + 1)
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r7
	swap	a
	rr	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf8
	xch	a,r7
	xrl	a,r7
	mov	r6,a
	mov	a,r7
	add	a,_serialControl_sloc1_1_0
	mov	r7,a
	mov	a,r6
	addc	a,(_serialControl_sloc1_1_0 + 1)
	mov	r6,a
	mov	r0,(_serialControl_sloc1_1_0 + 2)
	inc	r3
	cjne	r3,#0x00,00235$
	inc	r4
00235$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_pow_PARM_2
	mov	a,#0x05
	clr	c
	subb	a,r3
	movx	@dptr,a
	mov	dpl,#0x02
	push	ar6
	push	ar7
	push	ar0
	lcall	_pow
	mov	r3,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	mov	dpl,r7
	mov	dph,r6
	mov	b,r0
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_serialControl_logic_op_1_1
	mov	a,r3
	anl	a,r7
	movx	@dptr,a
00120$:
;	SERIAL.c:100: if(logic_op == 0){
	mov	dptr,#_serialControl_logic_op_1_1
	movx	a,@dptr
	mov	r3,a
	jz	00236$
	ljmp	00175$
00236$:
;	SERIAL.c:101: if(player->sline != 8)
	mov	dptr,#_player
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	cjne	r6,#0x08,00237$
	sjmp	00124$
00237$:
;	SERIAL.c:102: player->sline++;
	inc	r6
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	ljmp	00175$
00124$:
;	SERIAL.c:104: if(player->line != 4){
	mov	a,#0x02
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x04,00238$
	ljmp	00175$
00238$:
;	SERIAL.c:105: player->sline = 1;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x01
	lcall	__gptrput
;	SERIAL.c:106: player->line++;
	inc	r1
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__gptrput
	ljmp	00175$
00170$:
;	SERIAL.c:115: else if(rxMsg == 'd' || rxMsg == 'D'){
	cjne	r2,#0x64,00239$
	sjmp	00165$
00239$:
	cjne	r2,#0x44,00240$
	sjmp	00241$
00240$:
	ljmp	00166$
00241$:
00165$:
;	SERIAL.c:118: if((player->scol+1)<6)
	mov	dptr,#_player
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x01
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	mov	r7,a
	mov	r0,#0x00
	inc	r7
	cjne	r7,#0x00,00242$
	inc	r0
00242$:
	clr	c
	mov	a,r7
	subb	a,#0x06
	mov	a,r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00243$
	ljmp	00136$
00243$:
;	SERIAL.c:119: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-1] & (pow(2,5-(player->scol+1)));
	mov	a,#0x02
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r0,#0x00
	add	a,#0xff
	mov	_serialControl_sloc2_1_0,a
	mov	a,r0
	addc	a,#0xff
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	dptr,#_serialControl_PARM_2
	movx	a,@dptr
	mov	_serialControl_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 2),a
	mov	r7,_serialControl_sloc2_1_0
	mov	a,(_serialControl_sloc2_1_0 + 1)
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,r7
	add	a,_serialControl_sloc1_1_0
	mov	_serialControl_sloc2_1_0,a
	mov	a,r0
	addc	a,(_serialControl_sloc1_1_0 + 1)
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
	mov	a,#0x03
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	dec	a
	add	a,_serialControl_sloc2_1_0
	mov	r7,a
	clr	a
	addc	a,(_serialControl_sloc2_1_0 + 1)
	mov	r0,a
	mov	r1,(_serialControl_sloc2_1_0 + 2)
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	a,r7
	add	a,#0xff
	mov	_serialControl_sloc2_1_0,a
	mov	a,r0
	addc	a,#0xff
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	dptr,#_serialControl_scmap_1_1
	movx	a,@dptr
	mov	_serialControl_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc1_1_0 + 2),a
	mov	r7,_serialControl_sloc2_1_0
	mov	a,(_serialControl_sloc2_1_0 + 1)
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r7
	swap	a
	rr	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf8
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,r7
	add	a,_serialControl_sloc1_1_0
	mov	_serialControl_sloc2_1_0,a
	mov	a,r0
	addc	a,(_serialControl_sloc1_1_0 + 1)
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	dec	a
	add	a,_serialControl_sloc2_1_0
	mov	_serialControl_sloc2_1_0,a
	clr	a
	addc	a,(_serialControl_sloc2_1_0 + 1)
	mov	(_serialControl_sloc2_1_0 + 1),a
	mov	a,r6
	inc	a
	mov	dptr,#_pow_PARM_2
	setb	c
	subb	a,#0x05
	cpl	a
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_pow
	mov	r7,dpl
	mov	dpl,_serialControl_sloc2_1_0
	mov	dph,(_serialControl_sloc2_1_0 + 1)
	mov	b,(_serialControl_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_serialControl_logic_op_1_1
	mov	a,r7
	anl	a,r0
	movx	@dptr,a
	ljmp	00137$
00136$:
;	SERIAL.c:120: else if(player->scol==5 && player->col <16)
	clr	a
	cjne	r6,#0x05,00244$
	inc	a
00244$:
	mov	r6,a
	jnz	00246$
	ljmp	00132$
00246$:
	mov	a,#0x03
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	_serialControl_sloc2_1_0,a
	clr	c
	subb	a,#0x10
	jc	00247$
	ljmp	00132$
00247$:
;	SERIAL.c:121: logic_op = scmap[(map[player->line-1][player->col].schar) - 1].adds[player->sline-1] & (pow(2,5-(1)));
	mov	a,#0x02
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar7,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r7,#0x00
	add	a,#0xff
	mov	_serialControl_sloc1_1_0,a
	mov	a,r7
	addc	a,#0xff
	mov	(_serialControl_sloc1_1_0 + 1),a
	mov	dptr,#_serialControl_PARM_2
	movx	a,@dptr
	mov	_serialControl_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc3_1_0 + 2),a
	mov	r7,_serialControl_sloc1_1_0
	mov	a,(_serialControl_sloc1_1_0 + 1)
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,r7
	add	a,_serialControl_sloc3_1_0
	mov	r7,a
	mov	a,r0
	addc	a,(_serialControl_sloc3_1_0 + 1)
	mov	r0,a
	mov	r1,(_serialControl_sloc3_1_0 + 2)
	mov	a,_serialControl_sloc2_1_0
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r0
	mov	r0,a
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	a,r7
	add	a,#0xff
	mov	_serialControl_sloc3_1_0,a
	mov	a,r0
	addc	a,#0xff
	mov	(_serialControl_sloc3_1_0 + 1),a
	mov	dptr,#_serialControl_scmap_1_1
	movx	a,@dptr
	mov	_serialControl_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc2_1_0 + 2),a
	mov	r7,_serialControl_sloc3_1_0
	mov	a,(_serialControl_sloc3_1_0 + 1)
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r7
	swap	a
	rr	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf8
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,r7
	add	a,_serialControl_sloc2_1_0
	mov	_serialControl_sloc3_1_0,a
	mov	a,r0
	addc	a,(_serialControl_sloc2_1_0 + 1)
	mov	(_serialControl_sloc3_1_0 + 1),a
	mov	(_serialControl_sloc3_1_0 + 2),(_serialControl_sloc2_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	dec	a
	add	a,_serialControl_sloc3_1_0
	mov	_serialControl_sloc3_1_0,a
	clr	a
	addc	a,(_serialControl_sloc3_1_0 + 1)
	mov	(_serialControl_sloc3_1_0 + 1),a
	mov	dptr,#_pow_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_pow
	mov	r7,dpl
	mov	dpl,_serialControl_sloc3_1_0
	mov	dph,(_serialControl_sloc3_1_0 + 1)
	mov	b,(_serialControl_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_serialControl_logic_op_1_1
	mov	a,r7
	anl	a,r0
	movx	@dptr,a
	sjmp	00137$
00132$:
;	SERIAL.c:122: else if(player->scol==5 && player->col ==16)
	mov	a,r6
	jz	00137$
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
	mov	r3,a
	cjne	r3,#0x10,00137$
;	SERIAL.c:123: return 0;
	mov	dpl,#0x00
	ret
00137$:
;	SERIAL.c:126: if(logic_op == 0){
	mov	dptr,#_serialControl_logic_op_1_1
	movx	a,@dptr
	mov	r3,a
	jz	00251$
	ljmp	00175$
00251$:
;	SERIAL.c:128: if(player->scol != 5)
	mov	dptr,#_player
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x01
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x05,00252$
	sjmp	00141$
00252$:
;	SERIAL.c:129: player->scol++;
	inc	r1
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__gptrput
	ljmp	00175$
00141$:
;	SERIAL.c:131: if(player->col != 16){
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
	mov	r1,a
	cjne	r1,#0x10,00253$
	ljmp	00175$
00253$:
;	SERIAL.c:132: player->scol = 1;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,#0x01
	lcall	__gptrput
;	SERIAL.c:133: player->col++;
	inc	r1
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r1
	lcall	__gptrput
	ljmp	00175$
00166$:
;	SERIAL.c:141: else if(rxMsg == 'a' || rxMsg == 'A'){
	cjne	r2,#0x61,00254$
	sjmp	00162$
00254$:
	cjne	r2,#0x41,00255$
	sjmp	00256$
00255$:
	ljmp	00175$
00256$:
00162$:
;	SERIAL.c:144: if((player->scol-2)>-1)
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	add	a,#0xfe
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	clr	c
	mov	a,#0xFF
	subb	a,r6
	mov	a,#(0xFF ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00257$
	ljmp	00153$
00257$:
;	SERIAL.c:145: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-1] & (pow(2,5-(player->scol-1)));
	mov	a,#0x02
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r7,#0x00
	add	a,#0xff
	mov	_serialControl_sloc3_1_0,a
	mov	a,r7
	addc	a,#0xff
	mov	(_serialControl_sloc3_1_0 + 1),a
	mov	dptr,#_serialControl_PARM_2
	movx	a,@dptr
	mov	_serialControl_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc2_1_0 + 2),a
	mov	r7,_serialControl_sloc3_1_0
	mov	a,(_serialControl_sloc3_1_0 + 1)
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r6,a
	mov	a,r7
	add	a,_serialControl_sloc2_1_0
	mov	_serialControl_sloc3_1_0,a
	mov	a,r6
	addc	a,(_serialControl_sloc2_1_0 + 1)
	mov	(_serialControl_sloc3_1_0 + 1),a
	mov	(_serialControl_sloc3_1_0 + 2),(_serialControl_sloc2_1_0 + 2)
	mov	a,#0x03
	add	a,r2
	mov	r1,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	dec	a
	add	a,_serialControl_sloc3_1_0
	mov	r6,a
	clr	a
	addc	a,(_serialControl_sloc3_1_0 + 1)
	mov	r7,a
	mov	r0,(_serialControl_sloc3_1_0 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,r6
	add	a,#0xff
	mov	_serialControl_sloc3_1_0,a
	mov	a,r7
	addc	a,#0xff
	mov	(_serialControl_sloc3_1_0 + 1),a
	mov	dptr,#_serialControl_scmap_1_1
	movx	a,@dptr
	mov	_serialControl_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc2_1_0 + 2),a
	mov	r7,_serialControl_sloc3_1_0
	mov	a,(_serialControl_sloc3_1_0 + 1)
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r7
	swap	a
	rr	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf8
	xch	a,r7
	xrl	a,r7
	mov	r6,a
	mov	a,r7
	add	a,_serialControl_sloc2_1_0
	mov	r7,a
	mov	a,r6
	addc	a,(_serialControl_sloc2_1_0 + 1)
	mov	r6,a
	mov	r0,(_serialControl_sloc2_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	dec	a
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r5
	dec	a
	mov	dptr,#_pow_PARM_2
	setb	c
	subb	a,#0x05
	cpl	a
	movx	@dptr,a
	mov	dpl,#0x02
	push	ar6
	push	ar7
	push	ar0
	lcall	_pow
	mov	r1,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	mov	dpl,r7
	mov	dph,r6
	mov	b,r0
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_serialControl_logic_op_1_1
	mov	a,r1
	anl	a,r7
	movx	@dptr,a
	ljmp	00154$
00153$:
;	SERIAL.c:146: else if(player->scol==1 && player->col >1)
	clr	a
	cjne	r5,#0x01,00258$
	inc	a
00258$:
	mov	r5,a
	jnz	00260$
	ljmp	00149$
00260$:
	mov	a,#0x03
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov  r6,a
	add	a,#0xff - 0x01
	jc	00261$
	ljmp	00149$
00261$:
;	SERIAL.c:147: logic_op = scmap[(map[player->line-1][player->col-2].schar) - 1].adds[player->sline-1] & (pow(2,5-(5)));
	mov	a,#0x02
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r0,#0x00
	add	a,#0xff
	mov	_serialControl_sloc3_1_0,a
	mov	a,r0
	addc	a,#0xff
	mov	(_serialControl_sloc3_1_0 + 1),a
	mov	dptr,#_serialControl_PARM_2
	movx	a,@dptr
	mov	_serialControl_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc2_1_0 + 2),a
	mov	r7,_serialControl_sloc3_1_0
	mov	a,(_serialControl_sloc3_1_0 + 1)
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,r7
	add	a,_serialControl_sloc2_1_0
	mov	r7,a
	mov	a,r0
	addc	a,(_serialControl_sloc2_1_0 + 1)
	mov	r0,a
	mov	r1,(_serialControl_sloc2_1_0 + 2)
	mov	a,r6
	add	a,#0xfe
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r0
	mov	r0,a
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#0xff
	mov	_serialControl_sloc3_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(_serialControl_sloc3_1_0 + 1),a
	mov	dptr,#_serialControl_scmap_1_1
	movx	a,@dptr
	mov	_serialControl_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serialControl_sloc2_1_0 + 2),a
	mov	r7,_serialControl_sloc3_1_0
	mov	a,(_serialControl_sloc3_1_0 + 1)
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r7
	swap	a
	rr	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf8
	xch	a,r7
	xrl	a,r7
	mov	r6,a
	mov	a,r7
	add	a,_serialControl_sloc2_1_0
	mov	r7,a
	mov	a,r6
	addc	a,(_serialControl_sloc2_1_0 + 1)
	mov	r6,a
	mov	r0,(_serialControl_sloc2_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	dec	a
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_pow_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x02
	push	ar6
	push	ar7
	push	ar0
	lcall	_pow
	mov	r1,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	mov	dpl,r7
	mov	dph,r6
	mov	b,r0
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_serialControl_logic_op_1_1
	mov	a,r1
	anl	a,r7
	movx	@dptr,a
	sjmp	00154$
00149$:
;	SERIAL.c:148: else if(player->scol==1 && player->col == 1)
	mov	a,r5
	jz	00154$
	mov	a,#0x03
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
	cjne	r2,#0x01,00154$
;	SERIAL.c:149: return 0;
	mov	dpl,#0x00
	ret
00154$:
;	SERIAL.c:152: if(logic_op == 0){
	mov	dptr,#_serialControl_logic_op_1_1
	movx	a,@dptr
	mov	r2,a
	jnz	00175$
;	SERIAL.c:153: if(player->scol != 1)
	mov	dptr,#_player
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x01,00266$
	sjmp	00158$
00266$:
;	SERIAL.c:154: player->scol--;
	dec	r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	sjmp	00175$
00158$:
;	SERIAL.c:156: if(player->col != 1){
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x01,00267$
	sjmp	00175$
00267$:
;	SERIAL.c:157: player->scol = 5;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x05
	lcall	__gptrput
;	SERIAL.c:158: player->col--;
	dec	r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
00175$:
;	SERIAL.c:169: printMap();
	lcall	_printMap
;	SERIAL.c:170: RI = 0;
	clr	_RI
00178$:
;	SERIAL.c:173: return 1;
	mov	dpl,#0x01
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__rxMsg:
	.db #0x00
	.area CABS    (ABS,CODE)
