;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
; This file was generated Mon Aug 19 00:21:24 2019
;--------------------------------------------------------
	.module LCD
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _setPlayerCursor
	.globl _setChar
	.globl _setCursorAt
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
	.globl _LCD_putSCharAt_PARM_4
	.globl _LCD_putSCharAt_PARM_3
	.globl _LCD_putSCharAt_PARM_2
	.globl _LCD_putCharAt_PARM_3
	.globl _LCD_putCharAt_PARM_2
	.globl _LCD_putText_PARM_3
	.globl _LCD_putText_PARM_2
	.globl _LCD_putTextAt_PARM_3
	.globl _LCD_putTextAt_PARM_2
	.globl _setPlayerCursor_PARM_4
	.globl _setPlayerCursor_PARM_3
	.globl _setPlayerCursor_PARM_2
	.globl _configMap_PARM_2
	.globl _setCursorAt_PARM_2
	.globl _Timer0
	.globl _map
	.globl _SCmap
	.globl _LCDconfig
	.globl _printMap
	.globl _setMap1CGram
	.globl _setMap2CGram
	.globl _setMap3CGram
	.globl _setMap4CGram
	.globl _setMap5CGram
	.globl _configMap
	.globl _setCursorHomeAtLine
	.globl _clearLCD
	.globl _LCD_putTextAt
	.globl _LCD_putText
	.globl _LCD_putCharAt
	.globl _LCD_putSCharAt
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
_LCD_putText_sloc0_1_0:
	.ds 1
_LCD_putText_sloc1_1_0:
	.ds 1
_LCD_putText_sloc2_1_0:
	.ds 1
_LCD_putText_sloc3_1_0:
	.ds 1
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
_setCursorAt_PARM_2:
	.ds 1
_setCursorAt_line_1_1:
	.ds 1
_setChar_chr_1_1:
	.ds 1
_printMap_col_1_1:
	.ds 1
_setMap1CGram_c0_1_1:
	.ds 8
_setMap1CGram_c1_1_1:
	.ds 8
_setMap1CGram_c2_1_1:
	.ds 8
_setMap1CGram_c3_1_1:
	.ds 8
_setMap1CGram_c4_1_1:
	.ds 8
_setMap1CGram_c5_1_1:
	.ds 8
_setMap1CGram_c6_1_1:
	.ds 8
_setMap1CGram_c7_1_1:
	.ds 8
_setMap2CGram_c0_1_1:
	.ds 8
_setMap2CGram_c1_1_1:
	.ds 8
_setMap2CGram_c2_1_1:
	.ds 8
_setMap2CGram_c3_1_1:
	.ds 8
_setMap2CGram_c4_1_1:
	.ds 8
_setMap2CGram_c5_1_1:
	.ds 8
_setMap2CGram_c6_1_1:
	.ds 8
_setMap2CGram_c7_1_1:
	.ds 8
_setMap3CGram_c0_1_1:
	.ds 8
_setMap3CGram_c1_1_1:
	.ds 8
_setMap3CGram_c2_1_1:
	.ds 8
_setMap3CGram_c3_1_1:
	.ds 8
_setMap3CGram_c4_1_1:
	.ds 8
_setMap3CGram_c5_1_1:
	.ds 8
_setMap3CGram_c6_1_1:
	.ds 8
_setMap3CGram_c7_1_1:
	.ds 8
_setMap4CGram_c0_1_1:
	.ds 8
_setMap4CGram_c1_1_1:
	.ds 8
_setMap4CGram_c2_1_1:
	.ds 8
_setMap4CGram_c3_1_1:
	.ds 8
_setMap4CGram_c4_1_1:
	.ds 8
_setMap4CGram_c5_1_1:
	.ds 8
_setMap4CGram_c6_1_1:
	.ds 8
_setMap4CGram_c7_1_1:
	.ds 8
_setMap5CGram_c0_1_1:
	.ds 8
_setMap5CGram_c1_1_1:
	.ds 8
_setMap5CGram_c2_1_1:
	.ds 8
_setMap5CGram_c3_1_1:
	.ds 8
_setMap5CGram_c4_1_1:
	.ds 8
_setMap5CGram_c5_1_1:
	.ds 8
_setMap5CGram_c6_1_1:
	.ds 8
_setMap5CGram_c7_1_1:
	.ds 8
_configMap_PARM_2:
	.ds 1
_configMap_pline_1_1:
	.ds 1
_setCursorHomeAtLine_line_1_1:
	.ds 1
_setPlayerCursor_PARM_2:
	.ds 1
_setPlayerCursor_PARM_3:
	.ds 1
_setPlayerCursor_PARM_4:
	.ds 1
_setPlayerCursor_pline_1_1:
	.ds 1
_LCD_putTextAt_PARM_2:
	.ds 1
_LCD_putTextAt_PARM_3:
	.ds 1
_LCD_putTextAt_text_1_1:
	.ds 3
_LCD_putTextAt_col_1_1:
	.ds 1
_LCD_putTextAt_txt_1_1:
	.ds 17
_LCD_putText_PARM_2:
	.ds 1
_LCD_putText_PARM_3:
	.ds 2
_LCD_putText_text_1_1:
	.ds 3
_LCD_putText_control_1_1:
	.ds 1
_LCD_putText_txt_1_1:
	.ds 50
_LCD_putCharAt_PARM_2:
	.ds 1
_LCD_putCharAt_PARM_3:
	.ds 1
_LCD_putCharAt_chr_1_1:
	.ds 1
_LCD_putSCharAt_PARM_2:
	.ds 1
_LCD_putSCharAt_PARM_3:
	.ds 1
_LCD_putSCharAt_PARM_4:
	.ds 1
_LCD_putSCharAt_sline_1_1:
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
;Allocation info for local variables in function 'LCDconfig'
;------------------------------------------------------------
;------------------------------------------------------------
;	LCD.c:7: void LCDconfig(){	
;	-----------------------------------------
;	 function LCDconfig
;	-----------------------------------------
_LCDconfig:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	LCD.c:8: winstLCD = clearDisp;						// Atribuindo instrucao
	mov	dptr,#_winstLCD
	mov	a,#0x01
	movx	@dptr,a
;	LCD.c:9: delay(10,0);								// Delay 10 microsegundos
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	lcall	_delay
;	LCD.c:10: winstLCD = configFunc;						// Atribuindo instrucao
	mov	dptr,#_winstLCD
	mov	a,#0x3F
	movx	@dptr,a
;	LCD.c:11: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	lcall	_delay
;	LCD.c:12: winstLCD = entryModeShift;					// Atribuindo instrucao
	mov	dptr,#_winstLCD
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:13: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	lcall	_delay
;	LCD.c:14: winstLCD = onoffControl;					// Atribuindo instrucao
	mov	dptr,#_winstLCD
	mov	a,#0x0C
	movx	@dptr,a
;	LCD.c:15: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setCursorAt'
;------------------------------------------------------------
;col                       Allocated with name '_setCursorAt_PARM_2'
;line                      Allocated with name '_setCursorAt_line_1_1'
;------------------------------------------------------------
;	LCD.c:18: void setCursorAt(unsigned char line, unsigned char col){
;	-----------------------------------------
;	 function setCursorAt
;	-----------------------------------------
_setCursorAt:
	mov	a,dpl
	mov	dptr,#_setCursorAt_line_1_1
	movx	@dptr,a
;	LCD.c:19: if(line == 1)
	mov	dptr,#_setCursorAt_line_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00110$
;	LCD.c:20: winstLCD = cursorHomeL1 + (col-1);
	mov	dptr,#_setCursorAt_PARM_2
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_winstLCD
	mov	a,#0x7F
	add	a,r3
	movx	@dptr,a
	sjmp	00111$
00110$:
;	LCD.c:21: else if(line == 2)
	cjne	r2,#0x02,00107$
;	LCD.c:22: winstLCD = cursorHomeL2 + (col-1);
	mov	dptr,#_setCursorAt_PARM_2
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_winstLCD
	mov	a,#0xBF
	add	a,r3
	movx	@dptr,a
	sjmp	00111$
00107$:
;	LCD.c:23: else if(line == 3)
	cjne	r2,#0x03,00104$
;	LCD.c:24: winstLCD = cursorHomeL3 + (col-1);
	mov	dptr,#_setCursorAt_PARM_2
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_winstLCD
	mov	a,#0x8F
	add	a,r3
	movx	@dptr,a
	sjmp	00111$
00104$:
;	LCD.c:25: else if(line == 4)
	cjne	r2,#0x04,00111$
;	LCD.c:26: winstLCD = cursorHomeL4 + (col-1);
	mov	dptr,#_setCursorAt_PARM_2
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_winstLCD
	mov	a,#0xCF
	add	a,r2
	movx	@dptr,a
00111$:
;	LCD.c:28: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setChar'
;------------------------------------------------------------
;chr                       Allocated with name '_setChar_chr_1_1'
;------------------------------------------------------------
;	LCD.c:31: void setChar(char chr){
;	-----------------------------------------
;	 function setChar
;	-----------------------------------------
_setChar:
	mov	a,dpl
	mov	dptr,#_setChar_chr_1_1
	movx	@dptr,a
;	LCD.c:32: wdataLCD = chr;
	mov	dptr,#_setChar_chr_1_1
	movx	a,@dptr
	mov	dptr,#_wdataLCD
	movx	@dptr,a
;	LCD.c:33: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'printMap'
;------------------------------------------------------------
;row                       Allocated with name '_printMap_row_1_1'
;col                       Allocated with name '_printMap_col_1_1'
;------------------------------------------------------------
;	LCD.c:36: void printMap(){
;	-----------------------------------------
;	 function printMap
;	-----------------------------------------
_printMap:
;	LCD.c:39: for(row = 0; row < 4; row++){
	mov	r2,#0x00
00105$:
	cjne	r2,#0x04,00116$
00116$:
	jnc	00109$
;	LCD.c:40: for(col = 0 ;col<16;col++){
	mov	dptr,#_printMap_col_1_1
	clr	a
	movx	@dptr,a
	mov	a,r2
	inc	a
	mov	r3,a
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r4,a
00101$:
	mov	dptr,#_printMap_col_1_1
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x10,00118$
00118$:
	jnc	00107$
;	LCD.c:41: setCursorAt(row+1, col+1);
	mov	a,r5
	inc	a
	mov	r6,a
	mov	dptr,#_setCursorAt_PARM_2
	movx	@dptr,a
	mov	dpl,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_setCursorAt
	pop	ar6
	pop	ar5
	pop	ar4
;	LCD.c:42: setChar((map[row][col].schar) - 1);
	mov	a,r4
	add	a,#_map
	mov	r7,a
	clr	a
	addc	a,#(_map >> 8)
	mov	r0,a
	mov	a,r5
	add	a,r7
	mov	dpl,a
	clr	a
	addc	a,r0
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	dec	r5
	mov	dpl,r5
	push	ar4
	push	ar6
	lcall	_setChar
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;	LCD.c:40: for(col = 0 ;col<16;col++){
	mov	dptr,#_printMap_col_1_1
	mov	a,r6
	movx	@dptr,a
	sjmp	00101$
00107$:
;	LCD.c:39: for(row = 0; row < 4; row++){
	inc	r2
	sjmp	00105$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setMap1CGram'
;------------------------------------------------------------
;n                         Allocated with name '_setMap1CGram_n_1_1'
;m                         Allocated with name '_setMap1CGram_m_1_1'
;c0                        Allocated with name '_setMap1CGram_c0_1_1'
;c1                        Allocated with name '_setMap1CGram_c1_1_1'
;c2                        Allocated with name '_setMap1CGram_c2_1_1'
;c3                        Allocated with name '_setMap1CGram_c3_1_1'
;c4                        Allocated with name '_setMap1CGram_c4_1_1'
;c5                        Allocated with name '_setMap1CGram_c5_1_1'
;c6                        Allocated with name '_setMap1CGram_c6_1_1'
;c7                        Allocated with name '_setMap1CGram_c7_1_1'
;------------------------------------------------------------
;	LCD.c:47: void setMap1CGram(){
;	-----------------------------------------
;	 function setMap1CGram
;	-----------------------------------------
_setMap1CGram:
;	LCD.c:50: unsigned char c0[] =  {0,0,0,0,0,0,0,0};
	mov	dptr,#_setMap1CGram_c0_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c0_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c0_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c0_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c0_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c0_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c0_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c0_1_1 + 0x0007)
	movx	@dptr,a
;	LCD.c:51: unsigned char c1[] =  {0x1F,0x10,0x1F,0x10,0x13,0x12,0x12,0x12};
	mov	dptr,#_setMap1CGram_c1_1_1
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c1_1_1 + 0x0001)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c1_1_1 + 0x0002)
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c1_1_1 + 0x0003)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c1_1_1 + 0x0004)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c1_1_1 + 0x0005)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c1_1_1 + 0x0006)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c1_1_1 + 0x0007)
	mov	a,#0x12
	movx	@dptr,a
;	LCD.c:52: unsigned char c2[] =  {0x1F,0x00,0x0E,0x04,0x1E,0x04,0x04,0x04};
	mov	dptr,#_setMap1CGram_c2_1_1
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c2_1_1 + 0x0001)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c2_1_1 + 0x0002)
	mov	a,#0x0E
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c2_1_1 + 0x0003)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c2_1_1 + 0x0004)
	mov	a,#0x1E
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c2_1_1 + 0x0005)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c2_1_1 + 0x0006)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c2_1_1 + 0x0007)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:53: unsigned char c3[] =  {0x1F,0x01,0x0D,0x09,0x18,0x09,0x19,0x09};
	mov	dptr,#_setMap1CGram_c3_1_1
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c3_1_1 + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c3_1_1 + 0x0002)
	mov	a,#0x0D
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c3_1_1 + 0x0003)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c3_1_1 + 0x0004)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c3_1_1 + 0x0005)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c3_1_1 + 0x0006)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c3_1_1 + 0x0007)
	mov	a,#0x09
	movx	@dptr,a
