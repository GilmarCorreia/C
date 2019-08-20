                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Tue Aug 20 11:45:52 2019
                              5 ;--------------------------------------------------------
                              6 	.module Math
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _pow
                             13 	.globl _pow_PARM_2
                             14 ;--------------------------------------------------------
                             15 ; special function registers
                             16 ;--------------------------------------------------------
                             17 	.area RSEG    (DATA)
                             18 ;--------------------------------------------------------
                             19 ; special function bits
                             20 ;--------------------------------------------------------
                             21 	.area RSEG    (DATA)
                             22 ;--------------------------------------------------------
                             23 ; overlayable register banks
                             24 ;--------------------------------------------------------
                             25 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      26 	.ds 8
                             27 ;--------------------------------------------------------
                             28 ; internal ram data
                             29 ;--------------------------------------------------------
                             30 	.area DSEG    (DATA)
                             31 ;--------------------------------------------------------
                             32 ; overlayable items in internal ram 
                             33 ;--------------------------------------------------------
                             34 	.area OSEG    (OVR,DATA)
                             35 ;--------------------------------------------------------
                             36 ; indirectly addressable internal ram data
                             37 ;--------------------------------------------------------
                             38 	.area ISEG    (DATA)
                             39 ;--------------------------------------------------------
                             40 ; absolute internal ram data
                             41 ;--------------------------------------------------------
                             42 	.area IABS    (ABS,DATA)
                             43 	.area IABS    (ABS,DATA)
                             44 ;--------------------------------------------------------
                             45 ; bit data
                             46 ;--------------------------------------------------------
                             47 	.area BSEG    (BIT)
                             48 ;--------------------------------------------------------
                             49 ; paged external ram data
                             50 ;--------------------------------------------------------
                             51 	.area PSEG    (PAG,XDATA)
                             52 ;--------------------------------------------------------
                             53 ; external ram data
                             54 ;--------------------------------------------------------
                             55 	.area XSEG    (XDATA)
   0384                      56 _pow_PARM_2:
   0384                      57 	.ds 1
   0385                      58 _pow_base_1_1:
   0385                      59 	.ds 1
   0386                      60 _pow_total_1_1:
   0386                      61 	.ds 1
                             62 ;--------------------------------------------------------
                             63 ; absolute external ram data
                             64 ;--------------------------------------------------------
                             65 	.area XABS    (ABS,XDATA)
                             66 ;--------------------------------------------------------
                             67 ; external initialized ram data
                             68 ;--------------------------------------------------------
                             69 	.area XISEG   (XDATA)
                             70 	.area HOME    (CODE)
                             71 	.area GSINIT0 (CODE)
                             72 	.area GSINIT1 (CODE)
                             73 	.area GSINIT2 (CODE)
                             74 	.area GSINIT3 (CODE)
                             75 	.area GSINIT4 (CODE)
                             76 	.area GSINIT5 (CODE)
                             77 	.area GSINIT  (CODE)
                             78 	.area GSFINAL (CODE)
                             79 	.area CSEG    (CODE)
                             80 ;--------------------------------------------------------
                             81 ; global & static initialisations
                             82 ;--------------------------------------------------------
                             83 	.area HOME    (CODE)
                             84 	.area GSINIT  (CODE)
                             85 	.area GSFINAL (CODE)
                             86 	.area GSINIT  (CODE)
                             87 ;--------------------------------------------------------
                             88 ; Home
                             89 ;--------------------------------------------------------
                             90 	.area HOME    (CODE)
                             91 	.area HOME    (CODE)
                             92 ;--------------------------------------------------------
                             93 ; code
                             94 ;--------------------------------------------------------
                             95 	.area CSEG    (CODE)
                             96 ;------------------------------------------------------------
                             97 ;Allocation info for local variables in function 'pow'
                             98 ;------------------------------------------------------------
                             99 ;power                     Allocated with name '_pow_PARM_2'
                            100 ;base                      Allocated with name '_pow_base_1_1'
                            101 ;n                         Allocated with name '_pow_n_1_1'
                            102 ;total                     Allocated with name '_pow_total_1_1'
                            103 ;------------------------------------------------------------
                            104 ;	Math.c:6: unsigned char pow(unsigned char base, unsigned char power){
                            105 ;	-----------------------------------------
                            106 ;	 function pow
                            107 ;	-----------------------------------------
   3207                     108 _pow:
                    0002    109 	ar2 = 0x02
                    0003    110 	ar3 = 0x03
                    0004    111 	ar4 = 0x04
                    0005    112 	ar5 = 0x05
                    0006    113 	ar6 = 0x06
                    0007    114 	ar7 = 0x07
                    0000    115 	ar0 = 0x00
                    0001    116 	ar1 = 0x01
   3207 E5 82               117 	mov	a,dpl
   3209 90 03 85            118 	mov	dptr,#_pow_base_1_1
   320C F0                  119 	movx	@dptr,a
                            120 ;	Math.c:7: unsigned char n, total = 1;
   320D 90 03 86            121 	mov	dptr,#_pow_total_1_1
   3210 74 01               122 	mov	a,#0x01
   3212 F0                  123 	movx	@dptr,a
                            124 ;	Math.c:9: for(n = 0; n < power; n++){
   3213 90 03 85            125 	mov	dptr,#_pow_base_1_1
   3216 E0                  126 	movx	a,@dptr
   3217 FA                  127 	mov	r2,a
   3218 90 03 84            128 	mov	dptr,#_pow_PARM_2
   321B E0                  129 	movx	a,@dptr
   321C FB                  130 	mov	r3,a
   321D 7C 00               131 	mov	r4,#0x00
   321F                     132 00101$:
   321F C3                  133 	clr	c
   3220 EC                  134 	mov	a,r4
   3221 9B                  135 	subb	a,r3
   3222 50 10               136 	jnc	00104$
                            137 ;	Math.c:10: total*=base; 
   3224 90 03 86            138 	mov	dptr,#_pow_total_1_1
   3227 E0                  139 	movx	a,@dptr
   3228 FD                  140 	mov	r5,a
   3229 90 03 86            141 	mov	dptr,#_pow_total_1_1
   322C 8D F0               142 	mov	b,r5
   322E EA                  143 	mov	a,r2
   322F A4                  144 	mul	ab
   3230 F0                  145 	movx	@dptr,a
                            146 ;	Math.c:9: for(n = 0; n < power; n++){
   3231 0C                  147 	inc	r4
   3232 80 EB               148 	sjmp	00101$
   3234                     149 00104$:
                            150 ;	Math.c:13: return total;
   3234 90 03 86            151 	mov	dptr,#_pow_total_1_1
   3237 E0                  152 	movx	a,@dptr
   3238 F5 82               153 	mov	dpl,a
   323A 22                  154 	ret
                            155 	.area CSEG    (CODE)
                            156 	.area CONST   (CODE)
                            157 	.area XINIT   (CODE)
                            158 	.area CABS    (ABS,CODE)
