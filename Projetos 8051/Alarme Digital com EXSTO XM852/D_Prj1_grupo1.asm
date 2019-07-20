;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Mon Jul 15 11:10:40 2019
;--------------------------------------------------------
	.module PROJET_1
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _resetTM
	.globl _varredura
	.globl _configurations
	.globl _timerMiliseconds
	.globl _delayTime
	.globl _atualizaHora
	.globl _verificaData
	.globl _getDiaDaSemana
	.globl _varreduraTecladoMat
	.globl _TM2HEX
	.globl _digitosLetter7S
	.globl _varreduraD7S
	.globl _timerMicroseconds
	.globl _delayMicroseconds
	.globl _add7s
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
	.globl _Timer1
	.globl _Timer0
	.globl _alarm
	.globl _dh
	.globl _TM
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_TM::
	.ds 6
_dh::
	.ds 6
_alarm::
	.ds 6
_Timer0::
	.ds 6
_Timer1::
	.ds 6
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
_dado	=	0xffc0
_sel	=	0xffc1
_selTeclado	=	0xffc3
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timerMiliseconds
	.ds	5
	reti
	.ds	7
	ljmp	_timerMicroseconds
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
;Allocation info for local variables in function 'add7s'
;------------------------------------------------------------
;dot                       Allocated to stack - offset -3
;decimal                   Allocated to registers r2 
;letter                    Allocated to registers 
;address                   Allocated to stack - offset 1
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:112: unsigned char add7s(unsigned char decimal, unsigned char dot){
;	-----------------------------------------
;	 function add7s
;	-----------------------------------------
_add7s:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x10
	mov	sp,a
	mov	r2,dpl
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:116: unsigned char address[16] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x3F
	mov	a,r0
	inc	a
	mov	r1,a
	mov	@r1,#0x06
	mov	a,#0x02
	add	a,r0
	mov	r1,a
	mov	@r1,#0x5B
	mov	a,#0x03
	add	a,r0
	mov	r1,a
	mov	@r1,#0x4F
	mov	a,#0x04
	add	a,r0
	mov	r1,a
	mov	@r1,#0x66
	mov	a,#0x05
	add	a,r0
	mov	r1,a
	mov	@r1,#0x6D
	mov	a,#0x06
	add	a,r0
	mov	r1,a
	mov	@r1,#0x7D
	mov	a,#0x07
	add	a,r0
	mov	r1,a
	mov	@r1,#0x07
	mov	a,#0x08
	add	a,r0
	mov	r1,a
	mov	@r1,#0x7F
	mov	a,#0x09
	add	a,r0
	mov	r1,a
	mov	@r1,#0x67
	mov	a,#0x0A
	add	a,r0
	mov	r1,a
	mov	@r1,#0x77
	mov	a,#0x0B
	add	a,r0
	mov	r1,a
	mov	@r1,#0x7C
	mov	a,#0x0C
	add	a,r0
	mov	r1,a
	mov	@r1,#0x39
	mov	a,#0x0D
	add	a,r0
	mov	r1,a
	mov	@r1,#0x5E
	mov	a,#0x0E
	add	a,r0
	mov	r1,a
	mov	@r1,#0x79
	mov	a,#0x0F
	add	a,r0
	mov	r1,a
	mov	@r1,#0x71
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:118: if (decimal <= 15)
	mov	a,#0x0F
	cjne	a,ar2,00166$
00166$:
	jc	00146$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:119: return address[decimal]+(dot*(128));
	mov	a,r2
	add	a,r0
	mov	r0,a
	mov	ar3,@r0
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	rr	a
	anl	a,#0x80
	mov	r4,a
	add	a,r3
	mov	dpl,a
	ljmp	00148$
00146$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:120: else if (decimal == 16)
	cjne	r2,#0x10,00143$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:121: return 128; // Só acende o ponto
	mov	dpl,#0x80
	ljmp	00148$
00143$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:122: else if(letter == 'S')
	cjne	r2,#0x53,00140$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:123: return 0x6D;
	mov	dpl,#0x6D
	ljmp	00148$
00140$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:124: else if(letter == 'E')
	cjne	r2,#0x45,00137$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:125: return 0x79;
	mov	dpl,#0x79
	ljmp	00148$
00137$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:126: else if(letter == 'G')
	cjne	r2,#0x47,00134$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:127: return 0x3D;
	mov	dpl,#0x3D
	ljmp	00148$
00134$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:128: else if(letter == 'T')
	cjne	r2,#0x54,00131$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:129: return 0x78;
	mov	dpl,#0x78
	ljmp	00148$
00131$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:130: else if(letter == 'R')
	cjne	r2,#0x52,00128$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:131: return 0x50;
	mov	dpl,#0x50
	ljmp	00148$
00128$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:132: else if(letter == 'Q')
	cjne	r2,#0x51,00125$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:133: return 0x67;
	mov	dpl,#0x67
	sjmp	00148$
00125$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:134: else if(letter == 'U')
	cjne	r2,#0x55,00122$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:135: return 0x1C;
	mov	dpl,#0x1C
	sjmp	00148$
00122$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:136: else if(letter == 'A')
	cjne	r2,#0x41,00119$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:137: return 0x77;
	mov	dpl,#0x77
	sjmp	00148$
00119$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:138: else if(letter == 'I')
	cjne	r2,#0x49,00116$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:139: return 0x06;
	mov	dpl,#0x06
	sjmp	00148$
00116$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:140: else if(letter == 'X')
	cjne	r2,#0x58,00113$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:141: return 0x76;
	mov	dpl,#0x76
	sjmp	00148$
00113$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:142: else if(letter == 'B')
	cjne	r2,#0x42,00110$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:143: return 0x7C;
	mov	dpl,#0x7C
	sjmp	00148$
00110$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:144: else if(letter == 'D')
	cjne	r2,#0x44,00107$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:145: return 0x5E;
	mov	dpl,#0x5E
	sjmp	00148$
00107$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:146: else if(letter == 'O')
	cjne	r2,#0x4F,00104$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:147: return 0x5C;
	mov	dpl,#0x5C
	sjmp	00148$
00104$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:148: else if(letter == 'N')
	cjne	r2,#0x4E,00108$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:149: return 0x54;
	mov	dpl,#0x54
	sjmp	00148$
00108$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:151: return 0;
	mov	dpl,#0x00
00148$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayMicroseconds'
;------------------------------------------------------------
;microseconds              Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:161: void delayMicroseconds(unsigned int microseconds){
;	-----------------------------------------
;	 function delayMicroseconds
;	-----------------------------------------
_delayMicroseconds:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:163: Timer1.lastClock = 65535 - microseconds; 	// Cálculo de quantos microsecundos o temporizador deve começar
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
	mov	((_Timer1 + 0x0002) + 0),r2
	mov	((_Timer1 + 0x0002) + 1),r3
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:164: TR1 = 1;					// Inicializar o timer
	setb	_TR1
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:166: while(!Timer1.finish); 				//& Espera a flag retornar o valor desejado 
00101$:
	mov	a,(_Timer1 + 0x0004)
	jz	00101$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:168: Timer1.finish = 0; 				//&	Zera a flag
	mov	(_Timer1 + 0x0004),#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timerMicroseconds'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:181: void timerMicroseconds() __interrupt 3{ //(slide aplicmicro 11_C.pdf pg.13)
;	-----------------------------------------
;	 function timerMicroseconds
;	-----------------------------------------
_timerMicroseconds:
	push	ar2
	push	ar3
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:183: TH1 = 0; 				// Zerar os bits mais significativos do temporizador
	mov	_TH1,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:184: TL1 = 0; 				// Zerar os bits menos significativos do temporizador
	mov	_TL1,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:185: TF1 = 0;				// Zero a flag do contador
	clr	_TF1
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:186: TR1 = 0;				// Paro timer1
	clr	_TR1
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:188: TH1 = Timer1.lastClock & 0xFF ;		// Atribui ao ultimo timer o valor dos bits mais significativos
	mov	r2,(_Timer1 + 0x0002)
	mov	_TH1,r2
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:189: TL1 = Timer1.lastClock >> 8;		// Atribui ao ultimo timer o valor dos bits menos significativos
	mov	_TL1,((_Timer1 + 0x0002) + 1)
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:192: Timer1.finish = 1;			// finish é uma flag que indica que o tempo acabou
	mov	(_Timer1 + 0x0004),#0x01
	pop	ar3
	pop	ar2
	reti
;	eliminated unneeded push/pop ar0
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'varreduraD7S'
;------------------------------------------------------------
;D2                        Allocated to stack - offset -3
;D3                        Allocated to stack - offset -4
;D4                        Allocated to stack - offset -5
;time                      Allocated to stack - offset -7
;dot                       Allocated to stack - offset -8
;D1                        Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:205: void varreduraD7S(unsigned char D1, unsigned char D2, unsigned char D3, unsigned char D4, unsigned int time, unsigned char dot){
;	-----------------------------------------
;	 function varreduraD7S
;	-----------------------------------------
_varreduraD7S:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:206: sel = 1; 			// seleciona o display 1 -> Mais a esquerda (possíveis valores: 1, 2, 4, 8)
	mov	dptr,#_sel
	mov	a,#0x01
	movx	@dptr,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:207: dado = add7s(D1,0); 		// atribuí o endereço hex ao dado7s
	clr	a
	push	acc
	mov	dpl,r2
	lcall	_add7s
	mov	r2,dpl
	dec	sp
	mov	dptr,#_dado
	mov	a,r2
	movx	@dptr,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:208: delayMicroseconds(time);	// Espera um tempo para mostrar na tela
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_delayMicroseconds
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:210: sel = 2;			// seleciona o display 2
	mov	dptr,#_sel
	mov	a,#0x02
	movx	@dptr,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:211: dado = add7s(D2,dot); 		// atribuí o endereço hex ao dado7s	
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	lcall	_add7s
	mov	r2,dpl
	dec	sp
	mov	dptr,#_dado
	mov	a,r2
	movx	@dptr,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:212: delayMicroseconds(time);	// Espera um tempo para mostrar na tela
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_delayMicroseconds
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:214: sel = 4;			// seleciona o display 3
	mov	dptr,#_sel
	mov	a,#0x04
	movx	@dptr,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:215: dado = add7s(D3,0); 		// atribuí o endereço hex ao dado7s
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	lcall	_add7s
	mov	r2,dpl
	dec	sp
	mov	dptr,#_dado
	mov	a,r2
	movx	@dptr,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:216: delayMicroseconds(time);	// Espera um tempo para mostrar na tela
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_delayMicroseconds
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:218: sel = 8;			// seleciona o display 4
	mov	dptr,#_sel
	mov	a,#0x08
	movx	@dptr,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:219: dado = add7s(D4,0); 		// atribuí o endereço hex ao dado7s			
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	lcall	_add7s
	mov	r2,dpl
	dec	sp
	mov	dptr,#_dado
	mov	a,r2
	movx	@dptr,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:220: delayMicroseconds(time);	// Espera um tempo para mostrar na tela
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_delayMicroseconds
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'digitosLetter7S'
;------------------------------------------------------------
;weekDay                   Allocated to registers r2 
;Digits                    Allocated to stack - offset 1
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:233: unsigned char * digitosLetter7S(unsigned char weekDay){
;	-----------------------------------------
;	 function digitosLetter7S
;	-----------------------------------------
_digitosLetter7S:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r2,dpl
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:234: unsigned char Digits[4] = {0,0,0,0}; 
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
	mov	a,r0
	inc	a
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x02
	add	a,r0
	mov	r3,a
	push	ar0
	mov	r0,ar3
	mov	@r0,#0x00
	pop	ar0
	mov	a,#0x03
	add	a,r0
	mov	r4,a
	push	ar0
	mov	r0,ar4
	mov	@r0,#0x00
	pop	ar0
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:236: if(weekDay == 0){
	mov	a,r2
	jnz	00119$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:237: Digits[0] = 'S';
	mov	@r0,#0x53
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:238: Digits[1] = 'E';
	mov	@r1,#0x45
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:239: Digits[2] = 'G';
	mov	r1,ar3
	mov	@r1,#0x47
	sjmp	00120$
00119$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:241: else if(weekDay == 1){
	cjne	r2,#0x01,00116$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:242: Digits[0] = 'T';
	mov	@r0,#0x54
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:243: Digits[1] = 'E';
	mov	@r1,#0x45
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:244: Digits[2] = 'R';
	mov	r1,ar3
	mov	@r1,#0x52
	sjmp	00120$
00116$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:246: else if(weekDay == 2){
	cjne	r2,#0x02,00113$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:247: Digits[0] = 'Q';
	mov	@r0,#0x51
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:248: Digits[1] = 'U';
	mov	@r1,#0x55
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:249: Digits[2] = 'A';
	mov	r1,ar3
	mov	@r1,#0x41
	sjmp	00120$
00113$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:251: else if(weekDay == 3){
	cjne	r2,#0x03,00110$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:252: Digits[0] = 'Q';
	mov	@r0,#0x51
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:253: Digits[1] = 'U';
	mov	@r1,#0x55
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:254: Digits[2] = 'I';
	mov	r1,ar3
	mov	@r1,#0x49
	sjmp	00120$
00110$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:256: else if(weekDay == 4){
	cjne	r2,#0x04,00107$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:257: Digits[0] = 'S';
	mov	@r0,#0x53
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:258: Digits[1] = 'E';
	mov	@r1,#0x45
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:259: Digits[2] = 'X';
	mov	r1,ar3
	mov	@r1,#0x58
	sjmp	00120$
00107$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:261: else if(weekDay == 5){
	cjne	r2,#0x05,00104$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:262: Digits[0] = 'S';
	mov	@r0,#0x53
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:263: Digits[1] = 'A';
	mov	@r1,#0x41
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:264: Digits[2] = 'B';
	mov	r1,ar3
	mov	@r1,#0x42
	sjmp	00120$
00104$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:266: else if(weekDay == 6){
	cjne	r2,#0x06,00120$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:267: Digits[0] = 'D';
	mov	@r0,#0x44
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:268: Digits[1] = 'O';
	mov	@r1,#0x4F
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:269: Digits[2] = 'N';
	mov	r1,ar3
	mov	@r1,#0x4E
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:270: Digits[3] = 'N';
	mov	r1,ar4
	mov	@r1,#0x4E
00120$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:273: return Digits;
	mov	ar2,r0
	mov	r3,#0x00
	mov	r4,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TM2HEX'
;------------------------------------------------------------
;value                     Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:298: unsigned char TM2HEX(unsigned int value){
;	-----------------------------------------
;	 function TM2HEX
;	-----------------------------------------
_TM2HEX:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:300: switch(value){
	cjne	r2,#0x01,00136$
	cjne	r3,#0x00,00136$
	ljmp	00101$
00136$:
	cjne	r2,#0x02,00137$
	cjne	r3,#0x00,00137$
	ljmp	00102$
00137$:
	cjne	r2,#0x04,00138$
	cjne	r3,#0x00,00138$
	ljmp	00103$
00138$:
	cjne	r2,#0x08,00139$
	cjne	r3,#0x00,00139$
	ljmp	00104$
00139$:
	cjne	r2,#0x10,00140$
	cjne	r3,#0x00,00140$
	ljmp	00105$
00140$:
	cjne	r2,#0x20,00141$
	cjne	r3,#0x00,00141$
	sjmp	00106$
00141$:
	cjne	r2,#0x40,00142$
	cjne	r3,#0x00,00142$
	sjmp	00107$
00142$:
	cjne	r2,#0x80,00143$
	cjne	r3,#0x00,00143$
	sjmp	00108$
00143$:
	cjne	r2,#0x81,00144$
	cjne	r3,#0x00,00144$
	sjmp	00109$
00144$:
	cjne	r2,#0x82,00145$
	cjne	r3,#0x00,00145$
	sjmp	00110$
00145$:
	cjne	r2,#0x84,00146$
	cjne	r3,#0x00,00146$
	sjmp	00111$
00146$:
	cjne	r2,#0x88,00147$
	cjne	r3,#0x00,00147$
	sjmp	00112$
00147$:
	cjne	r2,#0x90,00148$
	cjne	r3,#0x00,00148$
	sjmp	00113$
00148$:
	cjne	r2,#0xA0,00149$
	cjne	r3,#0x00,00149$
	sjmp	00114$
00149$:
	cjne	r2,#0xC0,00150$
	cjne	r3,#0x00,00150$
	sjmp	00115$
00150$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:301: case 1:					// Se o resultado for 1 do TM
	cjne	r2,#0x00,00117$
	cjne	r3,#0x01,00117$
	sjmp	00116$
00101$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:302: return 1;			// retorna 1
	mov	dpl,#0x01
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:303: case 2: 
	ret
00102$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:304: return 2;			// retorna 2
	mov	dpl,#0x02
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:305: case 4: 
	ret
00103$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:306: return 3;			// retorna 3
	mov	dpl,#0x03
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:307: case 8:
	ret
00104$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:308: return 10;			// retorna A
	mov	dpl,#0x0A
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:309: case 16:
	ret
00105$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:310: return 4;			// retorna 4
	mov	dpl,#0x04
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:311: case 32:
	ret
00106$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:312: return 5;			// retorna 5
	mov	dpl,#0x05
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:313: case 64:
	ret
00107$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:314: return 6;			// retorna 6
	mov	dpl,#0x06
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:315: case 128:
	ret
00108$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:316: return 11;			// retorna B
	mov	dpl,#0x0B
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:317: case 129:
	ret
00109$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:318: return 7;			// retorna 7
	mov	dpl,#0x07
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:319: case 130: 
	ret
00110$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:320: return 8;			// retorna 8
	mov	dpl,#0x08
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:321: case 132: 
	ret
00111$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:322: return 9;			// retorna 9
	mov	dpl,#0x09
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:323: case 136:
	ret
00112$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:324: return 12;			// retorna C
	mov	dpl,#0x0C
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:325: case 144:
	ret
00113$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:326: return 15;			// retorna F
	mov	dpl,#0x0F
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:327: case 160:
	ret
00114$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:328: return 0;			// retorna 0
	mov	dpl,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:329: case 192:
	ret
00115$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:330: return 14;			// retorna E
	mov	dpl,#0x0E
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:331: case 256:
	ret
00116$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:332: return 13;			// retorna D
	mov	dpl,#0x0D
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:333: }
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:335: return 0;
	ret
00117$:
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'varreduraTecladoMat'
;------------------------------------------------------------
;dadoTM                    Allocated to stack - offset 1
;dadoTM1                   Allocated to registers r4 r5 
;dadoTM2                   Allocated to registers r6 r7 
;boolHour1                 Allocated to registers r2 
;boolHour2                 Allocated to registers r3 
;boolMin1                  Allocated to registers r4 
;boolMin2                  Allocated to registers r5 
;boolControl               Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:341: void varreduraTecladoMat(){
;	-----------------------------------------
;	 function varreduraTecladoMat
;	-----------------------------------------
_varreduraTecladoMat:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:342: unsigned int dadoTM = 0, dadoTM1, dadoTM2;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:345: selTeclado = 0x40;								// Habilitando as duas primeiras linhas do TM
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:346: dadoTM1 = selTeclado;								// Lendo o valor pressionado
	mov	dptr,#_selTeclado
	mov	a,#0x40
	movx	@dptr,a
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:348: selTeclado = 0x80;								// Habilitando as duas ultimas linhas do TM
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:349: dadoTM2 = selTeclado;								// Lendo o valor pressionado
	mov	dptr,#_selTeclado
	mov	a,#0x80
	movx	@dptr,a
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:352: if(dadoTM1 != 0 || dadoTM2 != 0){						// Se estou apertando algum botão
	mov	a,r4
	orl	a,r5
	jnz	00214$
	mov	a,r6
	orl	a,r7
	jnz	00348$
	ljmp	00217$
00348$:
00214$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:354: if (dadoTM1 !=0)							// Se estou apertando as primeiras linhas
	mov	a,r4
	orl	a,r5
	jz	00104$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:355: dadoTM = dadoTM1;						// Atribuí o valor pressionado ao dadoTM 
	mov	r0,_bp
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	sjmp	00105$
00104$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:356: else if(dadoTM2 !=0)							// Se estou apertando as duas últimas linhas
	mov	a,r6
	orl	a,r7
	jz	00105$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:357: dadoTM = dadoTM2 + 128;						// Atribuí o valor pressionado ao dadoTM
	mov	r0,_bp
	inc	r0
	mov	a,#0x80
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
00105$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:360: TM.value[TM.vectorControl] = TM2HEX(dadoTM);				// Coloca no vetor do Display o valor correspondente ao pressionado.
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	push	ar0
	lcall	_TM2HEX
	mov	a,dpl
	pop	ar0
	mov	@r0,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:362: do{
00107$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:363: selTeclado = 0x40;
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:364: dadoTM1 = selTeclado;	
	mov	dptr,#_selTeclado
	mov	a,#0x40
	movx	@dptr,a
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:365: selTeclado = 0x80;
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:366: dadoTM2 = selTeclado;
	mov	dptr,#_selTeclado
	mov	a,#0x80
	movx	@dptr,a
	movx	a,@dptr
	mov	r2,a
	mov	r6,a
	mov	r7,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:367: } while((dadoTM1 == dadoTM) || (dadoTM2 +128 == dadoTM ));		// Espera até soltar o botão (DEBOUCER)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00351$
	inc	r0
	mov	a,@r0
	cjne	a,ar5,00351$
	sjmp	00107$
00351$:
	mov	a,#0x80
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00352$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00352$
	sjmp	00107$
00352$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:370: boolHour1 = ((TM.control == hour1 || (TM.control == configHour && TM.vectorControl == 0 )) && TM2HEX(dadoTM) <=2); // Verifica se o digito da dezena da hora que está sendo pressionado é o correto
	mov	r2,_TM
	mov	ar3,r2
	mov	r4,#0x00
	cjne	r3,#0x00,00353$
	cjne	r4,#0x00,00353$
	sjmp	00223$
00353$:
	cjne	r2,#0x13,00225$
	clr	a
	cjne	a,(_TM + 0x0005),00356$
	sjmp	00226$
00356$:
00225$:
	mov	r2,#0x00
	sjmp	00227$
00226$:
	mov	r2,#0x01
00227$:
	mov	a,r2
	jnz	00223$
	mov	r2,a
	sjmp	00224$
00223$:
	mov	r2,#0x01
00224$:
	mov	a,r2
	jz	00219$
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_TM2HEX
	mov	r2,dpl
	mov	a,#0x02
	cjne	a,ar2,00359$
00359$:
	cpl	c
	clr	a
	rlc	a
	mov	r2,a
	jnz	00220$
00219$:
	mov	r2,#0x00
	sjmp	00221$
00220$:
	mov	r2,#0x01
00221$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:372: boolHour2 = ((TM.control == hour2 || (TM.control == configHour && TM.vectorControl == 1 )) && ((TM2HEX(dadoTM) <=9 && TM.value[0] <= 1) || (TM2HEX(dadoTM) <=3 && TM.value[0] == 2)) ); // Verifica se o digito da unidade da hora que está sendo pressionado é o correto
	mov	r3,_TM
	cjne	r3,#0x01,00362$
	sjmp	00232$
00362$:
	cjne	r3,#0x13,00234$
	mov	a,#0x01
	cjne	a,(_TM + 0x0005),00365$
	sjmp	00235$
00365$:
00234$:
	mov	r3,#0x00
	sjmp	00236$
00235$:
	mov	r3,#0x01
00236$:
	mov	a,r3
	jnz	00232$
	mov	r3,a
	sjmp	00233$
00232$:
	mov	r3,#0x01
00233$:
	mov	a,r3
	jz	00228$
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar2
	lcall	_TM2HEX
	mov	r3,dpl
	pop	ar2
	mov	a,#0x09
	cjne	a,ar3,00368$
00368$:
	cpl	c
	clr	a
	rlc	a
	mov	r3,a
	jz	00240$
	mov	a,#0x01
	cjne	a,(_TM + 0x0001),00371$
00371$:
	cpl	c
	clr	a
	rlc	a
	mov	r3,a
	jnz	00241$
00240$:
	mov	r3,#0x00
	sjmp	00242$
00241$:
	mov	r3,#0x01
00242$:
	mov	a,r3
	jnz	00238$
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar2
	lcall	_TM2HEX
	mov	r3,dpl
	pop	ar2
	mov	a,#0x03
	cjne	a,ar3,00375$
00375$:
	cpl	c
	clr	a
	rlc	a
	mov	r3,a
	jz	00243$
	mov	a,#0x02
	cjne	a,(_TM + 0x0001),00378$
	sjmp	00244$
00378$:
00243$:
	mov	r3,#0x00
	sjmp	00245$
00244$:
	mov	r3,#0x01
00245$:
	mov	a,r3
	jnz	00238$
	mov	r3,a
	sjmp	00239$
00238$:
	mov	r3,#0x01
00239$:
	mov	a,r3
	jnz	00229$
00228$:
	mov	r3,#0x00
	sjmp	00230$
00229$:
	mov	r3,#0x01
00230$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:374: boolMin1 = ((TM.control == min1 || (TM.control == configHour && TM.vectorControl == 2 )) && TM2HEX(dadoTM) <=5); // Verifica se o digito da dezena do minuto que está sendo pressionado é o correto
	mov	r4,_TM
	cjne	r4,#0x02,00381$
	sjmp	00250$
00381$:
	cjne	r4,#0x13,00252$
	mov	a,#0x02
	cjne	a,(_TM + 0x0005),00384$
	sjmp	00253$
00384$:
00252$:
	mov	r4,#0x00
	sjmp	00254$
00253$:
	mov	r4,#0x01
00254$:
	mov	a,r4
	jnz	00250$
	mov	r4,a
	sjmp	00251$
00250$:
	mov	r4,#0x01
00251$:
	mov	a,r4
	jz	00246$
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar2
	push	ar3
	lcall	_TM2HEX
	mov	r4,dpl
	pop	ar3
	pop	ar2
	mov	a,#0x05
	cjne	a,ar4,00387$
00387$:
	cpl	c
	clr	a
	rlc	a
	mov	r4,a
	jnz	00247$
00246$:
	mov	r4,#0x00
	sjmp	00248$
00247$:
	mov	r4,#0x01
00248$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:376: boolMin2 = ((TM.control == min2 || (TM.control == configHour && TM.vectorControl ==3 )) && TM2HEX(dadoTM) <=9); // Verifica se o digito da unidade do minuto que está sendo pressionado é o correto
	mov	r5,_TM
	cjne	r5,#0x03,00390$
	sjmp	00259$
00390$:
	cjne	r5,#0x13,00261$
	mov	a,#0x03
	cjne	a,(_TM + 0x0005),00393$
	sjmp	00262$
00393$:
00261$:
	mov	r5,#0x00
	sjmp	00263$
00262$:
	mov	r5,#0x01
00263$:
	mov	a,r5
	jnz	00259$
	mov	r5,a
	sjmp	00260$
00259$:
	mov	r5,#0x01
00260$:
	mov	a,r5
	jz	00255$
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar2
	push	ar3
	push	ar4
	lcall	_TM2HEX
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,#0x09
	cjne	a,ar5,00396$
00396$:
	cpl	c
	clr	a
	rlc	a
	mov	r5,a
	jnz	00256$
00255$:
	mov	r5,#0x00
	sjmp	00257$
00256$:
	mov	r5,#0x01
00257$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:378: boolControl = ((TM.control> min2 && TM.control<configHour) || TM.control == configDay); // Como apresenta duas vezes que se configura o horário, no alarme e no início do display, a boolControl atribuí as correções para esses momentos, para os outros, deixa apenas configurar o dia e o ano.
	mov	r6,_TM
	mov	a,#0x03
	cjne	a,ar6,00399$
00399$:
	jnc	00267$
	cjne	r6,#0x13,00401$
00401$:
	jc	00268$
00267$:
	mov	r7,#0x00
	sjmp	00269$
00268$:
	mov	r7,#0x01
00269$:
	mov	a,r7
	jnz	00265$
	cjne	r6,#0x14,00404$
	sjmp	00265$
00404$:
	mov	r7,#0x00
	sjmp	00266$
00265$:
	mov	r7,#0x01
00266$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:380: if( !(boolHour1 || boolHour2 || boolMin1 || boolMin2 || boolControl) )
	mov	a,r2
	jnz	00208$
	mov	a,r3
	jnz	00208$
	mov	a,r4
	jnz	00208$
	mov	a,r5
	jnz	00208$
	mov	a,r7
	jnz	00208$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:381: TM.value[TM.vectorControl] = 16;
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	@r0,#0x10
	ljmp	00217$
00208$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:384: if(TM.control == hour1)
	mov	a,r6
	jnz	00175$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:385: dh.hora = 10*TM.value[TM.vectorControl]; 					// Atribuí o valor para a dezena da hora de dh
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	mov	b,#0x0A
	mul	ab
	mov	(_dh + 0x0004),a
	ljmp	00176$
00175$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:386: else if(TM.control == hour2)
	cjne	r6,#0x01,00172$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:387: dh.hora += TM.value[TM.vectorControl];						// Atribuí o valor para a unidade da hora de dh
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	add	a,(_dh + 0x0004)
	mov	(_dh + 0x0004),a
	ljmp	00176$
00172$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:388: else if(TM.control == min1)
	cjne	r6,#0x02,00169$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:389: dh.min = 10*TM.value[TM.vectorControl];						// Atribuí o valor para a dezena do minuto de dh
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	mov	b,#0x0A
	mul	ab
	mov	(_dh + 0x0005),a
	ljmp	00176$
00169$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:390: else if(TM.control == min2)
	cjne	r6,#0x03,00166$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:391: dh.min += TM.value[TM.vectorControl];						// Atribuí o valor para a unidade do minuto de dh
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	add	a,(_dh + 0x0005)
	mov	(_dh + 0x0005),a
	ljmp	00176$
00166$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:393: else if(TM.control == day1)
	cjne	r6,#0x05,00163$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:394: dh.dia = 10*TM.value[TM.vectorControl];						// Atribuí o valor para a dezena do dia de dh
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	mov	b,#0x0A
	mul	ab
	mov	_dh,a
	ljmp	00176$
00163$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:395: else if(TM.control == day2)
	cjne	r6,#0x06,00160$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:396: dh.dia += TM.value[TM.vectorControl];						// Atribuí o valor para a unidade do dia de dh
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	add	a,_dh
	mov	_dh,a
	ljmp	00176$
00160$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:397: else if(TM.control == month1)
	cjne	r6,#0x07,00157$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:398: dh.mes = 10*TM.value[TM.vectorControl];						// Atribuí o valor para a dezena do mes de dh
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	mov	b,#0x0A
	mul	ab
	mov	(_dh + 0x0001),a
	ljmp	00176$
00157$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:399: else if(TM.control == month2)
	cjne	r6,#0x08,00154$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:400: dh.mes += TM.value[TM.vectorControl];						// Atribuí o valor para a unidade do mes de dh
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	add	a,(_dh + 0x0001)
	mov	(_dh + 0x0001),a
	ljmp	00176$
00154$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:402: else if(TM.control == year1)
	cjne	r6,#0x0A,00151$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:403: dh.ano = 1000*TM.value[TM.vectorControl];					// Atribuí o valor para o milhar do ano de dh
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	push	ar6
	push	ar2
	push	ar3
	mov	dptr,#0x03E8
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar6
	mov	((_dh + 0x0002) + 0),r2
	mov	((_dh + 0x0002) + 1),r3
	ljmp	00176$
00151$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:404: else if(TM.control == year2)
	cjne	r6,#0x0B,00148$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:405: dh.ano += 100*TM.value[TM.vectorControl];					// Atribuí o valor para a centena do ano de dh
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	b,#0x64
	mul	ab
	add	a,(_dh + 0x0002)
	mov	r2,a
	mov	a,((_dh + 0x0002) + 1)
	addc	a,b
	mov	r3,a
	mov	((_dh + 0x0002) + 0),r2
	mov	((_dh + 0x0002) + 1),r3
	ljmp	00176$
00148$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:406: else if(TM.control == year3)
	cjne	r6,#0x0C,00145$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:407: dh.ano += 10*TM.value[TM.vectorControl];					// Atribuí o valor para a dezena do ano de dh
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	b,#0x0A
	mul	ab
	add	a,(_dh + 0x0002)
	mov	r2,a
	mov	a,((_dh + 0x0002) + 1)
	addc	a,b
	mov	r3,a
	mov	((_dh + 0x0002) + 0),r2
	mov	((_dh + 0x0002) + 1),r3
	ljmp	00176$
00145$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:408: else if(TM.control == year4){
	cjne	r6,#0x0D,00142$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:409: dh.ano += TM.value[TM.vectorControl];						// Atribuí o valor para a unidade do ano de dh
	mov	a,(_TM + 0x0005)
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	a,r2
	add	a,(_dh + 0x0002)
	mov	r2,a
	mov	a,r3
	addc	a,((_dh + 0x0002) + 1)
	mov	r3,a
	mov	((_dh + 0x0002) + 0),r2
	mov	((_dh + 0x0002) + 1),r3
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:410: TM.vectorControl = 0;
	mov	(_TM + 0x0005),#0x00
	ljmp	00176$
00142$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:413: else if(TM.control == configHour && TM.vectorControl == 0){				// Se estiver no modo de configuração de hora
	clr	a
	cjne	r6,#0x13,00433$
	inc	a
00433$:
	mov	r2,a
	jz	00138$
	mov	a,(_TM + 0x0005)
	mov	r3,a
	jnz	00138$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:414: alarm.hora = 10*TM.value[TM.vectorControl];					// Atribuí o valor para a dezena da hora do alarme
	mov	a,r3
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r4,a
	mov	b,#0x0A
	mul	ab
	mov	(_alarm + 0x0004),a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:415: TM.vectorControl++;
	mov	a,r3
	inc	a
	mov	(_TM + 0x0005),a
	ljmp	00176$
00138$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:417: else if(TM.control == configHour && TM.vectorControl == 1){
	mov	a,r2
	jz	00134$
	mov	r3,(_TM + 0x0005)
	cjne	r3,#0x01,00134$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:418: alarm.hora += TM.value[TM.vectorControl];					// Atribuí o valor para a unidade da hora do alarme
	mov	a,r3
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r4,a
	add	a,(_alarm + 0x0004)
	mov	(_alarm + 0x0004),a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:419: TM.vectorControl++;
	mov	a,r3
	inc	a
	mov	(_TM + 0x0005),a
	ljmp	00176$
00134$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:421: else if(TM.control == configHour && TM.vectorControl == 2){
	mov	a,r2
	jz	00130$
	mov	r3,(_TM + 0x0005)
	cjne	r3,#0x02,00130$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:422: alarm.min = 10*TM.value[TM.vectorControl];					// Atribuí o valor para a dezena do minuto do alarme
	mov	a,r3
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r4,a
	mov	b,#0x0A
	mul	ab
	mov	(_alarm + 0x0005),a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:423: TM.vectorControl++;
	mov	a,r3
	inc	a
	mov	(_TM + 0x0005),a
	ljmp	00176$
00130$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:425: else if(TM.control == configHour && TM.vectorControl == 3){
	mov	a,r2
	jz	00126$
	mov	r2,(_TM + 0x0005)
	cjne	r2,#0x03,00126$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:426: alarm.min += TM.value[TM.vectorControl];					// Atribuí o valor para a unidade do minuto do alarme
	mov	a,r2
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	add	a,(_alarm + 0x0005)
	mov	(_alarm + 0x0005),a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:427: TM.control = configDay;								// Atribuí a configuração do dia
	mov	_TM,#0x14
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:428: TM.value[0] = 16;								// Coloca ponto no display 1
	mov	(_TM + 0x0001),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:429: TM.value[1] = 16;								// Coloca ponto no display 2
	mov	(_TM + 0x0002),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:430: TM.value[2] = 16;								// Coloca ponto no display 3
	mov	(_TM + 0x0003),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:431: TM.value[3] = 16;								// Coloca ponto no display 4
	mov	(_TM + 0x0004),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:432: TM.vectorControl = 0;								// Reinicializa a variável
	mov	(_TM + 0x0005),#0x00
	ljmp	00176$
00126$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:436: else if(TM.control == configDay && TM.vectorControl == 0){
	clr	a
	cjne	r6,#0x14,00446$
	inc	a
00446$:
	mov	r2,a
	jz	00122$
	mov	a,(_TM + 0x0005)
	mov	r3,a
	jnz	00122$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:437: alarm.dia = 10*TM.value[TM.vectorControl];					// Atribuí o valor para a dezena do dia do alarme
	mov	a,r3
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r4,a
	mov	b,#0x0A
	mul	ab
	mov	_alarm,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:438: TM.vectorControl++;
	mov	a,r3
	inc	a
	mov	(_TM + 0x0005),a
	sjmp	00176$
00122$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:440: else if(TM.control == configDay && TM.vectorControl == 1){
	mov	a,r2
	jz	00118$
	mov	r3,(_TM + 0x0005)
	cjne	r3,#0x01,00118$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:441: alarm.dia += TM.value[TM.vectorControl];					// Atribuí o valor para a unidade do dia do alarme
	mov	a,r3
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r4,a
	add	a,_alarm
	mov	_alarm,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:442: TM.vectorControl++;
	mov	a,r3
	inc	a
	mov	(_TM + 0x0005),a
	sjmp	00176$
00118$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:444: else if(TM.control == configDay && TM.vectorControl == 2){
	mov	a,r2
	jz	00114$
	mov	r3,(_TM + 0x0005)
	cjne	r3,#0x02,00114$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:445: alarm.mes = 10*TM.value[TM.vectorControl];					// Atribuí o valor para a dezena do mes do alarme
	mov	a,r3
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r4,a
	mov	b,#0x0A
	mul	ab
	mov	(_alarm + 0x0001),a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:446: TM.vectorControl++;
	mov	a,r3
	inc	a
	mov	(_TM + 0x0005),a
	sjmp	00176$
00114$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:448: else if(TM.control == configDay && TM.vectorControl == 3){
	mov	a,r2
	jz	00176$
	mov	r2,(_TM + 0x0005)
	cjne	r2,#0x03,00176$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:449: alarm.mes += TM.value[TM.vectorControl];					// Atribuí o valor para a unidade do mes do alarme
	mov	a,r2
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	add	a,(_alarm + 0x0001)
	mov	(_alarm + 0x0001),a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:450: TM.control = clear;								// Volta para mostrar o horário
	mov	_TM,#0x0F
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:451: TM.vectorControl = 0;								// Reinicializa a variável
	mov	(_TM + 0x0005),#0x00
00176$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:455: if(TM.control<clear){
	cjne	r6,#0x0F,00459$
00459$:
	jnc	00205$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:456: TM.vectorControl++;
	mov	a,(_TM + 0x0005)
	inc	a
	mov	(_TM + 0x0005),a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:457: TM.control++;
	mov	a,_TM
	mov	r2,a
	inc	a
	mov	_TM,a
	ljmp	00217$
00205$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:460: if (TM.value[TM.vectorControl] == 13 && TM.control == clear)		// Se o valor digitado for 'D' e o botão não tiver sido posteriormente ativado
	mov	r2,(_TM + 0x0005)
	mov	a,r2
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	ar3,@r0
	cjne	r3,#0x0D,00201$
	mov	a,#0x0F
	cjne	a,_TM,00201$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:461: TM.control = showDay;						// Ativa leitura da Data
	mov	_TM,#0x10
	ljmp	00217$
00201$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:462: else if(TM.value[TM.vectorControl] == 13 && TM.control == showDay)	// Se o valor digitado for 'D' e a leitura da data estiver ativada
	mov	a,r2
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	ar3,@r0
	cjne	r3,#0x0D,00197$
	mov	a,#0x10
	cjne	a,_TM,00197$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:463: TM.control = clear;												// Desativa leitura da Data
	mov	_TM,#0x0F
	ljmp	00217$
00197$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:464: else if(TM.value[TM.vectorControl] == 10 && TM.control == clear) 	// Se o valor digitado for 'A' e o botao não tiver sido posteriormente ativado
	mov	a,r2
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	ar3,@r0
	cjne	r3,#0x0A,00193$
	mov	a,#0x0F
	cjne	a,_TM,00193$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:465: TM.control = showYear;						// Ativa leitura do Ano
	mov	_TM,#0x11
	ljmp	00217$
00193$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:466: else if(TM.value[TM.vectorControl] == 10 && TM.control == showYear)	// Se o valor digitado for 'A' e a leitura do Ano estiver ativada
	mov	a,r2
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	ar3,@r0
	cjne	r3,#0x0A,00189$
	mov	a,#0x11
	cjne	a,_TM,00189$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:467: TM.control = clear;												// Desativa leitura do Ano
	mov	_TM,#0x0F
	sjmp	00217$
00189$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:468: else if(TM.value[TM.vectorControl] == 14 && TM.control == clear)	// Se o valor digitado for 'E' e o botao não tiver sido posteriormente ativado
	mov	a,r2
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	ar3,@r0
	cjne	r3,#0x0E,00185$
	mov	a,#0x0F
	cjne	a,_TM,00185$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:469: TM.control = showWeek;						// Ativa leitura do dia da semana
	mov	_TM,#0x12
	sjmp	00217$
00185$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:470: else if(TM.value[TM.vectorControl] == 14 && TM.control == showWeek)	// Se o valor digitado for 'E' e a leitura do Ano estiver ativada
	mov	a,r2
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	ar3,@r0
	cjne	r3,#0x0E,00181$
	mov	a,#0x12
	cjne	a,_TM,00181$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:471: TM.control = clear;												// Desativa leitura do dia da semana
	mov	_TM,#0x0F
	sjmp	00217$
00181$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:472: else if(TM.value[TM.vectorControl] == 12 && TM.control == clear){	// Se o valor digitado for 'C' e a leitura do horário para o alarme é ativado.
	mov	a,r2
	add	a,#(_TM + 0x0001)
	mov	r0,a
	mov	ar2,@r0
	cjne	r2,#0x0C,00217$
	mov	a,#0x0F
	cjne	a,_TM,00217$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:473: TM.control = configHour;					// Atribui a configuração do horário do alarme
	mov	_TM,#0x13
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:474: TM.vectorControl = 0;						// Reinicializa a variável
	mov	(_TM + 0x0005),#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:475: TM.value[0] = 16;												// Coloca ponto no display 1
	mov	(_TM + 0x0001),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:476: TM.value[1] = 16;												// Coloca ponto no display 2
	mov	(_TM + 0x0002),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:477: TM.value[2] = 16;												// Coloca ponto no display 3
	mov	(_TM + 0x0003),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:478: TM.value[3] = 16;												// Coloca ponto no display 4
	mov	(_TM + 0x0004),#0x10
00217$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getDiaDaSemana'
;------------------------------------------------------------
;mes                       Allocated to stack - offset -3
;ano                       Allocated to stack - offset -4
;dia                       Allocated to stack - offset 1
;JND                       Allocated to registers 
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:502: unsigned char getDiaDaSemana(unsigned char dia,unsigned char mes,unsigned char ano){
;	-----------------------------------------
;	 function getDiaDaSemana
;	-----------------------------------------
_getDiaDaSemana:
	push	_bp
	mov	_bp,sp
	push	dpl
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:504: unsigned char JND =                                                     
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	a,#0x0E
	clr	c
	subb	a,r3
	mov	r5,a
	clr	a
	subb	a,r4
	mov	r6,a
	push	ar3
	push	ar4
	mov	a,#0x0C
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	push	ar5
	push	ar6
	push	ar5
	push	ar6
	mov	dptr,#0x000C
	lcall	__mulint
	mov	r7,dpl
	mov	r2,dph
	dec	sp
	dec	sp
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,r7
	add	a,r3
	mov	r3,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	mov	a,r3
	add	a,#0xfd
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	push	ar5
	push	ar6
	push	ar3
	push	ar4
	mov	dptr,#0x0099
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	lcall	__divsint
	mov	r2,dpl
	dec	sp
	dec	sp
	pop	ar6
	pop	ar5
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	mov	a,#0xC0
	add	a,r3
	mov	ar4,r5
	clr	c
	subb	a,r4
	mov	b,#0x6D
	mul	ab
	add	a,r2
	mov	r2,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	a,#0xC0
	add	a,r3
	mov	r3,a
	mov	a,#0x12
	addc	a,r4
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,r4
	subb	a,r6
	mov	r6,a
	push	ar2
	push	ar5
	push	ar6
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r3,dpl
	dec	sp
	dec	sp
	pop	ar6
	pop	ar5
	pop	ar2
	mov	a,r3
	add	a,r2
	mov	r2,a
	push	ar2
	push	ar5
	push	ar6
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r3,dpl
	dec	sp
	dec	sp
	pop	ar6
	pop	ar5
	pop	ar2
	mov	a,r2
	clr	c
	subb	a,r3
	mov	r2,a
	push	ar2
	mov	a,#0x90
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r3,dpl
	dec	sp
	dec	sp
	pop	ar2
	mov	a,r3
	add	a,r2
	add	a,#0xd3
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:513: return JND % 7;
	mov	b,#0x07
	div	ab
	mov	dpl,b
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'verificaData'
;------------------------------------------------------------
;month                     Allocated to stack - offset -3
;year                      Allocated to stack - offset -5
;day                       Allocated to registers r2 
;bissexto                  Allocated to registers r3 
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:521: unsigned char verificaData(unsigned char day, unsigned char month, unsigned int year){
;	-----------------------------------------
;	 function verificaData
;	-----------------------------------------
_verificaData:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:522: unsigned char bissexto = 0;
	mov	r3,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:524: if(year % 400 == 0 || (year % 100 != 0 && year % 4 == 0))
	push	ar2
	push	ar3
	mov	a,#0x90
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__moduint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
	mov	a,r4
	orl	a,r5
	jz	00101$
	push	ar2
	push	ar3
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__moduint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
	mov	a,r4
	orl	a,r5
	jz	00102$
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	anl	a,#0x03
	jz	00164$
	sjmp	00102$
00164$:
00101$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:525: bissexto = 1;
	mov	r3,#0x01
00102$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:527: if((day > 0 && day<=31) && (month>0 && month<=12)){
	mov	a,r2
	jnz	00165$
	ljmp	00131$
00165$:
	mov	a,#0x1F
	cjne	a,ar2,00166$
00166$:
	jnc	00167$
	ljmp	00131$
00167$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00168$
	ljmp	00131$
00168$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,#0xff - 0x0C
	jnc	00169$
	ljmp	00131$
00169$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:528: if(day == 31 && (month != 1 && month != 3 && month != 5 && month != 7 && month != 8 && month != 10 && month != 12))
	cjne	r2,#0x1F,00121$
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x01,00172$
	sjmp	00121$
00172$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x03,00173$
	sjmp	00121$
00173$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x05,00174$
	sjmp	00121$
00174$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x07,00175$
	sjmp	00121$
00175$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x08,00176$
	sjmp	00121$
00176$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x0A,00177$
	sjmp	00121$
00177$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x0C,00178$
	sjmp	00121$
00178$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:529: return 0;
	mov	dpl,#0x00
	sjmp	00135$
00121$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:530: else if(day == 30 && (month != 4 && month != 6 && month != 9 && month != 11))
	cjne	r2,#0x1E,00114$
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x04,00181$
	sjmp	00114$
00181$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x06,00182$
	sjmp	00114$
00182$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x09,00183$
	sjmp	00114$
00183$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x0B,00184$
	sjmp	00114$
00184$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:531: return 0;
	mov	dpl,#0x00
	sjmp	00135$
00114$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:532: else if(day == 29 && month == 2 && bissexto == 0)
	cjne	r2,#0x1D,00109$
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x02,00109$
	mov	a,r3
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:533: return 0;
	jnz	00109$
	mov	dpl,a
	sjmp	00135$
00109$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:534: else if(month == 2 && day>29 )
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x02,00115$
	mov	a,#0x1D
	cjne	a,ar2,00192$
00192$:
	jnc	00115$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:535: return 0;
	mov	dpl,#0x00
	sjmp	00135$
00115$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:538: return 1;	
	mov	dpl,#0x01
	sjmp	00135$
00131$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:541: return 0;
	mov	dpl,#0x00
00135$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'atualizaHora'
;------------------------------------------------------------
;mes                       Allocated to stack - offset 1
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:548: void volatile atualizaHora(){
;	-----------------------------------------
;	 function atualizaHora
;	-----------------------------------------
_atualizaHora:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0c
	mov	sp,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:550: unsigned char mes[] = {31,28,31,30,31,30,31,31,30,31,30,31}; 
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x1F
	mov	a,r0
	inc	a
	mov	r1,a
	mov	@r1,#0x1C
	mov	a,#0x02
	add	a,r0
	push	ar0
	mov	r0,a
	mov	@r0,#0x1F
	pop	ar0
	mov	a,#0x03
	add	a,r0
	push	ar0
	mov	r0,a
	mov	@r0,#0x1E
	pop	ar0
	mov	a,#0x04
	add	a,r0
	push	ar0
	mov	r0,a
	mov	@r0,#0x1F
	pop	ar0
	mov	a,#0x05
	add	a,r0
	push	ar0
	mov	r0,a
	mov	@r0,#0x1E
	pop	ar0
	mov	a,#0x06
	add	a,r0
	push	ar0
	mov	r0,a
	mov	@r0,#0x1F
	pop	ar0
	mov	a,#0x07
	add	a,r0
	push	ar0
	mov	r0,a
	mov	@r0,#0x1F
	pop	ar0
	mov	a,#0x08
	add	a,r0
	push	ar0
	mov	r0,a
	mov	@r0,#0x1E
	pop	ar0
	mov	a,#0x09
	add	a,r0
	push	ar0
	mov	r0,a
	mov	@r0,#0x1F
	pop	ar0
	mov	a,#0x0A
	add	a,r0
	push	ar0
	mov	r0,a
	mov	@r0,#0x1E
	pop	ar0
	mov	a,#0x0B
	add	a,r0
	push	ar0
	mov	r0,a
	mov	@r0,#0x1F
	pop	ar0
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:552: if(dh.ano % 400 == 0 || (dh.ano % 100 != 0 && dh.ano % 4 == 0))
	mov	r2,(_dh + 0x0002)
	mov	r3,((_dh + 0x0002) + 1)
	push	ar2
	push	ar3
	push	ar0
	push	ar1
	mov	a,#0x90
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__moduint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar3
	pop	ar2
	mov	a,r4
	orl	a,r5
	jz	00101$
	push	ar2
	push	ar3
	push	ar0
	push	ar1
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__moduint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar3
	pop	ar2
	mov	a,r4
	orl	a,r5
	jz	00102$
	mov	a,r2
	anl	a,#0x03
	jz	00124$
	sjmp	00102$
00124$:
00101$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:553: mes[1] = 29;
	mov	@r1,#0x1D
00102$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:555: dh.min++;
	mov	r4,(_dh + 0x0005)
	inc	r4
	mov	(_dh + 0x0005),r4
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:557: if(dh.min == 60){
	cjne	r4,#0x3C,00113$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:558: dh.hora++;
	mov	r4,(_dh + 0x0004)
	inc	r4
	mov	(_dh + 0x0004),r4
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:559: dh.min = 0;
	mov	(_dh + 0x0005),#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:560: if(dh.hora == 24){
	cjne	r4,#0x18,00113$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:561: dh.dia++;
	mov	r4,_dh
	inc	r4
	mov	_dh,r4
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:562: dh.hora = 0;
	mov	(_dh + 0x0004),#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:563: dh.min = 0;
	mov	(_dh + 0x0005),#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:564: if(dh.dia > mes[dh.mes - 1]){
	mov	a,(_dh + 0x0001)
	mov	r5,a
	dec	a
	add	a,r0
	mov	r0,a
	mov	a,@r0
	mov	r6,a
	cjne	a,ar4,00129$
00129$:
	jnc	00113$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:565: dh.mes++;
	inc	r5
	mov	(_dh + 0x0001),r5
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:566: dh.dia = 1;
	mov	_dh,#0x01
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:567: dh.hora = 0;
	mov	(_dh + 0x0004),#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:568: dh.min = 0;
	mov	(_dh + 0x0005),#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:569: if(dh.mes == 13){
	cjne	r5,#0x0D,00113$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:570: dh.ano++;
	inc	r2
	cjne	r2,#0x00,00133$
	inc	r3
00133$:
	mov	((_dh + 0x0002) + 0),r2
	mov	((_dh + 0x0002) + 1),r3
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:571: dh.mes = 1;
	mov	(_dh + 0x0001),#0x01
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:572: dh.dia = 1;
	mov	_dh,#0x01
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:573: dh.hora = 0;
	mov	(_dh + 0x0004),#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:574: dh.min = 0;
	mov	(_dh + 0x0005),#0x00
00113$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayTime'
;------------------------------------------------------------
;miliseconds               Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:586: void delayTime(unsigned int miliseconds){
;	-----------------------------------------
;	 function delayTime
;	-----------------------------------------
_delayTime:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:590: Timer0.flag=1;
	mov	(_Timer0 + 0x0005),#0x01
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:592: if(!Timer0.finish){
	mov	a,(_Timer0 + 0x0004)
	jnz	00103$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:593: Timer0.cycles = miliseconds/65;
	push	ar2
	push	ar3
	mov	a,#0x41
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__divuint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
	mov	(_Timer0 + 0),r4
	mov	(_Timer0 + 1),r5
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:594: Timer0.lastClock = 65535 - ((miliseconds % 65)*1000); 
	mov	a,#0x41
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__moduint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	push	ar2
	push	ar3
	mov	dptr,#0x03E8
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
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
	mov	((_Timer0 + 0x0002) + 0),r2
	mov	((_Timer0 + 0x0002) + 1),r3
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:596: TR0 = 1;
	setb	_TR0
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:597: Timer0.finish = 1;
	mov	(_Timer0 + 0x0004),#0x01
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timerMiliseconds'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:604: void volatile timerMiliseconds() __interrupt 1{ //(slide aplicmicro 11_C.pdf pg.13)
;	-----------------------------------------
;	 function timerMiliseconds
;	-----------------------------------------
_timerMiliseconds:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:606: TH0 = 0; 									// Zerar os bits mais significativos do contador
	mov	_TH0,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:607: TL0 = 0; 									// Zerar os bits menos significativos do contador
	mov	_TL0,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:608: TF0 = 0;									// Zero a flag do contador
	clr	_TF0
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:609: TR0 = 0;									// Paro timer0
	clr	_TR0
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:611: if(Timer0.cycles > 1){
	mov	r2,_Timer0
	mov	r3,(_Timer0 + 1)
	clr	c
	mov	a,#0x01
	subb	a,r2
	clr	a
	subb	a,r3
	jnc	00109$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:612: Timer0.cycles--;						// decrementa cycles
	mov	a,r2
	add	a,#0xff
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r5,a
	mov	(_Timer0 + 0),r4
	mov	(_Timer0 + 1),r5
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:613: TR0 = 1;								// inicia contador
	setb	_TR0
	sjmp	00111$
00109$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:615: else if(Timer0.cycles == 1){
	cjne	r2,#0x01,00106$
	cjne	r3,#0x00,00106$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:616: TH0 = Timer0.lastClock & 0xFF ;			// Atribui ao ultimo timer o valor dos bits mais significativos
	mov	r4,(_Timer0 + 0x0002)
	mov	_TH0,r4
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:617: TL0 = Timer0.lastClock >> 8;			// Atribui ao ultimo timer o valor dos bits menos significativos
	mov	_TL0,((_Timer0 + 0x0002) + 1)
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:618: Timer0.cycles--;						// decrementa cycles
	mov	r4,_Timer0
	mov	r5,(_Timer0 + 1)
	dec	r4
	cjne	r4,#0xff,00120$
	dec	r5
00120$:
	mov	(_Timer0 + 0),r4
	mov	(_Timer0 + 1),r5
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:619: TR0 = 1;								// inicia contador
	setb	_TR0
	sjmp	00111$
00106$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:621: else if(Timer0.cycles == 0){
	mov	a,r2
	orl	a,r3
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:622: Timer0.finish = 0;						// finish é uma flag que indica que o tempo acabou
	jnz	00111$
	mov	(_Timer0 + 0x0004),a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:623: if(TM.control>=clear)
	mov	a,#0x100 - 0x0F
	add	a,_TM
	jnc	00111$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:624: atualizaHora();
	lcall	_atualizaHora
00111$:
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'configurations'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:631: void configurations(){
;	-----------------------------------------
;	 function configurations
;	-----------------------------------------
_configurations:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:632: IE = 0x8A; 				// Habilitando interrupções, timer0 e timer1 (slide sistmicro 03_Interrupções.pdf pg.9)
	mov	_IE,#0x8A
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:633: IP = 0x02; 				// Habilitando prioridade de interrupções para timer0 (slide aplicmicro 11_C.pdf pg.13)
	mov	_IP,#0x02
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:635: TH0 = 0; 				// Zerar os bits mais significativos do temporizador TIMER0
	mov	_TH0,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:636: TL0 = 0; 				// Zerar os bits menos significativos do temporizador TIMER0
	mov	_TL0,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:638: TH1 = 0; 				// Zerar os bits mais significativos do contador TIMER1
	mov	_TH1,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:639: TL1 = 0; 				// Zerar os bits menos significativos do contador TIMER1
	mov	_TL1,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:641: TMOD = 0x01; 			// Habilitando contagem modo 16-bits (slide sistmicro 04_Timer.pdf pg.8)
	mov	_TMOD,#0x01
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:643: P1 = 0x00;				// Desligando os LEDS
	mov	_P1,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:645: dh.dia = 0;
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:646: dh.mes = 0;
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:647: dh.ano = 0;
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:648: dh.hora = 0;
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:649: dh.min = 0;
	clr a
	mov _dh,a
	mov (_dh + 0x0001),a
	mov ((_dh + 0x0002) + 0),a
	mov ((_dh + 0x0002) + 1),a
	mov (_dh + 0x0004),a
	mov (_dh + 0x0005),a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:651: TM.control = 0;
	mov	_TM,#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:652: TM.value[0] = 16;		// Coloca ponto no display 1
	mov	(_TM + 0x0001),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:653: TM.value[1] = 16;		// Coloca ponto no display 2
	mov	(_TM + 0x0002),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:654: TM.value[2] = 16;		// Coloca ponto no display 3
	mov	(_TM + 0x0003),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:655: TM.value[3] = 16;		// Coloca ponto no display 4
	mov	(_TM + 0x0004),#0x10
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'varredura'
;------------------------------------------------------------
;D2                        Allocated to stack - offset -3
;D3                        Allocated to stack - offset -4
;D4                        Allocated to stack - offset -5
;time                      Allocated to stack - offset -7
;dot                       Allocated to stack - offset -8
;D1                        Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:661: void varredura(unsigned char D1, unsigned char D2, unsigned char D3, unsigned char D4, unsigned int time, unsigned char dot){
;	-----------------------------------------
;	 function varredura
;	-----------------------------------------
_varredura:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:662: varreduraD7S(D1,D2,D3,D4,time,dot);
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r2
	lcall	_varreduraD7S
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:663: varreduraTecladoMat();	
	lcall	_varreduraTecladoMat
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resetTM'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:669: void resetTM(){
;	-----------------------------------------
;	 function resetTM
;	-----------------------------------------
_resetTM:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:670: varredura(TM.value[0], TM.value[1], TM.value[2], TM.value[3],125,0);	// Mostra os valores selecionados nos Displays
	mov	dpl,(_TM + 0x0001)
	clr	a
	push	acc
	mov	a,#0x7D
	push	acc
	clr	a
	push	acc
	push	(_TM + 0x0004)
	push	(_TM + 0x0003)
	push	(_TM + 0x0002)
	lcall	_varredura
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:671: if(!Timer0.flag)														// Se o timer não estiver funcionando
	mov	a,(_Timer0 + 0x0005)
	jnz	00102$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:672: delayTime(1000);													// Ativa o timer
	mov	dptr,#0x03E8
	lcall	_delayTime
00102$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:673: if(!Timer0.finish){														// Quando o timer acabar sua temporização
	mov	a,(_Timer0 + 0x0004)
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:674: Timer0.flag = 0;													// o timer não está mais funcionando
	jnz	00105$
	mov	(_Timer0 + 0x0005),a
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:675: TM.value[0] = 16;													// Coloca ponto no display 1
	mov	(_TM + 0x0001),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:676: TM.value[1] = 16;													// Coloca ponto no display 2
	mov	(_TM + 0x0002),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:677: TM.value[2] = 16;													// Coloca ponto no display 3
	mov	(_TM + 0x0003),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:678: TM.value[3] = 16;													// Coloca ponto no display 4
	mov	(_TM + 0x0004),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:679: TM.vectorControl = 0;												// Reinicializa variável
	mov	(_TM + 0x0005),#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:680: TM.control++;
	mov	a,_TM
	mov	r2,a
	inc	a
	mov	_TM,a
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;digits                    Allocated to stack - offset 1
;sloc0                     Allocated to stack - offset 4
;------------------------------------------------------------
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:687: void main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:690: configurations(); 																		// Atribuí as configurações
	lcall	_configurations
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:692: while(1){
00148$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:694: if(TM.control == reset1 || TM.control == reset2 || TM.control == reset3){
	mov	r2,_TM
	cjne	r2,#0x04,00175$
	sjmp	00123$
00175$:
	cjne	r2,#0x09,00176$
	sjmp	00123$
00176$:
	cjne	r2,#0x0E,00124$
00123$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:695: resetTM();
	lcall	_resetTM
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:696: if(TM.control == reset3){
	mov	a,#0x0E
	cjne	a,_TM,00179$
	sjmp	00180$
00179$:
	ljmp	00125$
00180$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:697: if(!verificaData(dh.dia,dh.mes,dh.ano)){									// Se a data colocada estiver errada, habilita para configurar novamente
	mov	dpl,_dh
	push	(_dh + 0x0002)
	push	((_dh + 0x0002) + 1)
	push	(_dh + 0x0001)
	lcall	_verificaData
	mov	r3,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	jz	00181$
	ljmp	00125$
00181$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:698: TM.value[0] = 16;														// Coloca ponto no display 1
	mov	(_TM + 0x0001),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:699: TM.value[1] = 16;														// Coloca ponto no display 2
	mov	(_TM + 0x0002),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:700: TM.value[2] = 16;														// Coloca ponto no display 3
	mov	(_TM + 0x0003),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:701: TM.value[3] = 16;														// Coloca ponto no display 4
	mov	(_TM + 0x0004),#0x10
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:702: TM.vectorControl = 0;
	mov	(_TM + 0x0005),#0x00
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:703: TM.control = day1;														// Habilita colocar a data novamente
	mov	_TM,#0x05
	ljmp	00125$
00124$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:707: else if(TM.control == clear) 														// Se estiver em CONTROL = CLEAR
	cjne	r2,#0x0F,00121$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:708: varredura(dh.hora / 10,dh.hora % 10,dh.min / 10,dh.min%10,125,1);		// Mostra o horário
	mov	b,#0x0A
	mov	a,(_dh + 0x0005)
	div	ab
	mov	r3,b
	mov	b,#0x0A
	mov	a,(_dh + 0x0005)
	div	ab
	mov	r4,a
	mov	b,#0x0A
	mov	a,(_dh + 0x0004)
	div	ab
	mov	r5,b
	mov	b,#0x0A
	mov	a,(_dh + 0x0004)
	div	ab
	mov	dpl,a
	mov	a,#0x01
	push	acc
	mov	a,#0x7D
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar5
	lcall	_varredura
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ljmp	00125$
00121$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:710: else if(TM.control == showDay)
	cjne	r2,#0x10,00118$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:711: varredura(dh.dia / 10,dh.dia % 10,dh.mes / 10,dh.mes%10,125,1);			// Mostra o dia e mes
	mov	b,#0x0A
	mov	a,(_dh + 0x0001)
	div	ab
	mov	r3,b
	mov	b,#0x0A
	mov	a,(_dh + 0x0001)
	div	ab
	mov	r4,a
	mov	b,#0x0A
	mov	a,_dh
	div	ab
	mov	r5,b
	mov	b,#0x0A
	mov	a,_dh
	div	ab
	mov	dpl,a
	mov	a,#0x01
	push	acc
	mov	a,#0x7D
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar5
	lcall	_varredura
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ljmp	00125$
00118$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:712: else if(TM.control == showYear)
	cjne	r2,#0x11,00186$
	sjmp	00187$
00186$:
	ljmp	00115$
00187$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:713: varredura(dh.ano/1000,(dh.ano%1000) / 100,(dh.ano%100) / 10,dh.ano%10,125,0);	// Mostra o ano
	mov	r3,(_dh + 0x0002)
	mov	r4,((_dh + 0x0002) + 1)
	push	ar3
	push	ar4
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r4
	lcall	__moduint
	mov	r5,dpl
	dec	sp
	dec	sp
	pop	ar4
	pop	ar3
	push	ar3
	push	ar4
	push	ar5
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r4
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
	mov	r6,dpl
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	mov	ar2,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,r3
	mov	dph,r4
	lcall	__moduint
	mov	r7,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__divuint
	mov	r6,dpl
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	push	ar5
	push	ar6
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,r3
	mov	dph,r4
	lcall	__divuint
	mov	r3,dpl
	dec	sp
	dec	sp
	pop	ar6
	pop	ar5
	pop	ar2
	mov	dpl,r3
	clr	a
	push	acc
	mov	a,#0x7D
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar2
	push	ar6
	lcall	_varredura
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ljmp	00125$
00115$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:714: else if(TM.control == showWeek){
	cjne	r2,#0x12,00188$
	sjmp	00189$
00188$:
	ljmp	00112$
00189$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:715: digits = digitosLetter7S(getDiaDaSemana(dh.dia,dh.mes,dh.ano));			// Pega os digitos do dia da semana para atribuir ao display
	mov	r3,(_dh + 0x0002)
	mov	dpl,_dh
	push	ar3
	push	(_dh + 0x0001)
	lcall	_getDiaDaSemana
	dec	sp
	dec	sp
	lcall	_digitosLetter7S
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r0,_bp
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:716: if(digits[3] == 0)
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	lcall	__gptrget
	jnz	00106$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:717: digits[3] = 127;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	mov	a,#0x7F
	lcall	__gptrput
00106$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:719: varredura(digits[0],digits[1],digits[2],digits[3],125,0);			// Mostra o dia da semana
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	lcall	__gptrget
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	clr	a
	push	acc
	mov	a,#0x7D
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar3
	push	ar4
	mov	dpl,r5
	lcall	_varredura
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	sjmp	00125$
00112$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:722: else if(TM.control < clear || TM.control == configHour || TM.control == configDay)
	cjne	r2,#0x0F,00191$
00191$:
	jc	00107$
	cjne	r2,#0x13,00193$
	sjmp	00107$
00193$:
	cjne	r2,#0x14,00125$
00107$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:723: varredura(TM.value[0], TM.value[1], TM.value[2], TM.value[3],125,0);		// Mostra o número que está sendo pressionado
	mov	dpl,(_TM + 0x0001)
	clr	a
	push	acc
	mov	a,#0x7D
	push	acc
	clr	a
	push	acc
	push	(_TM + 0x0004)
	push	(_TM + 0x0003)
	push	(_TM + 0x0002)
	lcall	_varredura
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00125$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:725: if(TM.control>= clear){																// O tempo começa a se contado depois que configura todas as opção de horário, dia, mes e ano. Para começar depois de setar o horário, trocar para TM.control >=reset1 aqui e na linha 620 do código.
	mov	a,#0x100 - 0x0F
	add	a,_TM
	jnc	00133$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:726: if(!Timer0.flag)																// Se o timer não estiver ativo
	mov	a,(_Timer0 + 0x0005)
	jnz	00129$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:727: delayTime(2000);															// Inicializa a contagem de 1 minuto
	mov	dptr,#0x07D0
	lcall	_delayTime
00129$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:728: if(!Timer0.finish)																// Quando a contagem acabar
	mov	a,(_Timer0 + 0x0004)
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:729: Timer0.flag = 0;															// O timer não estará mais ativo
	jnz	00133$
	mov	(_Timer0 + 0x0005),a
00133$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:732: if(TM.control >= clear && TM.control != configHour && TM.control != configDay && 
	mov	r2,_TM
	cjne	r2,#0x0F,00199$
00199$:
	jc	00139$
	cjne	r2,#0x13,00201$
	sjmp	00139$
00201$:
	cjne	r2,#0x14,00202$
	sjmp	00139$
00202$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:733: (alarm.hora == dh.hora && alarm.min == dh.min && alarm.dia == dh.dia && dh.mes == dh.mes)){	// Se o dia e o horário do alarme corresponder ao dia e horário atual de dh, acende os LEDS
	mov	a,(_dh + 0x0004)
	cjne	a,(_alarm + 0x0004),00139$
	mov	a,(_dh + 0x0005)
	cjne	a,(_alarm + 0x0005),00139$
	mov	a,_dh
	cjne	a,_alarm,00139$
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:734: P1 += 1;
	inc	_P1
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:735: if(P1 > 15)
	mov	a,#0x0F
	cjne	a,_P1,00209$
00209$:
	jc	00210$
	ljmp	00148$
00210$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:736: P1 = 1;
	mov	_P1,#0x01
	ljmp	00148$
00139$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:738: else if(alarm.min != dh.min)	// Quando os horários de alarme e dh não coincidirem os LEDS apagam
	mov	a,(_dh + 0x0005)
	cjne	a,(_alarm + 0x0005),00211$
	ljmp	00148$
00211$:
;	C:\Users\ufabc\Desktop\PROJET~1\PROJET~1.C:739: P1 = 0;
	mov	_P1,#0x00
	ljmp	00148$
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