;	LCD.c:54: unsigned char c4[] =  {0x17,0x10,0x15,0x1C,0x04,0x0C,0x05,0x05};
	mov	dptr,#_setMap1CGram_c4_1_1
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c4_1_1 + 0x0001)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c4_1_1 + 0x0002)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c4_1_1 + 0x0003)
	mov	a,#0x1C
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c4_1_1 + 0x0004)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c4_1_1 + 0x0005)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c4_1_1 + 0x0006)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c4_1_1 + 0x0007)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:55: unsigned char c5[] =  {0x12,0x10,0x12,0x02,0x12,0x12,0x12,0x12};
	mov	dptr,#_setMap1CGram_c5_1_1
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c5_1_1 + 0x0001)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c5_1_1 + 0x0002)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c5_1_1 + 0x0003)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c5_1_1 + 0x0004)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c5_1_1 + 0x0005)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c5_1_1 + 0x0006)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c5_1_1 + 0x0007)
	mov	a,#0x12
	movx	@dptr,a
;	LCD.c:56: unsigned char c6[] =  {0x16,0x16,0x13,0x16,0x14,0x17,0x10,0x1F};
	mov	dptr,#_setMap1CGram_c6_1_1
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c6_1_1 + 0x0001)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c6_1_1 + 0x0002)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c6_1_1 + 0x0003)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c6_1_1 + 0x0004)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c6_1_1 + 0x0005)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c6_1_1 + 0x0006)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c6_1_1 + 0x0007)
	mov	a,#0x1F
	movx	@dptr,a
;	LCD.c:57: unsigned char c7[] =  {0x15,0x15,0x11,0x04,0x15,0x15,0x14,0x1F};
	mov	dptr,#_setMap1CGram_c7_1_1
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c7_1_1 + 0x0001)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c7_1_1 + 0x0002)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c7_1_1 + 0x0003)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c7_1_1 + 0x0004)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c7_1_1 + 0x0005)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c7_1_1 + 0x0006)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_setMap1CGram_c7_1_1 + 0x0007)
	mov	a,#0x1F
	movx	@dptr,a
;	LCD.c:59: for(n = 0; n < 8 ;n++){
	mov	r2,#0x00
00101$:
	cjne	r2,#0x08,00124$
00124$:
	jc	00125$
	ljmp	00104$
00125$:
;	LCD.c:60: SCmap[0].adds[n] = c0[n];
	mov	a,r2
	add	a,#_SCmap
	mov	r3,a
	clr	a
	addc	a,#(_SCmap >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap1CGram_c0_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap1CGram_c0_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:61: SCmap[1].adds[n] = c1[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0008)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0008) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap1CGram_c1_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap1CGram_c1_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:62: SCmap[2].adds[n] = c2[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0010)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0010) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap1CGram_c2_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap1CGram_c2_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:63: SCmap[3].adds[n] = c3[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0018)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0018) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap1CGram_c3_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap1CGram_c3_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:64: SCmap[4].adds[n] = c4[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0020)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0020) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap1CGram_c4_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap1CGram_c4_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:65: SCmap[5].adds[n] = c5[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0028)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0028) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap1CGram_c5_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap1CGram_c5_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:66: SCmap[6].adds[n] = c6[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0030)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0030) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap1CGram_c6_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap1CGram_c6_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:67: SCmap[7].adds[n] = c7[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0038)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0038) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap1CGram_c7_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap1CGram_c7_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:59: for(n = 0; n < 8 ;n++){
	inc	r2
	ljmp	00101$
00104$:
;	LCD.c:70: winstLCD = setCgramAddress;    				 // Atribuindo primeiro endereço da CGRAM
	mov	dptr,#_winstLCD
	mov	a,#0x40
	movx	@dptr,a
;	LCD.c:71: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	lcall	_delay
;	LCD.c:73: for(m = 0;m< 8; m++){
	mov	r2,#0x00
00109$:
	cjne	r2,#0x08,00126$
00126$:
	jnc	00112$
;	LCD.c:74: for(n = 0; n < 8 ;n++){
	mov	a,r2
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r3,a
	mov	r4,#0x00
00105$:
	cjne	r4,#0x08,00128$
00128$:
	jnc	00111$
;	LCD.c:75: wdataLCD = SCmap[m].adds[n];                // Atribuindo escrita
	mov	a,r3
	add	a,#_SCmap
	mov	r5,a
	clr	a
	addc	a,#(_SCmap >> 8)
	mov	r6,a
	mov	a,r4
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_wdataLCD
	movx	@dptr,a
;	LCD.c:76: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	push	ar2
	push	ar3
	push	ar4
	lcall	_delay
	pop	ar4
	pop	ar3
	pop	ar2
;	LCD.c:74: for(n = 0; n < 8 ;n++){
	inc	r4
	sjmp	00105$
00111$:
;	LCD.c:73: for(m = 0;m< 8; m++){
	inc	r2
	sjmp	00109$
00112$:
;	LCD.c:80: map[0][0].schar = 2;
	mov	dptr,#_map
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:81: map[0][1].schar = 3;
	mov	dptr,#(_map + 0x0001)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:82: map[0][2].schar = 3;
	mov	dptr,#(_map + 0x0002)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:83: map[0][3].schar = 3;
	mov	dptr,#(_map + 0x0003)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:84: map[0][4].schar = 4;
	mov	dptr,#(_map + 0x0004)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:85: map[0][5].schar = 4;
	mov	dptr,#(_map + 0x0005)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:86: map[0][6].schar = 5;
	mov	dptr,#(_map + 0x0006)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:87: map[0][7].schar = 2;
	mov	dptr,#(_map + 0x0007)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:88: map[0][8].schar = 4;
	mov	dptr,#(_map + 0x0008)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:89: map[0][9].schar = 5;
	mov	dptr,#(_map + 0x0009)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:90: map[0][10].schar = 3;
	mov	dptr,#(_map + 0x000a)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:91: map[0][11].schar = 3;
	mov	dptr,#(_map + 0x000b)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:92: map[0][12].schar = 3;
	mov	dptr,#(_map + 0x000c)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:93: map[0][13].schar = 3;
	mov	dptr,#(_map + 0x000d)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:94: map[0][14].schar = 4;
	mov	dptr,#(_map + 0x000e)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:95: map[0][15].schar = 4;
	mov	dptr,#(_map + 0x000f)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:97: map[1][0].schar = 6;
	mov	dptr,#(_map + 0x0010)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:98: map[1][1].schar = 2;
	mov	dptr,#(_map + 0x0011)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:99: map[1][2].schar = 4;
	mov	dptr,#(_map + 0x0012)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:100: map[1][3].schar = 2;
	mov	dptr,#(_map + 0x0013)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:101: map[1][4].schar = 3;
	mov	dptr,#(_map + 0x0014)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:102: map[1][5].schar = 5;
	mov	dptr,#(_map + 0x0015)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:103: map[1][6].schar = 6;
	mov	dptr,#(_map + 0x0016)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:104: map[1][7].schar = 2;
	mov	dptr,#(_map + 0x0017)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:105: map[1][8].schar = 3;
	mov	dptr,#(_map + 0x0018)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:106: map[1][9].schar = 6;
	mov	dptr,#(_map + 0x0019)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:107: map[1][10].schar = 4;
	mov	dptr,#(_map + 0x001a)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:108: map[1][11].schar = 3;
	mov	dptr,#(_map + 0x001b)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:109: map[1][12].schar = 3;
	mov	dptr,#(_map + 0x001c)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:110: map[1][13].schar = 6;
	mov	dptr,#(_map + 0x001d)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:111: map[1][14].schar = 3;
	mov	dptr,#(_map + 0x001e)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:112: map[1][15].schar = 4;
	mov	dptr,#(_map + 0x001f)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:114: map[2][0].schar = 2;
	mov	dptr,#(_map + 0x0020)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:115: map[2][1].schar = 5;
	mov	dptr,#(_map + 0x0021)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:116: map[2][2].schar = 7;
	mov	dptr,#(_map + 0x0022)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:117: map[2][3].schar = 6;
	mov	dptr,#(_map + 0x0023)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:118: map[2][4].schar = 6;
	mov	dptr,#(_map + 0x0024)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:119: map[2][5].schar = 3;
	mov	dptr,#(_map + 0x0025)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:120: map[2][6].schar = 5;
	mov	dptr,#(_map + 0x0026)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:121: map[2][7].schar = 3;
	mov	dptr,#(_map + 0x0027)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:122: map[2][8].schar = 5;
	mov	dptr,#(_map + 0x0028)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:123: map[2][9].schar = 5;
	mov	dptr,#(_map + 0x0029)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:124: map[2][10].schar = 3;
	mov	dptr,#(_map + 0x002a)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:125: map[2][11].schar = 5;
	mov	dptr,#(_map + 0x002b)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:126: map[2][12].schar = 2;
	mov	dptr,#(_map + 0x002c)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:127: map[2][13].schar = 5;
	mov	dptr,#(_map + 0x002d)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:128: map[2][14].schar = 3;
	mov	dptr,#(_map + 0x002e)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:129: map[2][15].schar = 2;
	mov	dptr,#(_map + 0x002f)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:131: map[3][0].schar = 7;
	mov	dptr,#(_map + 0x0030)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:132: map[3][1].schar = 8;
	mov	dptr,#(_map + 0x0031)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:133: map[3][2].schar = 8;
	mov	dptr,#(_map + 0x0032)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:134: map[3][3].schar = 8;
	mov	dptr,#(_map + 0x0033)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:135: map[3][4].schar = 8;
	mov	dptr,#(_map + 0x0034)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:136: map[3][5].schar = 8;
	mov	dptr,#(_map + 0x0035)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:137: map[3][6].schar = 8;
	mov	dptr,#(_map + 0x0036)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:138: map[3][7].schar = 8;
	mov	dptr,#(_map + 0x0037)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:139: map[3][8].schar = 7;
	mov	dptr,#(_map + 0x0038)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:140: map[3][9].schar = 2;
	mov	dptr,#(_map + 0x0039)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:141: map[3][10].schar = 8;
	mov	dptr,#(_map + 0x003a)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:142: map[3][11].schar = 8;
	mov	dptr,#(_map + 0x003b)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:143: map[3][12].schar = 8;
	mov	dptr,#(_map + 0x003c)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:144: map[3][13].schar = 8;
	mov	dptr,#(_map + 0x003d)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:145: map[3][14].schar = 7;
	mov	dptr,#(_map + 0x003e)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:146: map[3][15].schar = 7;
	mov	dptr,#(_map + 0x003f)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:148: printMap();
	ljmp	_printMap
;------------------------------------------------------------
;Allocation info for local variables in function 'setMap2CGram'
;------------------------------------------------------------
;n                         Allocated with name '_setMap2CGram_n_1_1'
;m                         Allocated with name '_setMap2CGram_m_1_1'
;c0                        Allocated with name '_setMap2CGram_c0_1_1'
;c1                        Allocated with name '_setMap2CGram_c1_1_1'
;c2                        Allocated with name '_setMap2CGram_c2_1_1'
;c3                        Allocated with name '_setMap2CGram_c3_1_1'
;c4                        Allocated with name '_setMap2CGram_c4_1_1'
;c5                        Allocated with name '_setMap2CGram_c5_1_1'
;c6                        Allocated with name '_setMap2CGram_c6_1_1'
;c7                        Allocated with name '_setMap2CGram_c7_1_1'
;------------------------------------------------------------
;	LCD.c:152: void setMap2CGram(){
;	-----------------------------------------
;	 function setMap2CGram
;	-----------------------------------------
_setMap2CGram:
;	LCD.c:155: unsigned char c0[] =  {0,0,0,0,0,0,0,0};
	mov	dptr,#_setMap2CGram_c0_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c0_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c0_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c0_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c0_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c0_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c0_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c0_1_1 + 0x0007)
	movx	@dptr,a
;	LCD.c:156: unsigned char c1[] =  {0x1B,0x10,0x17,0x10,0x13,0x14,0x02,0x11};
	mov	dptr,#_setMap2CGram_c1_1_1
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c1_1_1 + 0x0001)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c1_1_1 + 0x0002)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c1_1_1 + 0x0003)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c1_1_1 + 0x0004)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c1_1_1 + 0x0005)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c1_1_1 + 0x0006)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c1_1_1 + 0x0007)
	mov	a,#0x11
	movx	@dptr,a
