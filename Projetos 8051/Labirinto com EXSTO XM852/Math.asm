;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
; This file was generated Mon Aug 19 00:21:21 2019
;--------------------------------------------------------
	.module Math
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pow
	.globl _pow_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
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
_pow_PARM_2:
	.ds 1
_pow_base_1_1:
	.ds 1
_pow_total_1_1:
	.ds 1
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
;Allocation info for local variables in function 'pow'
;------------------------------------------------------------
;power                     Allocated with name '_pow_PARM_2'
;base                      Allocated with name '_pow_base_1_1'
;n                         Allocated with name '_pow_n_1_1'
;total                     Allocated with name '_pow_total_1_1'
;------------------------------------------------------------
;	Math.c:3: unsigned char pow(unsigned char base, unsigned char power){
;	-----------------------------------------
;	 function pow
;	-----------------------------------------
_pow:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	a,dpl
	mov	dptr,#_pow_base_1_1
	movx	@dptr,a
;	Math.c:4: unsigned char n, total = 1;
	mov	dptr,#_pow_total_1_1
	mov	a,#0x01
	movx	@dptr,a
;	Math.c:6: for(n = 0; n < power; n++){
	mov	dptr,#_pow_base_1_1
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_pow_PARM_2
	movx	a,@dptr
	mov	r3,a
	mov	r4,#0x00
00101$:
	clr	c
	mov	a,r4
	subb	a,r3
	jnc	00104$
;	Math.c:7: total*=base; 
	mov	dptr,#_pow_total_1_1
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_pow_total_1_1
	mov	b,r5
	mov	a,r2
	mul	ab
	movx	@dptr,a
;	Math.c:6: for(n = 0; n < power; n++){
	inc	r4
	sjmp	00101$
00104$:
;	Math.c:10: return total;
	mov	dptr,#_pow_total_1_1
	movx	a,@dptr
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
