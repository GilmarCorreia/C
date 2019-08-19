                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Mon Aug 19 00:21:21 2019
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
   0382                      56 _pow_PARM_2:
   0382                      57 	.ds 1
   0383                      58 _pow_base_1_1:
   0383                      59 	.ds 1
   0384                      60 _pow_total_1_1:
   0384                      61 	.ds 1
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
                            104 ;	Math.c:3: unsigned char pow(unsigned char base, unsigned char power){
                            105 ;	-----------------------------------------
                            106 ;	 function pow
                            107 ;	-----------------------------------------
   3241                     108 _pow:
                    0002    109 	ar2 = 0x02
                    0003    110 	ar3 = 0x03
                    0004    111 	ar4 = 0x04
                    0005    112 	ar5 = 0x05
                    0006    113 	ar6 = 0x06
                    0007    114 	ar7 = 0x07
                    0000    115 	ar0 = 0x00
                    0001    116 	ar1 = 0x01
   3241 E5 82               117 	mov	a,dpl
   3243 90 03 83            118 	mov	dptr,#_pow_base_1_1
   3246 F0                  119 	movx	@dptr,a
                            120 ;	Math.c:4: unsigned char n, total = 1;
   3247 90 03 84            121 	mov	dptr,#_pow_total_1_1
   324A 74 01               122 	mov	a,#0x01
   324C F0                  123 	movx	@dptr,a
                            124 ;	Math.c:6: for(n = 0; n < power; n++){
   324D 90 03 83            125 	mov	dptr,#_pow_base_1_1
   3250 E0                  126 	movx	a,@dptr
   3251 FA                  127 	mov	r2,a
   3252 90 03 82            128 	mov	dptr,#_pow_PARM_2
   3255 E0                  129 	movx	a,@dptr
   3256 FB                  130 	mov	r3,a
   3257 7C 00               131 	mov	r4,#0x00
   3259                     132 00101$:
   3259 C3                  133 	clr	c
   325A EC                  134 	mov	a,r4
   325B 9B                  135 	subb	a,r3
   325C 50 10               136 	jnc	00104$
                            137 ;	Math.c:7: total*=base; 
   325E 90 03 84            138 	mov	dptr,#_pow_total_1_1
   3261 E0                  139 	movx	a,@dptr
   3262 FD                  140 	mov	r5,a
   3263 90 03 84            141 	mov	dptr,#_pow_total_1_1
   3266 8D F0               142 	mov	b,r5
   3268 EA                  143 	mov	a,r2
   3269 A4                  144 	mul	ab
   326A F0                  145 	movx	@dptr,a
                            146 ;	Math.c:6: for(n = 0; n < power; n++){
   326B 0C                  147 	inc	r4
   326C 80 EB               148 	sjmp	00101$
   326E                     149 00104$:
                            150 ;	Math.c:10: return total;
   326E 90 03 84            151 	mov	dptr,#_pow_total_1_1
   3271 E0                  152 	movx	a,@dptr
   3272 F5 82               153 	mov	dpl,a
   3274 22                  154 	ret
                            155 	.area CSEG    (CODE)
                            156 	.area CONST   (CODE)
                            157 	.area XINIT   (CODE)
                            158 	.area CABS    (ABS,CODE)