;	LCD.c:157: unsigned char c2[] =  {0x1F,0x00,0x17,0x12,0x02,0x0B,0x08,0x05};
	mov	dptr,#_setMap2CGram_c2_1_1
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c2_1_1 + 0x0001)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c2_1_1 + 0x0002)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c2_1_1 + 0x0003)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c2_1_1 + 0x0004)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c2_1_1 + 0x0005)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c2_1_1 + 0x0006)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c2_1_1 + 0x0007)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:158: unsigned char c3[] =  {0x1F,0x01,0x15,0x05,0x04,0x1D,0x00,0x13};
	mov	dptr,#_setMap2CGram_c3_1_1
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c3_1_1 + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c3_1_1 + 0x0002)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c3_1_1 + 0x0003)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c3_1_1 + 0x0004)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c3_1_1 + 0x0005)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c3_1_1 + 0x0006)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c3_1_1 + 0x0007)
	mov	a,#0x13
	movx	@dptr,a
;	LCD.c:159: unsigned char c4[] =  {0x1D,0x15,0x11,0x15,0x15,0x14,0x12,0x19};
	mov	dptr,#_setMap2CGram_c4_1_1
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c4_1_1 + 0x0001)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c4_1_1 + 0x0002)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c4_1_1 + 0x0003)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c4_1_1 + 0x0004)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c4_1_1 + 0x0005)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c4_1_1 + 0x0006)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c4_1_1 + 0x0007)
	mov	a,#0x19
	movx	@dptr,a
;	LCD.c:160: unsigned char c5[] =  {0x1C,0x1D,0x01,0x03,0x17,0x03,0x1B,0x1A};
	mov	dptr,#_setMap2CGram_c5_1_1
	mov	a,#0x1C
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c5_1_1 + 0x0001)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c5_1_1 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c5_1_1 + 0x0003)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c5_1_1 + 0x0004)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c5_1_1 + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c5_1_1 + 0x0006)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c5_1_1 + 0x0007)
	mov	a,#0x1A
	movx	@dptr,a
;	LCD.c:161: unsigned char c6[] =  {0x1D,0x11,0x13,0x17,0x14,0x15,0x10,0x1F};
	mov	dptr,#_setMap2CGram_c6_1_1
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c6_1_1 + 0x0001)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c6_1_1 + 0x0002)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c6_1_1 + 0x0003)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c6_1_1 + 0x0004)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c6_1_1 + 0x0005)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c6_1_1 + 0x0006)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c6_1_1 + 0x0007)
	mov	a,#0x1F
	movx	@dptr,a
;	LCD.c:162: unsigned char c7[] =  {0x06,0x0F,0x0F,0x00,0x03,0x03,0x03,0x1F};
	mov	dptr,#_setMap2CGram_c7_1_1
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c7_1_1 + 0x0001)
	mov	a,#0x0F
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c7_1_1 + 0x0002)
	mov	a,#0x0F
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c7_1_1 + 0x0003)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c7_1_1 + 0x0004)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c7_1_1 + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c7_1_1 + 0x0006)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_setMap2CGram_c7_1_1 + 0x0007)
	mov	a,#0x1F
	movx	@dptr,a
;	LCD.c:164: for(n = 0; n < 8 ;n++){
	mov	r2,#0x00
00101$:
	cjne	r2,#0x08,00124$
00124$:
	jc	00125$
	ljmp	00104$
00125$:
;	LCD.c:165: SCmap[0].adds[n] = c0[n];
	mov	a,r2
	add	a,#_SCmap
	mov	r3,a
	clr	a
	addc	a,#(_SCmap >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap2CGram_c0_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap2CGram_c0_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:166: SCmap[1].adds[n] = c1[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0008)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0008) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap2CGram_c1_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap2CGram_c1_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:167: SCmap[2].adds[n] = c2[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0010)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0010) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap2CGram_c2_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap2CGram_c2_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:168: SCmap[3].adds[n] = c3[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0018)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0018) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap2CGram_c3_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap2CGram_c3_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:169: SCmap[4].adds[n] = c4[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0020)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0020) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap2CGram_c4_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap2CGram_c4_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:170: SCmap[5].adds[n] = c5[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0028)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0028) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap2CGram_c5_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap2CGram_c5_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:171: SCmap[6].adds[n] = c6[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0030)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0030) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap2CGram_c6_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap2CGram_c6_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:172: SCmap[7].adds[n] = c7[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0038)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0038) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap2CGram_c7_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap2CGram_c7_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:164: for(n = 0; n < 8 ;n++){
	inc	r2
	ljmp	00101$
00104$:
;	LCD.c:175: winstLCD = setCgramAddress;    				 // Atribuindo primeiro endereço da CGRAM
	mov	dptr,#_winstLCD
	mov	a,#0x40
	movx	@dptr,a
;	LCD.c:176: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	lcall	_delay
;	LCD.c:178: for(m = 0;m< 8; m++){
	mov	r2,#0x00
00109$:
	cjne	r2,#0x08,00126$
00126$:
	jnc	00112$
;	LCD.c:179: for(n = 0; n < 8 ;n++){
	mov	a,r2
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r3,a
	mov	r4,#0x00
00105$:
	cjne	r4,#0x08,00128$
00128$:
	jnc	00111$
;	LCD.c:180: wdataLCD = SCmap[m].adds[n];                // Atribuindo escrita
	mov	a,r3
	add	a,#_SCmap
	mov	r5,a
	clr	a
	addc	a,#(_SCmap >> 8)
	mov	r6,a
	mov	a,r4
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_wdataLCD
	movx	@dptr,a
;	LCD.c:181: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	push	ar2
	push	ar3
	push	ar4
	lcall	_delay
	pop	ar4
	pop	ar3
	pop	ar2
;	LCD.c:179: for(n = 0; n < 8 ;n++){
	inc	r4
	sjmp	00105$
00111$:
;	LCD.c:178: for(m = 0;m< 8; m++){
	inc	r2
	sjmp	00109$
00112$:
;	LCD.c:185: map[0][0].schar = 2;
	mov	dptr,#_map
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:186: map[0][1].schar = 3;
	mov	dptr,#(_map + 0x0001)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:187: map[0][2].schar = 4;
	mov	dptr,#(_map + 0x0002)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:188: map[0][3].schar = 3;
	mov	dptr,#(_map + 0x0003)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:189: map[0][4].schar = 3;
	mov	dptr,#(_map + 0x0004)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:190: map[0][5].schar = 3;
	mov	dptr,#(_map + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:191: map[0][6].schar = 5;
	mov	dptr,#(_map + 0x0006)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:192: map[0][7].schar = 4;
	mov	dptr,#(_map + 0x0007)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:193: map[0][8].schar = 4;
	mov	dptr,#(_map + 0x0008)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:194: map[0][9].schar = 4;
	mov	dptr,#(_map + 0x0009)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:195: map[0][10].schar = 2;
	mov	dptr,#(_map + 0x000a)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:196: map[0][11].schar = 3;
	mov	dptr,#(_map + 0x000b)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:197: map[0][12].schar = 4;
	mov	dptr,#(_map + 0x000c)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:198: map[0][13].schar = 3;
	mov	dptr,#(_map + 0x000d)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:199: map[0][14].schar = 3;
	mov	dptr,#(_map + 0x000e)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:200: map[0][15].schar = 4;
	mov	dptr,#(_map + 0x000f)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:202: map[1][0].schar = 5;
	mov	dptr,#(_map + 0x0010)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:203: map[1][1].schar = 6;
	mov	dptr,#(_map + 0x0011)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:204: map[1][2].schar = 8;
	mov	dptr,#(_map + 0x0012)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:205: map[1][3].schar = 2;
	mov	dptr,#(_map + 0x0013)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:206: map[1][4].schar = 5;
	mov	dptr,#(_map + 0x0014)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:207: map[1][5].schar = 5;
	mov	dptr,#(_map + 0x0015)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:208: map[1][6].schar = 6;
	mov	dptr,#(_map + 0x0016)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:209: map[1][7].schar = 8;
	mov	dptr,#(_map + 0x0017)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:210: map[1][8].schar = 8;
	mov	dptr,#(_map + 0x0018)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:211: map[1][9].schar = 2;
	mov	dptr,#(_map + 0x0019)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:212: map[1][10].schar = 6;
	mov	dptr,#(_map + 0x001a)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:213: map[1][11].schar = 5;
	mov	dptr,#(_map + 0x001b)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:214: map[1][12].schar = 3;
	mov	dptr,#(_map + 0x001c)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:215: map[1][13].schar = 6;
	mov	dptr,#(_map + 0x001d)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:216: map[1][14].schar = 4;
	mov	dptr,#(_map + 0x001e)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:217: map[1][15].schar = 5;
	mov	dptr,#(_map + 0x001f)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:219: map[2][0].schar = 5;
	mov	dptr,#(_map + 0x0020)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:220: map[2][1].schar = 3;
	mov	dptr,#(_map + 0x0021)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:221: map[2][2].schar = 4;
	mov	dptr,#(_map + 0x0022)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:222: map[2][3].schar = 8;
	mov	dptr,#(_map + 0x0023)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:223: map[2][4].schar = 4;
	mov	dptr,#(_map + 0x0024)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:224: map[2][5].schar = 3;
	mov	dptr,#(_map + 0x0025)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:225: map[2][6].schar = 2;
	mov	dptr,#(_map + 0x0026)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:226: map[2][7].schar = 3;
	mov	dptr,#(_map + 0x0027)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:227: map[2][8].schar = 6;
	mov	dptr,#(_map + 0x0028)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:228: map[2][9].schar = 5;
	mov	dptr,#(_map + 0x0029)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:229: map[2][10].schar = 6;
	mov	dptr,#(_map + 0x002a)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:230: map[2][11].schar = 3;
	mov	dptr,#(_map + 0x002b)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:231: map[2][12].schar = 4;
	mov	dptr,#(_map + 0x002c)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:232: map[2][13].schar = 2;
	mov	dptr,#(_map + 0x002d)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:233: map[2][14].schar = 6;
	mov	dptr,#(_map + 0x002e)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:234: map[2][15].schar = 8;
	mov	dptr,#(_map + 0x002f)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:236: map[3][0].schar = 7;
	mov	dptr,#(_map + 0x0030)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:237: map[3][1].schar = 2;
	mov	dptr,#(_map + 0x0031)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:238: map[3][2].schar = 8;
	mov	dptr,#(_map + 0x0032)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:239: map[3][3].schar = 8;
	mov	dptr,#(_map + 0x0033)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:240: map[3][4].schar = 4;
	mov	dptr,#(_map + 0x0034)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:241: map[3][5].schar = 6;
	mov	dptr,#(_map + 0x0035)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:242: map[3][6].schar = 7;
	mov	dptr,#(_map + 0x0036)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:243: map[3][7].schar = 7;
	mov	dptr,#(_map + 0x0037)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:244: map[3][8].schar = 8;
	mov	dptr,#(_map + 0x0038)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:245: map[3][9].schar = 7;
	mov	dptr,#(_map + 0x0039)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:246: map[3][10].schar = 4;
	mov	dptr,#(_map + 0x003a)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:247: map[3][11].schar = 7;
	mov	dptr,#(_map + 0x003b)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:248: map[3][12].schar = 8;
	mov	dptr,#(_map + 0x003c)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:249: map[3][13].schar = 8;
	mov	dptr,#(_map + 0x003d)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:250: map[3][14].schar = 7;
	mov	dptr,#(_map + 0x003e)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:251: map[3][15].schar = 4;
	mov	dptr,#(_map + 0x003f)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:253: printMap();
	ljmp	_printMap
;------------------------------------------------------------
;Allocation info for local variables in function 'setMap3CGram'
;------------------------------------------------------------
;n                         Allocated with name '_setMap3CGram_n_1_1'
;m                         Allocated with name '_setMap3CGram_m_1_1'
;c0                        Allocated with name '_setMap3CGram_c0_1_1'
;c1                        Allocated with name '_setMap3CGram_c1_1_1'
;c2                        Allocated with name '_setMap3CGram_c2_1_1'
;c3                        Allocated with name '_setMap3CGram_c3_1_1'
;c4                        Allocated with name '_setMap3CGram_c4_1_1'
;c5                        Allocated with name '_setMap3CGram_c5_1_1'
;c6                        Allocated with name '_setMap3CGram_c6_1_1'
;c7                        Allocated with name '_setMap3CGram_c7_1_1'
;------------------------------------------------------------
;	LCD.c:257: void setMap3CGram(){
;	-----------------------------------------
;	 function setMap3CGram
;	-----------------------------------------
_setMap3CGram:
;	LCD.c:260: unsigned char c0[] =  {0,0,0,0,0,0,0,0};
	mov	dptr,#_setMap3CGram_c0_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c0_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c0_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c0_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c0_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c0_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c0_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c0_1_1 + 0x0007)
	movx	@dptr,a
;	LCD.c:261: unsigned char c1[] =  {0x1B,0x1B,0x18,0x19,0x1A,0x11,0x1A,0x19};
	mov	dptr,#_setMap3CGram_c1_1_1
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c1_1_1 + 0x0001)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c1_1_1 + 0x0002)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c1_1_1 + 0x0003)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c1_1_1 + 0x0004)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c1_1_1 + 0x0005)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c1_1_1 + 0x0006)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c1_1_1 + 0x0007)
	mov	a,#0x19
	movx	@dptr,a
