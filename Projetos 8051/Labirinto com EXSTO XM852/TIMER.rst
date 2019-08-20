                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Tue Aug 20 11:45:55 2019
                              5 ;--------------------------------------------------------
                              6 	.module TIMER
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _CY
                             13 	.globl _AC
                             14 	.globl _F0
                             15 	.globl _RS1
                             16 	.globl _RS0
                             17 	.globl _OV
                             18 	.globl _F1
                             19 	.globl _P
                             20 	.globl _PS
                             21 	.globl _PT1
                             22 	.globl _PX1
                             23 	.globl _PT0
                             24 	.globl _PX0
                             25 	.globl _RD
                             26 	.globl _WR
                             27 	.globl _T1
                             28 	.globl _T0
                             29 	.globl _INT1
                             30 	.globl _INT0
                             31 	.globl _TXD
                             32 	.globl _RXD
                             33 	.globl _P3_7
                             34 	.globl _P3_6
                             35 	.globl _P3_5
                             36 	.globl _P3_4
                             37 	.globl _P3_3
                             38 	.globl _P3_2
                             39 	.globl _P3_1
                             40 	.globl _P3_0
                             41 	.globl _EA
                             42 	.globl _ES
                             43 	.globl _ET1
                             44 	.globl _EX1
                             45 	.globl _ET0
                             46 	.globl _EX0
                             47 	.globl _P2_7
                             48 	.globl _P2_6
                             49 	.globl _P2_5
                             50 	.globl _P2_4
                             51 	.globl _P2_3
                             52 	.globl _P2_2
                             53 	.globl _P2_1
                             54 	.globl _P2_0
                             55 	.globl _SM0
                             56 	.globl _SM1
                             57 	.globl _SM2
                             58 	.globl _REN
                             59 	.globl _TB8
                             60 	.globl _RB8
                             61 	.globl _TI
                             62 	.globl _RI
                             63 	.globl _P1_7
                             64 	.globl _P1_6
                             65 	.globl _P1_5
                             66 	.globl _P1_4
                             67 	.globl _P1_3
                             68 	.globl _P1_2
                             69 	.globl _P1_1
                             70 	.globl _P1_0
                             71 	.globl _TF1
                             72 	.globl _TR1
                             73 	.globl _TF0
                             74 	.globl _TR0
                             75 	.globl _IE1
                             76 	.globl _IT1
                             77 	.globl _IE0
                             78 	.globl _IT0
                             79 	.globl _P0_7
                             80 	.globl _P0_6
                             81 	.globl _P0_5
                             82 	.globl _P0_4
                             83 	.globl _P0_3
                             84 	.globl _P0_2
                             85 	.globl _P0_1
                             86 	.globl _P0_0
                             87 	.globl _B
                             88 	.globl _ACC
                             89 	.globl _PSW
                             90 	.globl _IP
                             91 	.globl _P3
                             92 	.globl _IE
                             93 	.globl _P2
                             94 	.globl _SBUF
                             95 	.globl _SCON
                             96 	.globl _P1
                             97 	.globl _TH1
                             98 	.globl _TH0
                             99 	.globl _TL1
                            100 	.globl _TL0
                            101 	.globl _TMOD
                            102 	.globl _TCON
                            103 	.globl _PCON
                            104 	.globl _DPH
                            105 	.globl _DPL
                            106 	.globl _SP
                            107 	.globl _P0
                            108 	.globl _delay_PARM_2
                            109 	.globl _Timer0
                            110 	.globl _timerConfig
                            111 	.globl _delay
                            112 	.globl _timer
                            113 ;--------------------------------------------------------
                            114 ; special function registers
                            115 ;--------------------------------------------------------
                            116 	.area RSEG    (DATA)
                    0080    117 _P0	=	0x0080
                    0081    118 _SP	=	0x0081
                    0082    119 _DPL	=	0x0082
                    0083    120 _DPH	=	0x0083
                    0087    121 _PCON	=	0x0087
                    0088    122 _TCON	=	0x0088
                    0089    123 _TMOD	=	0x0089
                    008A    124 _TL0	=	0x008a
                    008B    125 _TL1	=	0x008b
                    008C    126 _TH0	=	0x008c
                    008D    127 _TH1	=	0x008d
                    0090    128 _P1	=	0x0090
                    0098    129 _SCON	=	0x0098
                    0099    130 _SBUF	=	0x0099
                    00A0    131 _P2	=	0x00a0
                    00A8    132 _IE	=	0x00a8
                    00B0    133 _P3	=	0x00b0
                    00B8    134 _IP	=	0x00b8
                    00D0    135 _PSW	=	0x00d0
                    00E0    136 _ACC	=	0x00e0
                    00F0    137 _B	=	0x00f0
                            138 ;--------------------------------------------------------
                            139 ; special function bits
                            140 ;--------------------------------------------------------
                            141 	.area RSEG    (DATA)
                    0080    142 _P0_0	=	0x0080
                    0081    143 _P0_1	=	0x0081
                    0082    144 _P0_2	=	0x0082
                    0083    145 _P0_3	=	0x0083
                    0084    146 _P0_4	=	0x0084
                    0085    147 _P0_5	=	0x0085
                    0086    148 _P0_6	=	0x0086
                    0087    149 _P0_7	=	0x0087
                    0088    150 _IT0	=	0x0088
                    0089    151 _IE0	=	0x0089
                    008A    152 _IT1	=	0x008a
                    008B    153 _IE1	=	0x008b
                    008C    154 _TR0	=	0x008c
                    008D    155 _TF0	=	0x008d
                    008E    156 _TR1	=	0x008e
                    008F    157 _TF1	=	0x008f
                    0090    158 _P1_0	=	0x0090
                    0091    159 _P1_1	=	0x0091
                    0092    160 _P1_2	=	0x0092
                    0093    161 _P1_3	=	0x0093
                    0094    162 _P1_4	=	0x0094
                    0095    163 _P1_5	=	0x0095
                    0096    164 _P1_6	=	0x0096
                    0097    165 _P1_7	=	0x0097
                    0098    166 _RI	=	0x0098
                    0099    167 _TI	=	0x0099
                    009A    168 _RB8	=	0x009a
                    009B    169 _TB8	=	0x009b
                    009C    170 _REN	=	0x009c
                    009D    171 _SM2	=	0x009d
                    009E    172 _SM1	=	0x009e
                    009F    173 _SM0	=	0x009f
                    00A0    174 _P2_0	=	0x00a0
                    00A1    175 _P2_1	=	0x00a1
                    00A2    176 _P2_2	=	0x00a2
                    00A3    177 _P2_3	=	0x00a3
                    00A4    178 _P2_4	=	0x00a4
                    00A5    179 _P2_5	=	0x00a5
                    00A6    180 _P2_6	=	0x00a6
                    00A7    181 _P2_7	=	0x00a7
                    00A8    182 _EX0	=	0x00a8
                    00A9    183 _ET0	=	0x00a9
                    00AA    184 _EX1	=	0x00aa
                    00AB    185 _ET1	=	0x00ab
                    00AC    186 _ES	=	0x00ac
                    00AF    187 _EA	=	0x00af
                    00B0    188 _P3_0	=	0x00b0
                    00B1    189 _P3_1	=	0x00b1
                    00B2    190 _P3_2	=	0x00b2
                    00B3    191 _P3_3	=	0x00b3
                    00B4    192 _P3_4	=	0x00b4
                    00B5    193 _P3_5	=	0x00b5
                    00B6    194 _P3_6	=	0x00b6
                    00B7    195 _P3_7	=	0x00b7
                    00B0    196 _RXD	=	0x00b0
                    00B1    197 _TXD	=	0x00b1
                    00B2    198 _INT0	=	0x00b2
                    00B3    199 _INT1	=	0x00b3
                    00B4    200 _T0	=	0x00b4
                    00B5    201 _T1	=	0x00b5
                    00B6    202 _WR	=	0x00b6
                    00B7    203 _RD	=	0x00b7
                    00B8    204 _PX0	=	0x00b8
                    00B9    205 _PT0	=	0x00b9
                    00BA    206 _PX1	=	0x00ba
                    00BB    207 _PT1	=	0x00bb
                    00BC    208 _PS	=	0x00bc
                    00D0    209 _P	=	0x00d0
                    00D1    210 _F1	=	0x00d1
                    00D2    211 _OV	=	0x00d2
                    00D3    212 _RS0	=	0x00d3
                    00D4    213 _RS1	=	0x00d4
                    00D5    214 _F0	=	0x00d5
                    00D6    215 _AC	=	0x00d6
                    00D7    216 _CY	=	0x00d7
                            217 ;--------------------------------------------------------
                            218 ; overlayable register banks
                            219 ;--------------------------------------------------------
                            220 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     221 	.ds 8
                            222 ;--------------------------------------------------------
                            223 ; internal ram data
                            224 ;--------------------------------------------------------
                            225 	.area DSEG    (DATA)
                            226 ;--------------------------------------------------------
                            227 ; overlayable items in internal ram 
                            228 ;--------------------------------------------------------
                            229 	.area OSEG    (OVR,DATA)
                            230 ;--------------------------------------------------------
                            231 ; indirectly addressable internal ram data
                            232 ;--------------------------------------------------------
                            233 	.area ISEG    (DATA)
                            234 ;--------------------------------------------------------
                            235 ; absolute internal ram data
                            236 ;--------------------------------------------------------
                            237 	.area IABS    (ABS,DATA)
                            238 	.area IABS    (ABS,DATA)
                            239 ;--------------------------------------------------------
                            240 ; bit data
                            241 ;--------------------------------------------------------
                            242 	.area BSEG    (BIT)
                            243 ;--------------------------------------------------------
                            244 ; paged external ram data
                            245 ;--------------------------------------------------------
                            246 	.area PSEG    (PAG,XDATA)
                            247 ;--------------------------------------------------------
                            248 ; external ram data
                            249 ;--------------------------------------------------------
                            250 	.area XSEG    (XDATA)
   02CB                     251 _Timer0::
   02CB                     252 	.ds 7
   02D2                     253 _delay_PARM_2:
   02D2                     254 	.ds 1
   02D3                     255 _delay_time_1_1:
   02D3                     256 	.ds 2
                            257 ;--------------------------------------------------------
                            258 ; absolute external ram data
                            259 ;--------------------------------------------------------
                            260 	.area XABS    (ABS,XDATA)
                            261 ;--------------------------------------------------------
                            262 ; external initialized ram data
                            263 ;--------------------------------------------------------
                            264 	.area XISEG   (XDATA)
                            265 	.area HOME    (CODE)
                            266 	.area GSINIT0 (CODE)
                            267 	.area GSINIT1 (CODE)
                            268 	.area GSINIT2 (CODE)
                            269 	.area GSINIT3 (CODE)
                            270 	.area GSINIT4 (CODE)
                            271 	.area GSINIT5 (CODE)
                            272 	.area GSINIT  (CODE)
                            273 	.area GSFINAL (CODE)
                            274 	.area CSEG    (CODE)
                            275 ;--------------------------------------------------------
                            276 ; global & static initialisations
                            277 ;--------------------------------------------------------
                            278 	.area HOME    (CODE)
                            279 	.area GSINIT  (CODE)
                            280 	.area GSFINAL (CODE)
                            281 	.area GSINIT  (CODE)
                            282 ;--------------------------------------------------------
                            283 ; Home
                            284 ;--------------------------------------------------------
                            285 	.area HOME    (CODE)
                            286 	.area HOME    (CODE)
                            287 ;--------------------------------------------------------
                            288 ; code
                            289 ;--------------------------------------------------------
                            290 	.area CSEG    (CODE)
                            291 ;------------------------------------------------------------
                            292 ;Allocation info for local variables in function 'timerConfig'
                            293 ;------------------------------------------------------------
                            294 ;------------------------------------------------------------
                            295 ;	TIMER.c:6: void timerConfig(){
                            296 ;	-----------------------------------------
                            297 ;	 function timerConfig
                            298 ;	-----------------------------------------
   2215                     299 _timerConfig:
                    0002    300 	ar2 = 0x02
                    0003    301 	ar3 = 0x03
                    0004    302 	ar4 = 0x04
                    0005    303 	ar5 = 0x05
                    0006    304 	ar6 = 0x06
                    0007    305 	ar7 = 0x07
                    0000    306 	ar0 = 0x00
                    0001    307 	ar1 = 0x01
                            308 ;	TIMER.c:7: TH0 = 0; 					// Zerar os bits mais significativos do temporizador TIMER0
   2215 75 8C 00            309 	mov	_TH0,#0x00
                            310 ;	TIMER.c:8: TL0 = 0; 					// Zerar os bits menos significativos do temporizador TIMER0
   2218 75 8A 00            311 	mov	_TL0,#0x00
                            312 ;	TIMER.c:10: TMOD = 0x21; 				// Habilitando modo 8-bits recarga automática (TIMER1) e contagem modo 16-bits (TIMER0) (slide sistmicro 04_Timer.pdf pg.8)
   221B 75 89 21            313 	mov	_TMOD,#0x21
                            314 ;	TIMER.c:12: TH1 = 0xFD; 				// Zerar os bits mais significativos do temporizador - HABILITANDO COMUNICAÇÃO 9600 bps(usando 8 bits)
   221E 75 8D FD            315 	mov	_TH1,#0xFD
                            316 ;	TIMER.c:13: TL1 = 0xFD; 				// Zerar os bits menos significativos do temporizador - HABILITANDO COMUNICAÇÃO 9600 bps (usando 8 bits)
   2221 75 8B FD            317 	mov	_TL1,#0xFD
                            318 ;	TIMER.c:15: TR1 = 1;        			// Iniciando o T1
   2224 D2 8E               319 	setb	_TR1
                            320 ;	TIMER.c:17: P1 = 0x00;
   2226 75 90 00            321 	mov	_P1,#0x00
                            322 ;	TIMER.c:19: Timer0.finishMicro = 0;
   2229 90 02 D0            323 	mov	dptr,#(_Timer0 + 0x0005)
                            324 ;	TIMER.c:20: Timer0.finishMili = 0;
   222C E4                  325 	clr	a
   222D F0                  326 	movx	@dptr,a
   222E 90 02 CF            327 	mov	dptr,#(_Timer0 + 0x0004)
   2231 F0                  328 	movx	@dptr,a
   2232 22                  329 	ret
                            330 ;------------------------------------------------------------
                            331 ;Allocation info for local variables in function 'delay'
                            332 ;------------------------------------------------------------
                            333 ;miliseconds               Allocated with name '_delay_PARM_2'
                            334 ;time                      Allocated with name '_delay_time_1_1'
                            335 ;------------------------------------------------------------
                            336 ;	TIMER.c:27: void delay(unsigned int time, unsigned char miliseconds){
                            337 ;	-----------------------------------------
                            338 ;	 function delay
                            339 ;	-----------------------------------------
   2233                     340 _delay:
   2233 AA 83               341 	mov	r2,dph
   2235 E5 82               342 	mov	a,dpl
   2237 90 02 D3            343 	mov	dptr,#_delay_time_1_1
   223A F0                  344 	movx	@dptr,a
   223B A3                  345 	inc	dptr
   223C EA                  346 	mov	a,r2
   223D F0                  347 	movx	@dptr,a
                            348 ;	TIMER.c:29: Timer0.flag=1;
   223E 90 02 D1            349 	mov	dptr,#(_Timer0 + 0x0006)
   2241 74 01               350 	mov	a,#0x01
   2243 F0                  351 	movx	@dptr,a
                            352 ;	TIMER.c:31: if(!Timer0.finishMili && miliseconds){	
   2244 90 02 CF            353 	mov	dptr,#(_Timer0 + 0x0004)
   2247 E0                  354 	movx	a,@dptr
   2248 FA                  355 	mov	r2,a
   2249 60 03               356 	jz	00122$
   224B 02 22 D1            357 	ljmp	00110$
   224E                     358 00122$:
   224E 90 02 D2            359 	mov	dptr,#_delay_PARM_2
   2251 E0                  360 	movx	a,@dptr
   2252 FB                  361 	mov	r3,a
   2253 60 7C               362 	jz	00110$
                            363 ;	TIMER.c:32: Timer0.cycles = time/65;
   2255 90 02 D3            364 	mov	dptr,#_delay_time_1_1
   2258 E0                  365 	movx	a,@dptr
   2259 FB                  366 	mov	r3,a
   225A A3                  367 	inc	dptr
   225B E0                  368 	movx	a,@dptr
   225C FC                  369 	mov	r4,a
   225D 90 03 87            370 	mov	dptr,#__divuint_PARM_2
   2260 74 41               371 	mov	a,#0x41
   2262 F0                  372 	movx	@dptr,a
   2263 E4                  373 	clr	a
   2264 A3                  374 	inc	dptr
   2265 F0                  375 	movx	@dptr,a
   2266 8B 82               376 	mov	dpl,r3
   2268 8C 83               377 	mov	dph,r4
   226A C0 03               378 	push	ar3
   226C C0 04               379 	push	ar4
   226E 12 32 3B            380 	lcall	__divuint
   2271 AD 82               381 	mov	r5,dpl
   2273 AE 83               382 	mov	r6,dph
   2275 D0 04               383 	pop	ar4
   2277 D0 03               384 	pop	ar3
   2279 90 02 CB            385 	mov	dptr,#_Timer0
   227C ED                  386 	mov	a,r5
   227D F0                  387 	movx	@dptr,a
   227E A3                  388 	inc	dptr
   227F EE                  389 	mov	a,r6
   2280 F0                  390 	movx	@dptr,a
                            391 ;	TIMER.c:33: Timer0.lastClock = 65535 - ((time % 65)*1000);
   2281 90 03 90            392 	mov	dptr,#__moduint_PARM_2
   2284 74 41               393 	mov	a,#0x41
   2286 F0                  394 	movx	@dptr,a
   2287 E4                  395 	clr	a
   2288 A3                  396 	inc	dptr
   2289 F0                  397 	movx	@dptr,a
   228A 8B 82               398 	mov	dpl,r3
   228C 8C 83               399 	mov	dph,r4
   228E 12 33 0E            400 	lcall	__moduint
   2291 AB 82               401 	mov	r3,dpl
   2293 AC 83               402 	mov	r4,dph
   2295 90 03 8E            403 	mov	dptr,#__mulint_PARM_2
   2298 EB                  404 	mov	a,r3
   2299 F0                  405 	movx	@dptr,a
   229A A3                  406 	inc	dptr
   229B EC                  407 	mov	a,r4
   229C F0                  408 	movx	@dptr,a
   229D 90 03 E8            409 	mov	dptr,#0x03E8
   22A0 12 32 EE            410 	lcall	__mulint
   22A3 AB 82               411 	mov	r3,dpl
   22A5 AC 83               412 	mov	r4,dph
   22A7 E4                  413 	clr	a
   22A8 FD                  414 	mov	r5,a
   22A9 FE                  415 	mov	r6,a
   22AA 74 FF               416 	mov	a,#0xFF
   22AC C3                  417 	clr	c
   22AD 9B                  418 	subb	a,r3
   22AE FB                  419 	mov	r3,a
   22AF 74 FF               420 	mov	a,#0xFF
   22B1 9C                  421 	subb	a,r4
   22B2 FC                  422 	mov	r4,a
   22B3 E4                  423 	clr	a
   22B4 9D                  424 	subb	a,r5
   22B5 FD                  425 	mov	r5,a
   22B6 E4                  426 	clr	a
   22B7 9E                  427 	subb	a,r6
   22B8 FE                  428 	mov	r6,a
   22B9 90 02 CD            429 	mov	dptr,#(_Timer0 + 0x0002)
   22BC EB                  430 	mov	a,r3
   22BD F0                  431 	movx	@dptr,a
   22BE A3                  432 	inc	dptr
   22BF EC                  433 	mov	a,r4
   22C0 F0                  434 	movx	@dptr,a
                            435 ;	TIMER.c:35: TR0 = 1;
   22C1 D2 8C               436 	setb	_TR0
                            437 ;	TIMER.c:36: Timer0.finishMili = 1;
   22C3 90 02 CF            438 	mov	dptr,#(_Timer0 + 0x0004)
   22C6 74 01               439 	mov	a,#0x01
   22C8 F0                  440 	movx	@dptr,a
                            441 ;	TIMER.c:38: while(Timer0.finishMili);
   22C9                     442 00101$:
   22C9 90 02 CF            443 	mov	dptr,#(_Timer0 + 0x0004)
   22CC E0                  444 	movx	a,@dptr
   22CD 60 3D               445 	jz	00113$
   22CF 80 F8               446 	sjmp	00101$
   22D1                     447 00110$:
                            448 ;	TIMER.c:40: else if(!Timer0.finishMili){
   22D1 EA                  449 	mov	a,r2
   22D2 70 38               450 	jnz	00113$
                            451 ;	TIMER.c:41: Timer0.cycles = 1;
   22D4 90 02 CB            452 	mov	dptr,#_Timer0
   22D7 74 01               453 	mov	a,#0x01
   22D9 F0                  454 	movx	@dptr,a
   22DA A3                  455 	inc	dptr
   22DB E4                  456 	clr	a
   22DC F0                  457 	movx	@dptr,a
                            458 ;	TIMER.c:42: Timer0.lastClock = 65535 - time;
   22DD 90 02 D3            459 	mov	dptr,#_delay_time_1_1
   22E0 E0                  460 	movx	a,@dptr
   22E1 FA                  461 	mov	r2,a
   22E2 A3                  462 	inc	dptr
   22E3 E0                  463 	movx	a,@dptr
   22E4 FB                  464 	mov	r3,a
   22E5 E4                  465 	clr	a
   22E6 FC                  466 	mov	r4,a
   22E7 FD                  467 	mov	r5,a
   22E8 74 FF               468 	mov	a,#0xFF
   22EA C3                  469 	clr	c
   22EB 9A                  470 	subb	a,r2
   22EC FA                  471 	mov	r2,a
   22ED 74 FF               472 	mov	a,#0xFF
   22EF 9B                  473 	subb	a,r3
   22F0 FB                  474 	mov	r3,a
   22F1 E4                  475 	clr	a
   22F2 9C                  476 	subb	a,r4
   22F3 FC                  477 	mov	r4,a
   22F4 E4                  478 	clr	a
   22F5 9D                  479 	subb	a,r5
   22F6 FD                  480 	mov	r5,a
   22F7 90 02 CD            481 	mov	dptr,#(_Timer0 + 0x0002)
   22FA EA                  482 	mov	a,r2
   22FB F0                  483 	movx	@dptr,a
   22FC A3                  484 	inc	dptr
   22FD EB                  485 	mov	a,r3
   22FE F0                  486 	movx	@dptr,a
                            487 ;	TIMER.c:43: TR0 = 1;
   22FF D2 8C               488 	setb	_TR0
                            489 ;	TIMER.c:45: while(!Timer0.finishMicro);
   2301                     490 00104$:
   2301 90 02 D0            491 	mov	dptr,#(_Timer0 + 0x0005)
   2304 E0                  492 	movx	a,@dptr
   2305 60 FA               493 	jz	00104$
                            494 ;	TIMER.c:47: Timer0.finishMicro = 0;
   2307 90 02 D0            495 	mov	dptr,#(_Timer0 + 0x0005)
   230A E4                  496 	clr	a
   230B F0                  497 	movx	@dptr,a
   230C                     498 00113$:
   230C 22                  499 	ret
                            500 ;------------------------------------------------------------
                            501 ;Allocation info for local variables in function 'timer'
                            502 ;------------------------------------------------------------
                            503 ;------------------------------------------------------------
                            504 ;	TIMER.c:57: void volatile timer() __interrupt 1{ 			//(slide aplicmicro 11_C.pdf pg.13)
                            505 ;	-----------------------------------------
                            506 ;	 function timer
                            507 ;	-----------------------------------------
   230D                     508 _timer:
   230D C0 E0               509 	push	acc
   230F C0 82               510 	push	dpl
   2311 C0 83               511 	push	dph
   2313 C0 02               512 	push	ar2
   2315 C0 03               513 	push	ar3
   2317 C0 04               514 	push	ar4
   2319 C0 05               515 	push	ar5
   231B C0 06               516 	push	ar6
   231D C0 07               517 	push	ar7
   231F C0 D0               518 	push	psw
   2321 75 D0 00            519 	mov	psw,#0x00
                            520 ;	TIMER.c:59: TH0 = 0; 												// Zerar os bits mais significativos do contador
   2324 75 8C 00            521 	mov	_TH0,#0x00
                            522 ;	TIMER.c:60: TL0 = 0; 												// Zerar os bits menos significativos do contador
   2327 75 8A 00            523 	mov	_TL0,#0x00
                            524 ;	TIMER.c:61: TF0 = 0;												// Zero a flag do contador
   232A C2 8D               525 	clr	_TF0
                            526 ;	TIMER.c:62: TR0 = 0;												// Paro timer0
   232C C2 8C               527 	clr	_TR0
                            528 ;	TIMER.c:64: if(Timer0.cycles > 1){
   232E 90 02 CB            529 	mov	dptr,#_Timer0
   2331 E0                  530 	movx	a,@dptr
   2332 FA                  531 	mov	r2,a
   2333 A3                  532 	inc	dptr
   2334 E0                  533 	movx	a,@dptr
   2335 FB                  534 	mov	r3,a
   2336 C3                  535 	clr	c
   2337 74 01               536 	mov	a,#0x01
   2339 9A                  537 	subb	a,r2
   233A E4                  538 	clr	a
   233B 9B                  539 	subb	a,r3
   233C 50 14               540 	jnc	00107$
                            541 ;	TIMER.c:65: Timer0.cycles--;									// decrementa cycles
   233E EA                  542 	mov	a,r2
   233F 24 FF               543 	add	a,#0xff
   2341 FC                  544 	mov	r4,a
   2342 EB                  545 	mov	a,r3
   2343 34 FF               546 	addc	a,#0xff
   2345 FD                  547 	mov	r5,a
   2346 90 02 CB            548 	mov	dptr,#_Timer0
   2349 EC                  549 	mov	a,r4
   234A F0                  550 	movx	@dptr,a
   234B A3                  551 	inc	dptr
   234C ED                  552 	mov	a,r5
   234D F0                  553 	movx	@dptr,a
                            554 ;	TIMER.c:66: TR0 = 1;											// inicia contador
   234E D2 8C               555 	setb	_TR0
   2350 80 3E               556 	sjmp	00109$
   2352                     557 00107$:
                            558 ;	TIMER.c:68: else if(Timer0.cycles == 1){
   2352 BA 01 32            559 	cjne	r2,#0x01,00104$
   2355 BB 00 2F            560 	cjne	r3,#0x00,00104$
                            561 ;	TIMER.c:69: TH0 = Timer0.lastClock & 0xFF ;						// Atribui ao ultimo timer o valor dos bits mais significativos
   2358 90 02 CD            562 	mov	dptr,#(_Timer0 + 0x0002)
   235B E0                  563 	movx	a,@dptr
   235C FC                  564 	mov	r4,a
   235D A3                  565 	inc	dptr
   235E E0                  566 	movx	a,@dptr
   235F FD                  567 	mov	r5,a
   2360 8C 06               568 	mov	ar6,r4
   2362 7F 00               569 	mov	r7,#0x00
   2364 8E 8C               570 	mov	_TH0,r6
                            571 ;	TIMER.c:70: TL0 = Timer0.lastClock >> 8;						// Atribui ao ultimo timer o valor dos bits menos significativos
   2366 8D 8A               572 	mov	_TL0,r5
                            573 ;	TIMER.c:71: Timer0.cycles--;									// decrementa cycles
   2368 90 02 CB            574 	mov	dptr,#_Timer0
   236B E0                  575 	movx	a,@dptr
   236C FC                  576 	mov	r4,a
   236D A3                  577 	inc	dptr
   236E E0                  578 	movx	a,@dptr
   236F FD                  579 	mov	r5,a
   2370 1C                  580 	dec	r4
   2371 BC FF 01            581 	cjne	r4,#0xff,00117$
   2374 1D                  582 	dec	r5
   2375                     583 00117$:
   2375 90 02 CB            584 	mov	dptr,#_Timer0
   2378 EC                  585 	mov	a,r4
   2379 F0                  586 	movx	@dptr,a
   237A A3                  587 	inc	dptr
   237B ED                  588 	mov	a,r5
   237C F0                  589 	movx	@dptr,a
                            590 ;	TIMER.c:73: Timer0.finishMicro = 1;
   237D 90 02 D0            591 	mov	dptr,#(_Timer0 + 0x0005)
   2380 74 01               592 	mov	a,#0x01
   2382 F0                  593 	movx	@dptr,a
                            594 ;	TIMER.c:75: TR0 = 1;											// inicia contador
   2383 D2 8C               595 	setb	_TR0
   2385 80 09               596 	sjmp	00109$
   2387                     597 00104$:
                            598 ;	TIMER.c:77: else if(Timer0.cycles == 0){
   2387 EA                  599 	mov	a,r2
   2388 4B                  600 	orl	a,r3
   2389 70 05               601 	jnz	00109$
                            602 ;	TIMER.c:78: Timer0.finishMili = 0;								// finish é uma flag que indica que o tempo acabou
   238B 90 02 CF            603 	mov	dptr,#(_Timer0 + 0x0004)
   238E E4                  604 	clr	a
   238F F0                  605 	movx	@dptr,a
   2390                     606 00109$:
   2390 D0 D0               607 	pop	psw
   2392 D0 07               608 	pop	ar7
   2394 D0 06               609 	pop	ar6
   2396 D0 05               610 	pop	ar5
   2398 D0 04               611 	pop	ar4
   239A D0 03               612 	pop	ar3
   239C D0 02               613 	pop	ar2
   239E D0 83               614 	pop	dph
   23A0 D0 82               615 	pop	dpl
   23A2 D0 E0               616 	pop	acc
   23A4 32                  617 	reti
                            618 ;	eliminated unneeded push/pop b
                            619 	.area CSEG    (CODE)
                            620 	.area CONST   (CODE)
                            621 	.area XINIT   (CODE)
                            622 	.area CABS    (ABS,CODE)