;	LCD.c:262: unsigned char c2[] =  {0x1F,0x08,0x0A,0x0A,0x0A,0x0A,0x02,0x1F};
	mov	dptr,#_setMap3CGram_c2_1_1
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c2_1_1 + 0x0001)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c2_1_1 + 0x0002)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c2_1_1 + 0x0003)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c2_1_1 + 0x0004)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c2_1_1 + 0x0005)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c2_1_1 + 0x0006)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c2_1_1 + 0x0007)
	mov	a,#0x1F
	movx	@dptr,a
;	LCD.c:263: unsigned char c3[] =  {0x1B,0x11,0x15,0x05,0x14,0x15,0x11,0x1B};
	mov	dptr,#_setMap3CGram_c3_1_1
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c3_1_1 + 0x0001)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c3_1_1 + 0x0002)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c3_1_1 + 0x0003)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c3_1_1 + 0x0004)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c3_1_1 + 0x0005)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c3_1_1 + 0x0006)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c3_1_1 + 0x0007)
	mov	a,#0x1B
	movx	@dptr,a
;	LCD.c:264: unsigned char c4[] =  {0x19,0x13,0x17,0x10,0x03,0x1B,0x19,0x13};
	mov	dptr,#_setMap3CGram_c4_1_1
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c4_1_1 + 0x0001)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c4_1_1 + 0x0002)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c4_1_1 + 0x0003)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c4_1_1 + 0x0004)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c4_1_1 + 0x0005)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c4_1_1 + 0x0006)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c4_1_1 + 0x0007)
	mov	a,#0x13
	movx	@dptr,a
;	LCD.c:265: unsigned char c5[] =  {0x12,0x1B,0x1A,0x09,0x00,0x11,0x11,0x1B};
	mov	dptr,#_setMap3CGram_c5_1_1
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c5_1_1 + 0x0001)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c5_1_1 + 0x0002)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c5_1_1 + 0x0003)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c5_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c5_1_1 + 0x0005)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c5_1_1 + 0x0006)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c5_1_1 + 0x0007)
	mov	a,#0x1B
	movx	@dptr,a
;	LCD.c:266: unsigned char c6[] =  {0x12,0x17,0x10,0x12,0x15,0x14,0x13,0x1F};
	mov	dptr,#_setMap3CGram_c6_1_1
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c6_1_1 + 0x0001)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c6_1_1 + 0x0002)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c6_1_1 + 0x0003)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c6_1_1 + 0x0004)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c6_1_1 + 0x0005)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c6_1_1 + 0x0006)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c6_1_1 + 0x0007)
	mov	a,#0x1F
	movx	@dptr,a
;	LCD.c:267: unsigned char c7[] =  {0x1B,0x11,0x15,0x00,0x15,0x00,0x15,0x1B};
	mov	dptr,#_setMap3CGram_c7_1_1
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c7_1_1 + 0x0001)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c7_1_1 + 0x0002)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c7_1_1 + 0x0003)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c7_1_1 + 0x0004)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c7_1_1 + 0x0005)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c7_1_1 + 0x0006)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap3CGram_c7_1_1 + 0x0007)
	mov	a,#0x1B
	movx	@dptr,a
;	LCD.c:270: for(n = 0; n < 8 ;n++){
	mov	r2,#0x00
00101$:
	cjne	r2,#0x08,00124$
00124$:
	jc	00125$
	ljmp	00104$
00125$:
;	LCD.c:271: SCmap[0].adds[n] = c0[n];
	mov	a,r2
	add	a,#_SCmap
	mov	r3,a
	clr	a
	addc	a,#(_SCmap >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap3CGram_c0_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap3CGram_c0_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:272: SCmap[1].adds[n] = c1[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0008)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0008) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap3CGram_c1_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap3CGram_c1_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:273: SCmap[2].adds[n] = c2[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0010)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0010) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap3CGram_c2_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap3CGram_c2_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:274: SCmap[3].adds[n] = c3[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0018)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0018) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap3CGram_c3_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap3CGram_c3_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:275: SCmap[4].adds[n] = c4[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0020)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0020) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap3CGram_c4_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap3CGram_c4_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:276: SCmap[5].adds[n] = c5[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0028)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0028) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap3CGram_c5_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap3CGram_c5_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:277: SCmap[6].adds[n] = c6[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0030)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0030) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap3CGram_c6_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap3CGram_c6_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:278: SCmap[7].adds[n] = c7[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0038)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0038) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap3CGram_c7_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap3CGram_c7_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:270: for(n = 0; n < 8 ;n++){
	inc	r2
	ljmp	00101$
00104$:
;	LCD.c:281: winstLCD = setCgramAddress;    				 // Atribuindo primeiro endereço da CGRAM
	mov	dptr,#_winstLCD
	mov	a,#0x40
	movx	@dptr,a
;	LCD.c:282: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	lcall	_delay
;	LCD.c:284: for(m = 0;m< 8; m++){
	mov	r2,#0x00
00109$:
	cjne	r2,#0x08,00126$
00126$:
	jnc	00112$
;	LCD.c:285: for(n = 0; n < 8 ;n++){
	mov	a,r2
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r3,a
	mov	r4,#0x00
00105$:
	cjne	r4,#0x08,00128$
00128$:
	jnc	00111$
;	LCD.c:286: wdataLCD = SCmap[m].adds[n];                // Atribuindo escrita
	mov	a,r3
	add	a,#_SCmap
	mov	r5,a
	clr	a
	addc	a,#(_SCmap >> 8)
	mov	r6,a
	mov	a,r4
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_wdataLCD
	movx	@dptr,a
;	LCD.c:287: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	push	ar2
	push	ar3
	push	ar4
	lcall	_delay
	pop	ar4
	pop	ar3
	pop	ar2
;	LCD.c:285: for(n = 0; n < 8 ;n++){
	inc	r4
	sjmp	00105$
00111$:
;	LCD.c:284: for(m = 0;m< 8; m++){
	inc	r2
	sjmp	00109$
00112$:
;	LCD.c:291: map[0][0].schar = 2;
	mov	dptr,#_map
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:292: map[0][1].schar = 3;
	mov	dptr,#(_map + 0x0001)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:293: map[0][2].schar = 7;
	mov	dptr,#(_map + 0x0002)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:294: map[0][3].schar = 2;
	mov	dptr,#(_map + 0x0003)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:295: map[0][4].schar = 4;
	mov	dptr,#(_map + 0x0004)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:296: map[0][5].schar = 3;
	mov	dptr,#(_map + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:297: map[0][6].schar = 3;
	mov	dptr,#(_map + 0x0006)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:298: map[0][7].schar = 6;
	mov	dptr,#(_map + 0x0007)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:299: map[0][8].schar = 8;
	mov	dptr,#(_map + 0x0008)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:300: map[0][9].schar = 8;
	mov	dptr,#(_map + 0x0009)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:301: map[0][10].schar = 2;
	mov	dptr,#(_map + 0x000a)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:302: map[0][11].schar = 8;
	mov	dptr,#(_map + 0x000b)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:303: map[0][12].schar = 2;
	mov	dptr,#(_map + 0x000c)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:304: map[0][13].schar = 4;
	mov	dptr,#(_map + 0x000d)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:305: map[0][14].schar = 8;
	mov	dptr,#(_map + 0x000e)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:306: map[0][15].schar = 8;
	mov	dptr,#(_map + 0x000f)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:308: map[1][0].schar = 3;
	mov	dptr,#(_map + 0x0010)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:309: map[1][1].schar = 4;
	mov	dptr,#(_map + 0x0011)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:310: map[1][2].schar = 5;
	mov	dptr,#(_map + 0x0012)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:311: map[1][3].schar = 2;
	mov	dptr,#(_map + 0x0013)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:312: map[1][4].schar = 5;
	mov	dptr,#(_map + 0x0014)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:313: map[1][5].schar = 4;
	mov	dptr,#(_map + 0x0015)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:314: map[1][6].schar = 6;
	mov	dptr,#(_map + 0x0016)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:315: map[1][7].schar = 2;
	mov	dptr,#(_map + 0x0017)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:316: map[1][8].schar = 5;
	mov	dptr,#(_map + 0x0018)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:317: map[1][9].schar = 6;
	mov	dptr,#(_map + 0x0019)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:318: map[1][10].schar = 4;
	mov	dptr,#(_map + 0x001a)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:319: map[1][11].schar = 6;
	mov	dptr,#(_map + 0x001b)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:320: map[1][12].schar = 3;
	mov	dptr,#(_map + 0x001c)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:321: map[1][13].schar = 6;
	mov	dptr,#(_map + 0x001d)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:322: map[1][14].schar = 7;
	mov	dptr,#(_map + 0x001e)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:323: map[1][15].schar = 4;
	mov	dptr,#(_map + 0x001f)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:325: map[2][0].schar = 3;
	mov	dptr,#(_map + 0x0020)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:326: map[2][1].schar = 6;
	mov	dptr,#(_map + 0x0021)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:327: map[2][2].schar = 2;
	mov	dptr,#(_map + 0x0022)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:328: map[2][3].schar = 4;
	mov	dptr,#(_map + 0x0023)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:329: map[2][4].schar = 6;
	mov	dptr,#(_map + 0x0024)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:330: map[2][5].schar = 5;
	mov	dptr,#(_map + 0x0025)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:331: map[2][6].schar = 2;
	mov	dptr,#(_map + 0x0026)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:332: map[2][7].schar = 4;
	mov	dptr,#(_map + 0x0027)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:333: map[2][8].schar = 5;
	mov	dptr,#(_map + 0x0028)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:334: map[2][9].schar = 5;
	mov	dptr,#(_map + 0x0029)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:335: map[2][10].schar = 6;
	mov	dptr,#(_map + 0x002a)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:336: map[2][11].schar = 4;
	mov	dptr,#(_map + 0x002b)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:337: map[2][12].schar = 2;
	mov	dptr,#(_map + 0x002c)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:338: map[2][13].schar = 5;
	mov	dptr,#(_map + 0x002d)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:339: map[2][14].schar = 3;
	mov	dptr,#(_map + 0x002e)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:340: map[2][15].schar = 7;
	mov	dptr,#(_map + 0x002f)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:342: map[3][0].schar = 7;
	mov	dptr,#(_map + 0x0030)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:343: map[3][1].schar = 8;
	mov	dptr,#(_map + 0x0031)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:344: map[3][2].schar = 4;
	mov	dptr,#(_map + 0x0032)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:345: map[3][3].schar = 3;
	mov	dptr,#(_map + 0x0033)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:346: map[3][4].schar = 7;
	mov	dptr,#(_map + 0x0034)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:347: map[3][5].schar = 8;
	mov	dptr,#(_map + 0x0035)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:348: map[3][6].schar = 8;
	mov	dptr,#(_map + 0x0036)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:349: map[3][7].schar = 3;
	mov	dptr,#(_map + 0x0037)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:350: map[3][8].schar = 6;
	mov	dptr,#(_map + 0x0038)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:351: map[3][9].schar = 3;
	mov	dptr,#(_map + 0x0039)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:352: map[3][10].schar = 7;
	mov	dptr,#(_map + 0x003a)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:353: map[3][11].schar = 8;
	mov	dptr,#(_map + 0x003b)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:354: map[3][12].schar = 6;
	mov	dptr,#(_map + 0x003c)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:355: map[3][13].schar = 7;
	mov	dptr,#(_map + 0x003d)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:356: map[3][14].schar = 2;
	mov	dptr,#(_map + 0x003e)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:357: map[3][15].schar = 7;
	mov	dptr,#(_map + 0x003f)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:359: printMap();
	ljmp	_printMap
;------------------------------------------------------------
;Allocation info for local variables in function 'setMap4CGram'
;------------------------------------------------------------
;n                         Allocated with name '_setMap4CGram_n_1_1'
;m                         Allocated with name '_setMap4CGram_m_1_1'
;c0                        Allocated with name '_setMap4CGram_c0_1_1'
;c1                        Allocated with name '_setMap4CGram_c1_1_1'
;c2                        Allocated with name '_setMap4CGram_c2_1_1'
;c3                        Allocated with name '_setMap4CGram_c3_1_1'
;c4                        Allocated with name '_setMap4CGram_c4_1_1'
;c5                        Allocated with name '_setMap4CGram_c5_1_1'
;c6                        Allocated with name '_setMap4CGram_c6_1_1'
;c7                        Allocated with name '_setMap4CGram_c7_1_1'
;------------------------------------------------------------
;	LCD.c:363: void setMap4CGram(){
;	-----------------------------------------
;	 function setMap4CGram
;	-----------------------------------------
_setMap4CGram:
;	LCD.c:366: unsigned char c0[] =  {0,0,0,0,0,0,0,0};
	mov	dptr,#_setMap4CGram_c0_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c0_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c0_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c0_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c0_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c0_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c0_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c0_1_1 + 0x0007)
	movx	@dptr,a
;	LCD.c:367: unsigned char c1[] =  {0x1F,0x19,0x15,0x11,0x14,0x15,0x12,0x1A};
	mov	dptr,#_setMap4CGram_c1_1_1
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c1_1_1 + 0x0001)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c1_1_1 + 0x0002)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c1_1_1 + 0x0003)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c1_1_1 + 0x0004)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c1_1_1 + 0x0005)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c1_1_1 + 0x0006)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c1_1_1 + 0x0007)
	mov	a,#0x1A
	movx	@dptr,a
;	LCD.c:368: unsigned char c2[] =  {0x1F,0x01,0x05,0x08,0x11,0x05,0x09,0x12};
	mov	dptr,#_setMap4CGram_c2_1_1
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c2_1_1 + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c2_1_1 + 0x0002)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c2_1_1 + 0x0003)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c2_1_1 + 0x0004)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c2_1_1 + 0x0005)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c2_1_1 + 0x0006)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c2_1_1 + 0x0007)
	mov	a,#0x12
	movx	@dptr,a
;	LCD.c:369: unsigned char c3[] =  {0x1B,0x11,0x00,0x1B,0x11,0x00,0x11,0x1B};
	mov	dptr,#_setMap4CGram_c3_1_1
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c3_1_1 + 0x0001)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c3_1_1 + 0x0002)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c3_1_1 + 0x0003)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c3_1_1 + 0x0004)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c3_1_1 + 0x0005)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c3_1_1 + 0x0006)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c3_1_1 + 0x0007)
	mov	a,#0x1B
	movx	@dptr,a
;	LCD.c:370: unsigned char c4[] =  {0x12,0x0A,0x09,0x04,0x19,0x03,0x19,0x0B};
	mov	dptr,#_setMap4CGram_c4_1_1
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c4_1_1 + 0x0001)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c4_1_1 + 0x0002)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c4_1_1 + 0x0003)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c4_1_1 + 0x0004)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c4_1_1 + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c4_1_1 + 0x0006)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c4_1_1 + 0x0007)
	mov	a,#0x0B
	movx	@dptr,a
;	LCD.c:371: unsigned char c5[] =  {0x12,0x16,0x13,0x18,0x12,0x16,0x13,0x1B};
	mov	dptr,#_setMap4CGram_c5_1_1
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c5_1_1 + 0x0001)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c5_1_1 + 0x0002)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c5_1_1 + 0x0003)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c5_1_1 + 0x0004)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c5_1_1 + 0x0005)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c5_1_1 + 0x0006)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c5_1_1 + 0x0007)
	mov	a,#0x1B
	movx	@dptr,a
;	LCD.c:372: unsigned char c6[] =  {0x1A,0x11,0x15,0x14,0x12,0x15,0x10,0x1F};
	mov	dptr,#_setMap4CGram_c6_1_1
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c6_1_1 + 0x0001)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c6_1_1 + 0x0002)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c6_1_1 + 0x0003)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c6_1_1 + 0x0004)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c6_1_1 + 0x0005)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c6_1_1 + 0x0006)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c6_1_1 + 0x0007)
	mov	a,#0x1F
	movx	@dptr,a
;	LCD.c:373: unsigned char c7[] =  {0x13,0x05,0x09,0x09,0x05,0x15,0x01,0x1F};
	mov	dptr,#_setMap4CGram_c7_1_1
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c7_1_1 + 0x0001)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c7_1_1 + 0x0002)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c7_1_1 + 0x0003)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c7_1_1 + 0x0004)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c7_1_1 + 0x0005)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c7_1_1 + 0x0006)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_setMap4CGram_c7_1_1 + 0x0007)
	mov	a,#0x1F
	movx	@dptr,a
;	LCD.c:375: for(n = 0; n < 8 ;n++){
	mov	r2,#0x00
00101$:
	cjne	r2,#0x08,00124$
00124$:
	jc	00125$
	ljmp	00104$
00125$:
;	LCD.c:376: SCmap[0].adds[n] = c0[n];
	mov	a,r2
	add	a,#_SCmap
	mov	r3,a
	clr	a
	addc	a,#(_SCmap >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap4CGram_c0_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap4CGram_c0_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:377: SCmap[1].adds[n] = c1[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0008)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0008) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap4CGram_c1_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap4CGram_c1_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:378: SCmap[2].adds[n] = c2[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0010)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0010) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap4CGram_c2_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap4CGram_c2_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:379: SCmap[3].adds[n] = c3[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0018)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0018) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap4CGram_c3_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap4CGram_c3_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:380: SCmap[4].adds[n] = c4[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0020)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0020) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap4CGram_c4_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap4CGram_c4_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:381: SCmap[5].adds[n] = c5[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0028)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0028) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap4CGram_c5_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap4CGram_c5_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:382: SCmap[6].adds[n] = c6[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0030)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0030) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap4CGram_c6_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap4CGram_c6_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:383: SCmap[7].adds[n] = c7[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0038)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0038) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap4CGram_c7_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap4CGram_c7_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:375: for(n = 0; n < 8 ;n++){
	inc	r2
	ljmp	00101$
00104$:
;	LCD.c:386: winstLCD = setCgramAddress;    				 // Atribuindo primeiro endereço da CGRAM
	mov	dptr,#_winstLCD
	mov	a,#0x40
	movx	@dptr,a
;	LCD.c:387: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	lcall	_delay
;	LCD.c:389: for(m = 0;m< 8; m++){
	mov	r2,#0x00
00109$:
	cjne	r2,#0x08,00126$
00126$:
	jnc	00112$
;	LCD.c:390: for(n = 0; n < 8 ;n++){
	mov	a,r2
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r3,a
	mov	r4,#0x00
00105$:
	cjne	r4,#0x08,00128$
00128$:
	jnc	00111$
;	LCD.c:391: wdataLCD = SCmap[m].adds[n];                // Atribuindo escrita
	mov	a,r3
	add	a,#_SCmap
	mov	r5,a
	clr	a
	addc	a,#(_SCmap >> 8)
	mov	r6,a
	mov	a,r4
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_wdataLCD
	movx	@dptr,a
;	LCD.c:392: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	push	ar2
	push	ar3
	push	ar4
	lcall	_delay
	pop	ar4
	pop	ar3
	pop	ar2
;	LCD.c:390: for(n = 0; n < 8 ;n++){
	inc	r4
	sjmp	00105$
00111$:
;	LCD.c:389: for(m = 0;m< 8; m++){
	inc	r2
	sjmp	00109$
00112$:
;	LCD.c:396: map[0][0].schar = 2;
	mov	dptr,#_map
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:397: map[0][1].schar = 8;
	mov	dptr,#(_map + 0x0001)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:398: map[0][2].schar = 3;
	mov	dptr,#(_map + 0x0002)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:399: map[0][3].schar = 2;
	mov	dptr,#(_map + 0x0003)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:400: map[0][4].schar = 3;
	mov	dptr,#(_map + 0x0004)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:401: map[0][5].schar = 3;
	mov	dptr,#(_map + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:402: map[0][6].schar = 2;
	mov	dptr,#(_map + 0x0006)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:403: map[0][7].schar = 7;
	mov	dptr,#(_map + 0x0007)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:404: map[0][8].schar = 7;
	mov	dptr,#(_map + 0x0008)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:405: map[0][9].schar = 2;
	mov	dptr,#(_map + 0x0009)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:406: map[0][10].schar = 7;
	mov	dptr,#(_map + 0x000a)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:407: map[0][11].schar = 8;
	mov	dptr,#(_map + 0x000b)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:408: map[0][12].schar = 8;
	mov	dptr,#(_map + 0x000c)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:409: map[0][13].schar = 4;
	mov	dptr,#(_map + 0x000d)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:410: map[0][14].schar = 8;
	mov	dptr,#(_map + 0x000e)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:411: map[0][15].schar = 2;
	mov	dptr,#(_map + 0x000f)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:413: map[1][0].schar = 6;
	mov	dptr,#(_map + 0x0010)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:414: map[1][1].schar = 5;
	mov	dptr,#(_map + 0x0011)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:415: map[1][2].schar = 6;
	mov	dptr,#(_map + 0x0012)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:416: map[1][3].schar = 4;
	mov	dptr,#(_map + 0x0013)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:417: map[1][4].schar = 5;
	mov	dptr,#(_map + 0x0014)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:418: map[1][5].schar = 4;
	mov	dptr,#(_map + 0x0015)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:419: map[1][6].schar = 4;
	mov	dptr,#(_map + 0x0016)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:420: map[1][7].schar = 4;
	mov	dptr,#(_map + 0x0017)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:421: map[1][8].schar = 3;
	mov	dptr,#(_map + 0x0018)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:422: map[1][9].schar = 6;
	mov	dptr,#(_map + 0x0019)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:423: map[1][10].schar = 4;
	mov	dptr,#(_map + 0x001a)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:424: map[1][11].schar = 6;
	mov	dptr,#(_map + 0x001b)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:425: map[1][12].schar = 5;
	mov	dptr,#(_map + 0x001c)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:426: map[1][13].schar = 3;
	mov	dptr,#(_map + 0x001d)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:427: map[1][14].schar = 4;
	mov	dptr,#(_map + 0x001e)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:428: map[1][15].schar = 7;
	mov	dptr,#(_map + 0x001f)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:430: map[2][0].schar = 6;
	mov	dptr,#(_map + 0x0020)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:431: map[2][1].schar = 4;
	mov	dptr,#(_map + 0x0021)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:432: map[2][2].schar = 5;
	mov	dptr,#(_map + 0x0022)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:433: map[2][3].schar = 6;
	mov	dptr,#(_map + 0x0023)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:434: map[2][4].schar = 4;
	mov	dptr,#(_map + 0x0024)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:435: map[2][5].schar = 5;
	mov	dptr,#(_map + 0x0025)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:436: map[2][6].schar = 5;
	mov	dptr,#(_map + 0x0026)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:437: map[2][7].schar = 7;
	mov	dptr,#(_map + 0x0027)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:438: map[2][8].schar = 6;
	mov	dptr,#(_map + 0x0028)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:439: map[2][9].schar = 4;
	mov	dptr,#(_map + 0x0029)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:440: map[2][10].schar = 6;
	mov	dptr,#(_map + 0x002a)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:441: map[2][11].schar = 4;
	mov	dptr,#(_map + 0x002b)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:442: map[2][12].schar = 3;
	mov	dptr,#(_map + 0x002c)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:443: map[2][13].schar = 5;
	mov	dptr,#(_map + 0x002d)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:444: map[2][14].schar = 3;
	mov	dptr,#(_map + 0x002e)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:445: map[2][15].schar = 8;
	mov	dptr,#(_map + 0x002f)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:447: map[3][0].schar = 7;
	mov	dptr,#(_map + 0x0030)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:448: map[3][1].schar = 6;
	mov	dptr,#(_map + 0x0031)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:449: map[3][2].schar = 7;
	mov	dptr,#(_map + 0x0032)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:450: map[3][3].schar = 3;
	mov	dptr,#(_map + 0x0033)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:451: map[3][4].schar = 5;
	mov	dptr,#(_map + 0x0034)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:452: map[3][5].schar = 8;
	mov	dptr,#(_map + 0x0035)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:453: map[3][6].schar = 7;
	mov	dptr,#(_map + 0x0036)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:454: map[3][7].schar = 7;
	mov	dptr,#(_map + 0x0037)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:455: map[3][8].schar = 8;
	mov	dptr,#(_map + 0x0038)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:456: map[3][9].schar = 6;
	mov	dptr,#(_map + 0x0039)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:457: map[3][10].schar = 7;
	mov	dptr,#(_map + 0x003a)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:458: map[3][11].schar = 8;
	mov	dptr,#(_map + 0x003b)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:459: map[3][12].schar = 6;
	mov	dptr,#(_map + 0x003c)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:460: map[3][13].schar = 7;
	mov	dptr,#(_map + 0x003d)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:461: map[3][14].schar = 5;
	mov	dptr,#(_map + 0x003e)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:462: map[3][15].schar = 8;
	mov	dptr,#(_map + 0x003f)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:464: printMap();
	ljmp	_printMap
;------------------------------------------------------------
;Allocation info for local variables in function 'setMap5CGram'
;------------------------------------------------------------
;n                         Allocated with name '_setMap5CGram_n_1_1'
;m                         Allocated with name '_setMap5CGram_m_1_1'
;c0                        Allocated with name '_setMap5CGram_c0_1_1'
;c1                        Allocated with name '_setMap5CGram_c1_1_1'
;c2                        Allocated with name '_setMap5CGram_c2_1_1'
;c3                        Allocated with name '_setMap5CGram_c3_1_1'
;c4                        Allocated with name '_setMap5CGram_c4_1_1'
;c5                        Allocated with name '_setMap5CGram_c5_1_1'
;c6                        Allocated with name '_setMap5CGram_c6_1_1'
;c7                        Allocated with name '_setMap5CGram_c7_1_1'
;------------------------------------------------------------
;	LCD.c:468: void setMap5CGram(){
;	-----------------------------------------
;	 function setMap5CGram
;	-----------------------------------------
_setMap5CGram:
;	LCD.c:471: unsigned char c0[] =  {0,0,0,0,0,0,0,0};
	mov	dptr,#_setMap5CGram_c0_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c0_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c0_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c0_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c0_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c0_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c0_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c0_1_1 + 0x0007)
	movx	@dptr,a
;	LCD.c:472: unsigned char c1[] =  {0x1F,0x19,0x15,0x11,0x14,0x15,0x12,0x1A};
	mov	dptr,#_setMap5CGram_c1_1_1
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c1_1_1 + 0x0001)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c1_1_1 + 0x0002)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c1_1_1 + 0x0003)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c1_1_1 + 0x0004)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c1_1_1 + 0x0005)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c1_1_1 + 0x0006)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c1_1_1 + 0x0007)
	mov	a,#0x1A
	movx	@dptr,a
;	LCD.c:473: unsigned char c2[] =  {0x1F,0x01,0x05,0x08,0x11,0x05,0x09,0x12};
	mov	dptr,#_setMap5CGram_c2_1_1
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c2_1_1 + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c2_1_1 + 0x0002)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c2_1_1 + 0x0003)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c2_1_1 + 0x0004)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c2_1_1 + 0x0005)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c2_1_1 + 0x0006)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c2_1_1 + 0x0007)
	mov	a,#0x12
	movx	@dptr,a
;	LCD.c:474: unsigned char c3[] =  {0x1B,0x11,0x00,0x1B,0x11,0x00,0x11,0x1B};
	mov	dptr,#_setMap5CGram_c3_1_1
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c3_1_1 + 0x0001)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c3_1_1 + 0x0002)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c3_1_1 + 0x0003)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c3_1_1 + 0x0004)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c3_1_1 + 0x0005)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c3_1_1 + 0x0006)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c3_1_1 + 0x0007)
	mov	a,#0x1B
	movx	@dptr,a
;	LCD.c:475: unsigned char c4[] =  {0x12,0x0A,0x09,0x04,0x19,0x03,0x19,0x0B};
	mov	dptr,#_setMap5CGram_c4_1_1
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c4_1_1 + 0x0001)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c4_1_1 + 0x0002)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c4_1_1 + 0x0003)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c4_1_1 + 0x0004)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c4_1_1 + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c4_1_1 + 0x0006)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c4_1_1 + 0x0007)
	mov	a,#0x0B
	movx	@dptr,a
;	LCD.c:476: unsigned char c5[] =  {0x12,0x16,0x13,0x18,0x12,0x16,0x13,0x1B};
	mov	dptr,#_setMap5CGram_c5_1_1
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c5_1_1 + 0x0001)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c5_1_1 + 0x0002)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c5_1_1 + 0x0003)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c5_1_1 + 0x0004)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c5_1_1 + 0x0005)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c5_1_1 + 0x0006)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c5_1_1 + 0x0007)
	mov	a,#0x1B
	movx	@dptr,a
;	LCD.c:477: unsigned char c6[] =  {0x1A,0x11,0x15,0x14,0x12,0x15,0x10,0x17};
	mov	dptr,#_setMap5CGram_c6_1_1
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c6_1_1 + 0x0001)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c6_1_1 + 0x0002)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c6_1_1 + 0x0003)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c6_1_1 + 0x0004)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c6_1_1 + 0x0005)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c6_1_1 + 0x0006)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c6_1_1 + 0x0007)
	mov	a,#0x17
	movx	@dptr,a
;	LCD.c:478: unsigned char c7[] =  {0x13,0x05,0x09,0x09,0x05,0x15,0x01,0x1F};
	mov	dptr,#_setMap5CGram_c7_1_1
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c7_1_1 + 0x0001)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c7_1_1 + 0x0002)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c7_1_1 + 0x0003)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c7_1_1 + 0x0004)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c7_1_1 + 0x0005)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c7_1_1 + 0x0006)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_setMap5CGram_c7_1_1 + 0x0007)
	mov	a,#0x1F
	movx	@dptr,a
;	LCD.c:480: for(n = 0; n < 8 ;n++){
	mov	r2,#0x00
00101$:
	cjne	r2,#0x08,00124$
00124$:
	jc	00125$
	ljmp	00104$
00125$:
;	LCD.c:481: SCmap[0].adds[n] = c0[n];
	mov	a,r2
	add	a,#_SCmap
	mov	r3,a
	clr	a
	addc	a,#(_SCmap >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap5CGram_c0_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap5CGram_c0_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:482: SCmap[1].adds[n] = c1[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0008)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0008) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap5CGram_c1_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap5CGram_c1_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:483: SCmap[2].adds[n] = c2[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0010)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0010) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap5CGram_c2_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap5CGram_c2_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:484: SCmap[3].adds[n] = c3[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0018)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0018) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap5CGram_c3_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap5CGram_c3_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:485: SCmap[4].adds[n] = c4[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0020)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0020) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap5CGram_c4_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap5CGram_c4_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:486: SCmap[5].adds[n] = c5[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0028)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0028) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap5CGram_c5_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap5CGram_c5_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:487: SCmap[6].adds[n] = c6[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0030)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0030) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap5CGram_c6_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap5CGram_c6_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:488: SCmap[7].adds[n] = c7[n];
	mov	a,r2
	add	a,#(_SCmap + 0x0038)
	mov	r3,a
	clr	a
	addc	a,#((_SCmap + 0x0038) >> 8)
	mov	r4,a
	mov	a,r2
	add	a,#_setMap5CGram_c7_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_setMap5CGram_c7_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	LCD.c:480: for(n = 0; n < 8 ;n++){
	inc	r2
	ljmp	00101$
00104$:
;	LCD.c:491: winstLCD = setCgramAddress;    				 // Atribuindo primeiro endereço da CGRAM
	mov	dptr,#_winstLCD
	mov	a,#0x40
	movx	@dptr,a
;	LCD.c:492: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	lcall	_delay
;	LCD.c:494: for(m = 0;m< 8; m++){
	mov	r2,#0x00
00109$:
	cjne	r2,#0x08,00126$
00126$:
	jnc	00112$
;	LCD.c:495: for(n = 0; n < 8 ;n++){
	mov	a,r2
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r3,a
	mov	r4,#0x00
00105$:
	cjne	r4,#0x08,00128$
00128$:
	jnc	00111$
;	LCD.c:496: wdataLCD = SCmap[m].adds[n];                // Atribuindo escrita
	mov	a,r3
	add	a,#_SCmap
	mov	r5,a
	clr	a
	addc	a,#(_SCmap >> 8)
	mov	r6,a
	mov	a,r4
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_wdataLCD
	movx	@dptr,a
;	LCD.c:497: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	push	ar2
	push	ar3
	push	ar4
	lcall	_delay
	pop	ar4
	pop	ar3
	pop	ar2
;	LCD.c:495: for(n = 0; n < 8 ;n++){
	inc	r4
	sjmp	00105$
00111$:
;	LCD.c:494: for(m = 0;m< 8; m++){
	inc	r2
	sjmp	00109$
00112$:
;	LCD.c:501: map[0][0].schar = 2;
	mov	dptr,#_map
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:502: map[0][1].schar = 3;
	mov	dptr,#(_map + 0x0001)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:503: map[0][2].schar = 3;
	mov	dptr,#(_map + 0x0002)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:504: map[0][3].schar = 2;
	mov	dptr,#(_map + 0x0003)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:505: map[0][4].schar = 3;
	mov	dptr,#(_map + 0x0004)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:506: map[0][5].schar = 3;
	mov	dptr,#(_map + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:507: map[0][6].schar = 2;
	mov	dptr,#(_map + 0x0006)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:508: map[0][7].schar = 7;
	mov	dptr,#(_map + 0x0007)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:509: map[0][8].schar = 7;
	mov	dptr,#(_map + 0x0008)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:510: map[0][9].schar = 2;
	mov	dptr,#(_map + 0x0009)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:511: map[0][10].schar = 7;
	mov	dptr,#(_map + 0x000a)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:512: map[0][11].schar = 8;
	mov	dptr,#(_map + 0x000b)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:513: map[0][12].schar = 8;
	mov	dptr,#(_map + 0x000c)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:514: map[0][13].schar = 4;
	mov	dptr,#(_map + 0x000d)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:515: map[0][14].schar = 8;
	mov	dptr,#(_map + 0x000e)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:516: map[0][15].schar = 2;
	mov	dptr,#(_map + 0x000f)
	mov	a,#0x02
	movx	@dptr,a
;	LCD.c:518: map[1][0].schar = 6;
	mov	dptr,#(_map + 0x0010)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:519: map[1][1].schar = 5;
	mov	dptr,#(_map + 0x0011)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:520: map[1][2].schar = 6;
	mov	dptr,#(_map + 0x0012)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:521: map[1][3].schar = 4;
	mov	dptr,#(_map + 0x0013)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:522: map[1][4].schar = 5;
	mov	dptr,#(_map + 0x0014)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:523: map[1][5].schar = 4;
	mov	dptr,#(_map + 0x0015)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:524: map[1][6].schar = 4;
	mov	dptr,#(_map + 0x0016)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:525: map[1][7].schar = 4;
	mov	dptr,#(_map + 0x0017)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:526: map[1][8].schar = 3;
	mov	dptr,#(_map + 0x0018)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:527: map[1][9].schar = 6;
	mov	dptr,#(_map + 0x0019)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:528: map[1][10].schar = 4;
	mov	dptr,#(_map + 0x001a)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:529: map[1][11].schar = 6;
	mov	dptr,#(_map + 0x001b)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:530: map[1][12].schar = 5;
	mov	dptr,#(_map + 0x001c)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:531: map[1][13].schar = 3;
	mov	dptr,#(_map + 0x001d)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:532: map[1][14].schar = 4;
	mov	dptr,#(_map + 0x001e)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:533: map[1][15].schar = 7;
	mov	dptr,#(_map + 0x001f)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:535: map[2][0].schar = 6;
	mov	dptr,#(_map + 0x0020)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:536: map[2][1].schar = 4;
	mov	dptr,#(_map + 0x0021)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:537: map[2][2].schar = 5;
	mov	dptr,#(_map + 0x0022)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:538: map[2][3].schar = 6;
	mov	dptr,#(_map + 0x0023)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:539: map[2][4].schar = 4;
	mov	dptr,#(_map + 0x0024)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:540: map[2][5].schar = 5;
	mov	dptr,#(_map + 0x0025)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:541: map[2][6].schar = 5;
	mov	dptr,#(_map + 0x0026)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:542: map[2][7].schar = 7;
	mov	dptr,#(_map + 0x0027)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:543: map[2][8].schar = 6;
	mov	dptr,#(_map + 0x0028)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:544: map[2][9].schar = 4;
	mov	dptr,#(_map + 0x0029)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:545: map[2][10].schar = 6;
	mov	dptr,#(_map + 0x002a)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:546: map[2][11].schar = 4;
	mov	dptr,#(_map + 0x002b)
	mov	a,#0x04
	movx	@dptr,a
;	LCD.c:547: map[2][12].schar = 3;
	mov	dptr,#(_map + 0x002c)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:548: map[2][13].schar = 5;
	mov	dptr,#(_map + 0x002d)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:549: map[2][14].schar = 3;
	mov	dptr,#(_map + 0x002e)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:550: map[2][15].schar = 8;
	mov	dptr,#(_map + 0x002f)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:552: map[3][0].schar = 7;
	mov	dptr,#(_map + 0x0030)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:553: map[3][1].schar = 6;
	mov	dptr,#(_map + 0x0031)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:554: map[3][2].schar = 7;
	mov	dptr,#(_map + 0x0032)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:555: map[3][3].schar = 3;
	mov	dptr,#(_map + 0x0033)
	mov	a,#0x03
	movx	@dptr,a
;	LCD.c:556: map[3][4].schar = 5;
	mov	dptr,#(_map + 0x0034)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:557: map[3][5].schar = 8;
	mov	dptr,#(_map + 0x0035)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:558: map[3][6].schar = 7;
	mov	dptr,#(_map + 0x0036)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:559: map[3][7].schar = 7;
	mov	dptr,#(_map + 0x0037)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:560: map[3][8].schar = 8;
	mov	dptr,#(_map + 0x0038)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:561: map[3][9].schar = 6;
	mov	dptr,#(_map + 0x0039)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:562: map[3][10].schar = 7;
	mov	dptr,#(_map + 0x003a)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:563: map[3][11].schar = 8;
	mov	dptr,#(_map + 0x003b)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:564: map[3][12].schar = 6;
	mov	dptr,#(_map + 0x003c)
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:565: map[3][13].schar = 7;
	mov	dptr,#(_map + 0x003d)
	mov	a,#0x07
	movx	@dptr,a
;	LCD.c:566: map[3][14].schar = 5;
	mov	dptr,#(_map + 0x003e)
	mov	a,#0x05
	movx	@dptr,a
;	LCD.c:567: map[3][15].schar = 8;
	mov	dptr,#(_map + 0x003f)
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:569: printMap();
	ljmp	_printMap
;------------------------------------------------------------
;Allocation info for local variables in function 'configMap'
;------------------------------------------------------------
;pcol                      Allocated with name '_configMap_PARM_2'
;pline                     Allocated with name '_configMap_pline_1_1'
;control                   Allocated with name '_configMap_control_1_1'
;------------------------------------------------------------
;	LCD.c:573: unsigned char configMap(unsigned char pline, unsigned char pcol){
;	-----------------------------------------
;	 function configMap
;	-----------------------------------------
_configMap:
	mov	a,dpl
	mov	dptr,#_configMap_pline_1_1
	movx	@dptr,a
;	LCD.c:575: unsigned char control = serialControl(SCmap, map);
	mov	dptr,#_serialControl_PARM_2
	mov	a,#_map
	movx	@dptr,a
	inc	dptr
	mov	a,#(_map >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_SCmap
	mov	b,#0x00
	lcall	_serialControl
	mov	r2,dpl
;	LCD.c:576: delay(100,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x0064
	push	ar2
	lcall	_delay
;	LCD.c:577: setCursorAt(pline, pcol);
	mov	dptr,#_configMap_pline_1_1
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_configMap_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_setCursorAt_PARM_2
	movx	@dptr,a
	mov	dpl,r3
	push	ar3
	push	ar4
	lcall	_setCursorAt
	pop	ar4
	pop	ar3
;	LCD.c:578: setChar((map[pline-1][pcol-1].schar) - 1);
	dec	r3
	mov	a,r3
	swap	a
	anl	a,#0xf0
	add	a,#_map
	mov	r3,a
	clr	a
	addc	a,#(_map >> 8)
	mov	r5,a
	mov	a,r4
	dec	a
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	dec	r3
	mov	dpl,r3
	lcall	_setChar
;	LCD.c:579: delay(100,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar2
;	LCD.c:581: return control;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setCursorHomeAtLine'
;------------------------------------------------------------
;line                      Allocated with name '_setCursorHomeAtLine_line_1_1'
;------------------------------------------------------------
;	LCD.c:586: void setCursorHomeAtLine(unsigned char line){
;	-----------------------------------------
;	 function setCursorHomeAtLine
;	-----------------------------------------
_setCursorHomeAtLine:
	mov	a,dpl
	mov	dptr,#_setCursorHomeAtLine_line_1_1
	movx	@dptr,a
;	LCD.c:587: if(line == 1)
	mov	dptr,#_setCursorHomeAtLine_line_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00110$
;	LCD.c:588: winstLCD = cursorHomeL1;
	mov	dptr,#_winstLCD
	mov	a,#0x80
	movx	@dptr,a
	sjmp	00111$
00110$:
;	LCD.c:589: else if(line == 2)
	cjne	r2,#0x02,00107$
;	LCD.c:590: winstLCD = cursorHomeL2;
	mov	dptr,#_winstLCD
	mov	a,#0xC0
	movx	@dptr,a
	sjmp	00111$
00107$:
;	LCD.c:591: else if(line == 3)
	cjne	r2,#0x03,00104$
;	LCD.c:592: winstLCD = cursorHomeL3;
	mov	dptr,#_winstLCD
	mov	a,#0x90
	movx	@dptr,a
	sjmp	00111$
00104$:
;	LCD.c:593: else if(line == 4)
	cjne	r2,#0x04,00111$
;	LCD.c:594: winstLCD = cursorHomeL4;
	mov	dptr,#_winstLCD
	mov	a,#0xD0
	movx	@dptr,a
00111$:
;	LCD.c:596: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setPlayerCursor'
;------------------------------------------------------------
;pcol                      Allocated with name '_setPlayerCursor_PARM_2'
;sline                     Allocated with name '_setPlayerCursor_PARM_3'
;scol                      Allocated with name '_setPlayerCursor_PARM_4'
;pline                     Allocated with name '_setPlayerCursor_pline_1_1'
;n                         Allocated with name '_setPlayerCursor_n_1_1'
;------------------------------------------------------------
;	LCD.c:601: void setPlayerCursor(unsigned char pline, unsigned char pcol, unsigned char sline, unsigned char scol){
;	-----------------------------------------
;	 function setPlayerCursor
;	-----------------------------------------
_setPlayerCursor:
	mov	a,dpl
	mov	dptr,#_setPlayerCursor_pline_1_1
	movx	@dptr,a
;	LCD.c:605: for(n = 0; n < 8 ;n++)
	mov	dptr,#_setPlayerCursor_pline_1_1
	movx	a,@dptr
	mov	r2,a
	dec	r2
	mov	a,r2
	swap	a
	anl	a,#0xf0
	add	a,#_map
	mov	r2,a
	clr	a
	addc	a,#(_map >> 8)
	mov	r3,a
	mov	dptr,#_setPlayerCursor_PARM_2
	movx	a,@dptr
	dec	a
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r4,#0x00
00101$:
	cjne	r4,#0x08,00117$
00117$:
	jnc	00104$
;	LCD.c:606: point.adds[n]= SCmap[map[pline-1][pcol-1].schar-1].adds[n];
	mov	a,r4
	add	a,#_point
	mov	r5,a
	clr	a
	addc	a,#(_point >> 8)
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r7,a
	dec	r7
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	add	a,#_SCmap
	mov	r7,a
	clr	a
	addc	a,#(_SCmap >> 8)
	mov	r0,a
	mov	a,r4
	add	a,r7
	mov	dpl,a
	clr	a
	addc	a,r0
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	LCD.c:605: for(n = 0; n < 8 ;n++)
	inc	r4
	sjmp	00101$
00104$:
;	LCD.c:608: point.adds[sline-1] += pow(2,5-scol);
	mov	dptr,#_setPlayerCursor_PARM_3
	movx	a,@dptr
	dec	a
	add	a,#_point
	mov	r2,a
	clr	a
	addc	a,#(_point >> 8)
	mov	r3,a
	mov	ar4,r2
	mov	ar5,r3
	mov	dptr,#_setPlayerCursor_PARM_4
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_pow_PARM_2
	mov	a,#0x05
	clr	c
	subb	a,r6
	movx	@dptr,a
	mov	dpl,#0x02
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_pow
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	add	a,r6
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	LCD.c:610: winstLCD = 0x40;    				 // Atribuindo primeiro endereço da CGRAM
	mov	dptr,#_winstLCD
	mov	a,#0x40
	movx	@dptr,a
;	LCD.c:611: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	lcall	_delay
;	LCD.c:614: for(n = 0; n < 8 ;n++){
	mov	r2,#0x00
00105$:
	cjne	r2,#0x08,00119$
00119$:
	jnc	00109$
;	LCD.c:615: wdataLCD = point.adds[n];                // Atribuindo escrita
	mov	a,r2
	add	a,#_point
	mov	dpl,a
	clr	a
	addc	a,#(_point >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_wdataLCD
	movx	@dptr,a
;	LCD.c:616: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	push	ar2
	lcall	_delay
	pop	ar2
;	LCD.c:614: for(n = 0; n < 8 ;n++){
	inc	r2
	sjmp	00105$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clearLCD'
;------------------------------------------------------------
;------------------------------------------------------------
;	LCD.c:620: void clearLCD(){
;	-----------------------------------------
;	 function clearLCD
;	-----------------------------------------
_clearLCD:
;	LCD.c:621: winstLCD = clearDisp;						// Atribuindo instrucao
	mov	dptr,#_winstLCD
	mov	a,#0x01
	movx	@dptr,a
;	LCD.c:622: delay(10,0);								// Delay 10 microsegundos
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	lcall	_delay
;	LCD.c:623: winstLCD = configFunc;						// Atribuindo instrucao
	mov	dptr,#_winstLCD
	mov	a,#0x3F
	movx	@dptr,a
;	LCD.c:624: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	lcall	_delay
;	LCD.c:625: winstLCD = entryModeShift;					// Atribuindo instrucao
	mov	dptr,#_winstLCD
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:626: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	lcall	_delay
;	LCD.c:627: winstLCD = onoffControl;					// Atribuindo instrucao
	mov	dptr,#_winstLCD
	mov	a,#0x0C
	movx	@dptr,a
;	LCD.c:628: delay(10,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000A
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_putTextAt'
;------------------------------------------------------------
;line                      Allocated with name '_LCD_putTextAt_PARM_2'
;alignment                 Allocated with name '_LCD_putTextAt_PARM_3'
;text                      Allocated with name '_LCD_putTextAt_text_1_1'
;n                         Allocated with name '_LCD_putTextAt_n_1_1'
;col                       Allocated with name '_LCD_putTextAt_col_1_1'
;size                      Allocated with name '_LCD_putTextAt_size_1_1'
;txt                       Allocated with name '_LCD_putTextAt_txt_1_1'
;------------------------------------------------------------
;	LCD.c:631: void LCD_putTextAt(char* text, unsigned char line, unsigned char alignment){
;	-----------------------------------------
;	 function LCD_putTextAt
;	-----------------------------------------
_LCD_putTextAt:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_LCD_putTextAt_text_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	LCD.c:633: unsigned char n, col = 0, size;
	mov	dptr,#_LCD_putTextAt_col_1_1
;	LCD.c:634: char txt[17] = {0};
	clr	a
	movx	@dptr,a
	mov	dptr,#_LCD_putTextAt_txt_1_1
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x0003)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x0007)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x000b)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x000c)
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x000f)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putTextAt_txt_1_1 + 0x0010)
	movx	@dptr,a
;	LCD.c:636: for(n = 0;text[n] != '\0';n++)
	mov	dptr,#_LCD_putTextAt_text_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
00109$:
	mov	a,r5
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
	jz	00112$
;	LCD.c:637: txt[n] = text[n];
	mov	a,r5
	add	a,#_LCD_putTextAt_txt_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_LCD_putTextAt_txt_1_1 >> 8)
	mov	dph,a
	mov	a,r6
	movx	@dptr,a
;	LCD.c:636: for(n = 0;text[n] != '\0';n++)
	inc	r5
	sjmp	00109$
00112$:
;	LCD.c:641: if (alignment == LEFT)
	mov	dptr,#_LCD_putTextAt_PARM_3
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00107$
;	LCD.c:642: col = 1;
	mov	dptr,#_LCD_putTextAt_col_1_1
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00108$
00107$:
;	LCD.c:643: else if(alignment == CENTER)
	cjne	r2,#0x02,00104$
;	LCD.c:644: col = (16-size)/2 + 1;
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,#0x10
	clr	c
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	mov	dptr,#_LCD_putTextAt_col_1_1
	mov	a,r3
	inc	a
	movx	@dptr,a
	sjmp	00108$
00104$:
;	LCD.c:645: else if(alignment == RIGHT)
	cjne	r2,#0x03,00108$
;	LCD.c:646: col = (16-size);
	mov	dptr,#_LCD_putTextAt_col_1_1
	mov	a,#0x10
	clr	c
	subb	a,r5
	movx	@dptr,a
00108$:
;	LCD.c:648: setCursorAt(line, col);
	mov	dptr,#_LCD_putTextAt_PARM_2
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_LCD_putTextAt_col_1_1
	movx	a,@dptr
	mov	dptr,#_setCursorAt_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	push	ar5
	lcall	_setCursorAt
	pop	ar5
;	LCD.c:650: for(n = 0; n<size; n++)
	mov	ar2,r5
	mov	r3,#0x00
00113$:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	00117$
;	LCD.c:651: setChar(txt[n]);
	mov	a,r3
	add	a,#_LCD_putTextAt_txt_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_LCD_putTextAt_txt_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar2
	push	ar3
	lcall	_setChar
	pop	ar3
	pop	ar2
;	LCD.c:650: for(n = 0; n<size; n++)
	inc	r3
	sjmp	00113$
00117$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_putText'
;------------------------------------------------------------
;sloc0                     Allocated with name '_LCD_putText_sloc0_1_0'
;sloc1                     Allocated with name '_LCD_putText_sloc1_1_0'
;sloc2                     Allocated with name '_LCD_putText_sloc2_1_0'
;sloc3                     Allocated with name '_LCD_putText_sloc3_1_0'
;line                      Allocated with name '_LCD_putText_PARM_2'
;time                      Allocated with name '_LCD_putText_PARM_3'
;text                      Allocated with name '_LCD_putText_text_1_1'
;i                         Allocated with name '_LCD_putText_i_1_1'
;j                         Allocated with name '_LCD_putText_j_1_1'
;k                         Allocated with name '_LCD_putText_k_1_1'
;size                      Allocated with name '_LCD_putText_size_1_1'
;control                   Allocated with name '_LCD_putText_control_1_1'
;chr                       Allocated with name '_LCD_putText_chr_1_1'
;txt                       Allocated with name '_LCD_putText_txt_1_1'
;------------------------------------------------------------
;	LCD.c:655: unsigned char LCD_putText(char* text, unsigned char line, unsigned int time){
;	-----------------------------------------
;	 function LCD_putText
;	-----------------------------------------
_LCD_putText:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_LCD_putText_text_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	LCD.c:657: unsigned char i = 0, j = 0, k =0,size, control = 1;
	mov	dptr,#_LCD_putText_control_1_1
	mov	a,#0x01
	movx	@dptr,a
;	LCD.c:659: char txt[50] = {0};
	mov	dptr,#_LCD_putText_txt_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0008)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x000c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0010)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0014)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0018)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x001c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0020)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0024)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0028)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x002a)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x002b)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x002c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x002d)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x002e)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x002f)
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0030)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_LCD_putText_txt_1_1 + 0x0031)
	movx	@dptr,a
;	LCD.c:661: for(i = 0;text[i] != '\0';i++)
	mov	dptr,#_LCD_putText_text_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
00108$:
	mov	a,r5
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
	jz	00111$
;	LCD.c:662: txt[i] = text[i];
	mov	a,r5
	add	a,#_LCD_putText_txt_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_LCD_putText_txt_1_1 >> 8)
	mov	dph,a
	mov	a,r6
	movx	@dptr,a
;	LCD.c:661: for(i = 0;text[i] != '\0';i++)
	inc	r5
	sjmp	00108$
00111$:
;	LCD.c:664: txt[i] = text[i];
	mov	a,r5
	add	a,#_LCD_putText_txt_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_LCD_putText_txt_1_1 >> 8)
	mov	dph,a
	mov	a,r6
	movx	@dptr,a
;	LCD.c:667: for(i=0;i < size && control ==1 ;i++){
	mov	dptr,#_LCD_putText_PARM_2
	movx	a,@dptr
	mov	_LCD_putText_sloc3_1_0,a
	mov	dptr,#_LCD_putText_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	mov	r6,a
	dec	a
	mov	r7,a
	mov	r0,#0x00
00104$:
	clr	c
	mov	a,r0
	subb	a,r5
	jc	00141$
	ljmp	00107$
00141$:
	mov	dptr,#_LCD_putText_control_1_1
	movx	a,@dptr
	mov	r1,a
	clr	a
	cjne	r1,#0x01,00142$
	inc	a
00142$:
	mov	r1,a
	jnz	00144$
	ljmp	00107$
00144$:
;	LCD.c:669: setCursorHomeAtLine(line);
	mov	dpl,_LCD_putText_sloc3_1_0
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_setCursorHomeAtLine
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
;	LCD.c:671: for(j = 0; j<16 && control ==1;j++)
	mov	_LCD_putText_sloc0_1_0,#0x00
00113$:
	mov	a,#0x100 - 0x10
	add	a,_LCD_putText_sloc0_1_0
	jc	00116$
	mov	a,r1
	jz	00116$
;	LCD.c:672: setChar(txt[j]);				// Atribuindo escrita
	push	ar7
	mov	a,_LCD_putText_sloc0_1_0
	add	a,#_LCD_putText_txt_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_LCD_putText_txt_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_setChar
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
;	LCD.c:671: for(j = 0; j<16 && control ==1;j++)
	inc	_LCD_putText_sloc0_1_0
	pop	ar7
	sjmp	00113$
00116$:
;	LCD.c:674: delay(time,1);
	mov	dptr,#_delay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	_delay
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
;	LCD.c:678: chr = txt[0];
	mov	dptr,#_LCD_putText_txt_1_1
	movx	a,@dptr
	mov	_LCD_putText_sloc2_1_0,a
;	LCD.c:680: for(k = 1; k< size && control ==1;k++)
	push	ar7
	mov	dptr,#_LCD_putText_control_1_1
	movx	a,@dptr
	mov	r7,a
	clr	a
	cjne	r7,#0x01,00147$
	inc	a
00147$:
	mov	_LCD_putText_sloc0_1_0,a
	mov	_LCD_putText_sloc1_1_0,#0x01
;	LCD.c:691: return control;
	pop	ar7
;	LCD.c:680: for(k = 1; k< size && control ==1;k++)
00118$:
	clr	c
	mov	a,_LCD_putText_sloc1_1_0
	subb	a,r6
	jnc	00121$
	mov	a,_LCD_putText_sloc0_1_0
	jz	00121$
;	LCD.c:681: txt[k-1] = txt[k];
	push	ar7
	mov	a,_LCD_putText_sloc1_1_0
	dec	a
	add	a,#_LCD_putText_txt_1_1
	mov	r7,a
	clr	a
	addc	a,#(_LCD_putText_txt_1_1 >> 8)
	mov	r1,a
	mov	a,_LCD_putText_sloc1_1_0
	add	a,#_LCD_putText_txt_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_LCD_putText_txt_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r7
	mov	dph,r1
	movx	@dptr,a
;	LCD.c:680: for(k = 1; k< size && control ==1;k++)
	inc	_LCD_putText_sloc1_1_0
	pop	ar7
	sjmp	00118$
00121$:
;	LCD.c:683: txt[size-1] = chr;
	mov	a,r7
	add	a,#_LCD_putText_txt_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_LCD_putText_txt_1_1 >> 8)
	mov	dph,a
	mov	a,_LCD_putText_sloc2_1_0
	movx	@dptr,a
;	LCD.c:685: control = serialBegin();
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	_serialBegin
	mov	r2,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	dptr,#_LCD_putText_control_1_1
	mov	a,r2
	movx	@dptr,a
;	LCD.c:687: if(control == 0)
	mov	a,r2
	jz	00107$
;	LCD.c:667: for(i=0;i < size && control ==1 ;i++){
	inc	r0
	ljmp	00104$
00107$:
;	LCD.c:691: return control;
	mov	dptr,#_LCD_putText_control_1_1
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_putCharAt'
;------------------------------------------------------------
;line                      Allocated with name '_LCD_putCharAt_PARM_2'
;col                       Allocated with name '_LCD_putCharAt_PARM_3'
;chr                       Allocated with name '_LCD_putCharAt_chr_1_1'
;------------------------------------------------------------
;	LCD.c:694: void LCD_putCharAt(char chr, unsigned char line, unsigned char col){
;	-----------------------------------------
;	 function LCD_putCharAt
;	-----------------------------------------
_LCD_putCharAt:
	mov	a,dpl
	mov	dptr,#_LCD_putCharAt_chr_1_1
	movx	@dptr,a
;	LCD.c:695: setCursorAt(line, col);
	mov	dptr,#_LCD_putCharAt_PARM_2
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_LCD_putCharAt_PARM_3
	movx	a,@dptr
	mov	dptr,#_setCursorAt_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	lcall	_setCursorAt
;	LCD.c:696: setChar(chr);
	mov	dptr,#_LCD_putCharAt_chr_1_1
	movx	a,@dptr
	mov	dpl,a
	ljmp	_setChar
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_putSCharAt'
;------------------------------------------------------------
;scol                      Allocated with name '_LCD_putSCharAt_PARM_2'
;line                      Allocated with name '_LCD_putSCharAt_PARM_3'
;col                       Allocated with name '_LCD_putSCharAt_PARM_4'
;sline                     Allocated with name '_LCD_putSCharAt_sline_1_1'
;------------------------------------------------------------
;	LCD.c:699: void LCD_putSCharAt(unsigned char sline, unsigned char scol, unsigned char line, unsigned char col){
;	-----------------------------------------
;	 function LCD_putSCharAt
;	-----------------------------------------
_LCD_putSCharAt:
	mov	a,dpl
	mov	dptr,#_LCD_putSCharAt_sline_1_1
	movx	@dptr,a
;	LCD.c:700: setPlayerCursor(line,col,sline,scol);
	mov	dptr,#_LCD_putSCharAt_PARM_3
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_LCD_putSCharAt_PARM_4
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_LCD_putSCharAt_sline_1_1
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_LCD_putSCharAt_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_setPlayerCursor_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#_setPlayerCursor_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_setPlayerCursor_PARM_4
	mov	a,r5
	movx	@dptr,a
	mov	dpl,r2
	push	ar2
	push	ar3
	lcall	_setPlayerCursor
	pop	ar3
	pop	ar2
;	LCD.c:701: setCursorAt(line, col);
	mov	dptr,#_setCursorAt_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r2
	lcall	_setCursorAt
;	LCD.c:702: setChar(0);
	mov	dpl,#0x00
	ljmp	_setChar
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__rxMsg:
	.db #0x00
	.area CABS    (ABS,CODE)
