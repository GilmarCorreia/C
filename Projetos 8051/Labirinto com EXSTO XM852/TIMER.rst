                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Wed Aug 21 09:12:24 2019
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
   02CC                     251 _Timer0::
   02CC                     252 	.ds 7
   02D3                     253 _delay_PARM_2:
   02D3                     254 	.ds 1
   02D4                     255 _delay_time_1_1:
   02D4                     256 	.ds 2
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
   229A                     299 _timerConfig:
                    0002    300 	ar2 = 0x02
                    0003    301 	ar3 = 0x03
                    0004    302 	ar4 = 0x04
                    0005    303 	ar5 = 0x05
                    0006    304 	ar6 = 0x06
                    0007    305 	ar7 = 0x07
                    0000    306 	ar0 = 0x00
                    0001    307 	ar1 = 0x01
                            308 ;	TIMER.c:7: TH0 = 0; 					// Zerar os bits mais significativos do temporizador TIMER0
   229A 75 8C 00            309 	mov	_TH0,#0x00
                            310 ;	TIMER.c:8: TL0 = 0; 					// Zerar os bits menos significativos do temporizador TIMER0
   229D 75 8A 00            311 	mov	_TL0,#0x00
                            312 ;	TIMER.c:10: TMOD = 0x21; 				// Habilitando modo 8-bits recarga automática (TIMER1) e contagem modo 16-bits (TIMER0) (slide sistmicro 04_Timer.pdf pg.8)
   22A0 75 89 21            313 	mov	_TMOD,#0x21
                            314 ;	TIMER.c:12: TH1 = 0xFD; 				// Zerar os bits mais significativos do temporizador - HABILITANDO COMUNICAÇÃO 9600 bps(usando 8 bits)
   22A3 75 8D FD            315 	mov	_TH1,#0xFD
                            316 ;	TIMER.c:13: TL1 = 0xFD; 				// Zerar os bits menos significativos do temporizador - HABILITANDO COMUNICAÇÃO 9600 bps (usando 8 bits)
   22A6 75 8B FD            317 	mov	_TL1,#0xFD
                            318 ;	TIMER.c:15: TR1 = 1;        			// Iniciando o T1
   22A9 D2 8E               319 	setb	_TR1
                            320 ;	TIMER.c:17: P1 = 0x00;
   22AB 75 90 00            321 	mov	_P1,#0x00
                            322 ;	TIMER.c:19: Timer0.finishMicro = 0;
   22AE 90 02 D1            323 	mov	dptr,#(_Timer0 + 0x0005)
                            324 ;	TIMER.c:20: Timer0.finishMili = 0;
   22B1 E4                  325 	clr	a
   22B2 F0                  326 	movx	@dptr,a
   22B3 90 02 D0            327 	mov	dptr,#(_Timer0 + 0x0004)
   22B6 F0                  328 	movx	@dptr,a
   22B7 22                  329 	ret
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
   22B8                     340 _delay:
   22B8 AA 83               341 	mov	r2,dph
   22BA E5 82               342 	mov	a,dpl
   22BC 90 02 D4            343 	mov	dptr,#_delay_time_1_1
   22BF F0                  344 	movx	@dptr,a
   22C0 A3                  345 	inc	dptr
   22C1 EA                  346 	mov	a,r2
   22C2 F0                  347 	movx	@dptr,a
                            348 ;	TIMER.c:29: Timer0.flag=1;
   22C3 90 02 D2            349 	mov	dptr,#(_Timer0 + 0x0006)
   22C6 74 01               350 	mov	a,#0x01
   22C8 F0                  351 	movx	@dptr,a
                            352 ;	TIMER.c:31: if(!Timer0.finishMili && miliseconds){	
   22C9 90 02 D0            353 	mov	dptr,#(_Timer0 + 0x0004)
   22CC E0                  354 	movx	a,@dptr
   22CD FA                  355 	mov	r2,a
   22CE 60 03               356 	jz	00122$
   22D0 02 23 56            357 	ljmp	00110$
   22D3                     358 00122$:
   22D3 90 02 D3            359 	mov	dptr,#_delay_PARM_2
   22D6 E0                  360 	movx	a,@dptr
   22D7 FB                  361 	mov	r3,a
   22D8 60 7C               362 	jz	00110$
                            363 ;	TIMER.c:32: Timer0.cycles = time/65;
   22DA 90 02 D4            364 	mov	dptr,#_delay_time_1_1
   22DD E0                  365 	movx	a,@dptr
   22DE FB                  366 	mov	r3,a
   22DF A3                  367 	inc	dptr
   22E0 E0                  368 	movx	a,@dptr
   22E1 FC                  369 	mov	r4,a
   22E2 90 03 88            370 	mov	dptr,#__divuint_PARM_2
   22E5 74 41               371 	mov	a,#0x41
   22E7 F0                  372 	movx	@dptr,a
   22E8 E4                  373 	clr	a
   22E9 A3                  374 	inc	dptr
   22EA F0                  375 	movx	@dptr,a
   22EB 8B 82               376 	mov	dpl,r3
   22ED 8C 83               377 	mov	dph,r4
   22EF C0 03               378 	push	ar3
   22F1 C0 04               379 	push	ar4
   22F3 12 32 C0            380 	lcall	__divuint
   22F6 AD 82               381 	mov	r5,dpl
   22F8 AE 83               382 	mov	r6,dph
   22FA D0 04               383 	pop	ar4
   22FC D0 03               384 	pop	ar3
   22FE 90 02 CC            385 	mov	dptr,#_Timer0
   2301 ED                  386 	mov	a,r5
   2302 F0                  387 	movx	@dptr,a
   2303 A3                  388 	inc	dptr
   2304 EE                  389 	mov	a,r6
   2305 F0                  390 	movx	@dptr,a
                            391 ;	TIMER.c:33: Timer0.lastClock = 65535 - ((time % 65)*1000);
   2306 90 03 91            392 	mov	dptr,#__moduint_PARM_2
   2309 74 41               393 	mov	a,#0x41
   230B F0                  394 	movx	@dptr,a
   230C E4                  395 	clr	a
   230D A3                  396 	inc	dptr
   230E F0                  397 	movx	@dptr,a
   230F 8B 82               398 	mov	dpl,r3
   2311 8C 83               399 	mov	dph,r4
   2313 12 33 93            400 	lcall	__moduint
   2316 AB 82               401 	mov	r3,dpl
   2318 AC 83               402 	mov	r4,dph
   231A 90 03 8F            403 	mov	dptr,#__mulint_PARM_2
   231D EB                  404 	mov	a,r3
   231E F0                  405 	movx	@dptr,a
   231F A3                  406 	inc	dptr
   2320 EC                  407 	mov	a,r4
   2321 F0                  408 	movx	@dptr,a
   2322 90 03 E8            409 	mov	dptr,#0x03E8
   2325 12 33 73            410 	lcall	__mulint
   2328 AB 82               411 	mov	r3,dpl
   232A AC 83               412 	mov	r4,dph
   232C E4                  413 	clr	a
   232D FD                  414 	mov	r5,a
   232E FE                  415 	mov	r6,a
   232F 74 FF               416 	mov	a,#0xFF
   2331 C3                  417 	clr	c
   2332 9B                  418 	subb	a,r3
   2333 FB                  419 	mov	r3,a
   2334 74 FF               420 	mov	a,#0xFF
   2336 9C                  421 	subb	a,r4
   2337 FC                  422 	mov	r4,a
   2338 E4                  423 	clr	a
   2339 9D                  424 	subb	a,r5
   233A FD                  425 	mov	r5,a
   233B E4                  426 	clr	a
   233C 9E                  427 	subb	a,r6
   233D FE                  428 	mov	r6,a
   233E 90 02 CE            429 	mov	dptr,#(_Timer0 + 0x0002)
   2341 EB                  430 	mov	a,r3
   2342 F0                  431 	movx	@dptr,a
   2343 A3                  432 	inc	dptr
   2344 EC                  433 	mov	a,r4
   2345 F0                  434 	movx	@dptr,a
                            435 ;	TIMER.c:35: TR0 = 1;
   2346 D2 8C               436 	setb	_TR0
                            437 ;	TIMER.c:36: Timer0.finishMili = 1;
   2348 90 02 D0            438 	mov	dptr,#(_Timer0 + 0x0004)
   234B 74 01               439 	mov	a,#0x01
   234D F0                  440 	movx	@dptr,a
                            441 ;	TIMER.c:38: while(Timer0.finishMili);
   234E                     442 00101$:
   234E 90 02 D0            443 	mov	dptr,#(_Timer0 + 0x0004)
   2351 E0                  444 	movx	a,@dptr
   2352 60 3D               445 	jz	00113$
   2354 80 F8               446 	sjmp	00101$
   2356                     447 00110$:
                            448 ;	TIMER.c:40: else if(!Timer0.finishMili){
   2356 EA                  449 	mov	a,r2
   2357 70 38               450 	jnz	00113$
                            451 ;	TIMER.c:41: Timer0.cycles = 1;
   2359 90 02 CC            452 	mov	dptr,#_Timer0
   235C 74 01               453 	mov	a,#0x01
   235E F0                  454 	movx	@dptr,a
   235F A3                  455 	inc	dptr
   2360 E4                  456 	clr	a
   2361 F0                  457 	movx	@dptr,a
                            458 ;	TIMER.c:42: Timer0.lastClock = 65535 - time;
   2362 90 02 D4            459 	mov	dptr,#_delay_time_1_1
   2365 E0                  460 	movx	a,@dptr
   2366 FA                  461 	mov	r2,a
   2367 A3                  462 	inc	dptr
   2368 E0                  463 	movx	a,@dptr
   2369 FB                  464 	mov	r3,a
   236A E4                  465 	clr	a
   236B FC                  466 	mov	r4,a
   236C FD                  467 	mov	r5,a
   236D 74 FF               468 	mov	a,#0xFF
   236F C3                  469 	clr	c
   2370 9A                  470 	subb	a,r2
   2371 FA                  471 	mov	r2,a
   2372 74 FF               472 	mov	a,#0xFF
   2374 9B                  473 	subb	a,r3
   2375 FB                  474 	mov	r3,a
   2376 E4                  475 	clr	a
   2377 9C                  476 	subb	a,r4
   2378 FC                  477 	mov	r4,a
   2379 E4                  478 	clr	a
   237A 9D                  479 	subb	a,r5
   237B FD                  480 	mov	r5,a
   237C 90 02 CE            481 	mov	dptr,#(_Timer0 + 0x0002)
   237F EA                  482 	mov	a,r2
   2380 F0                  483 	movx	@dptr,a
   2381 A3                  484 	inc	dptr
   2382 EB                  485 	mov	a,r3
   2383 F0                  486 	movx	@dptr,a
                            487 ;	TIMER.c:43: TR0 = 1;
   2384 D2 8C               488 	setb	_TR0
                            489 ;	TIMER.c:45: while(!Timer0.finishMicro);
   2386                     490 00104$:
   2386 90 02 D1            491 	mov	dptr,#(_Timer0 + 0x0005)
   2389 E0                  492 	movx	a,@dptr
   238A 60 FA               493 	jz	00104$
                            494 ;	TIMER.c:47: Timer0.finishMicro = 0;
   238C 90 02 D1            495 	mov	dptr,#(_Timer0 + 0x0005)
   238F E4                  496 	clr	a
   2390 F0                  497 	movx	@dptr,a
   2391                     498 00113$:
   2391 22                  499 	ret
                            500 ;------------------------------------------------------------
                            501 ;Allocation info for local variables in function 'timer'
                            502 ;------------------------------------------------------------
                            503 ;------------------------------------------------------------
                            504 ;	TIMER.c:57: void volatile timer() __interrupt 1{ 			//(slide aplicmicro 11_C.pdf pg.13)
                            505 ;	-----------------------------------------
                            506 ;	 function timer
                            507 ;	-----------------------------------------
   2392                     508 _timer:
   2392 C0 E0               509 	push	acc
   2394 C0 82               510 	push	dpl
   2396 C0 83               511 	push	dph
   2398 C0 02               512 	push	ar2
   239A C0 03               513 	push	ar3
   239C C0 04               514 	push	ar4
   239E C0 05               515 	push	ar5
   23A0 C0 06               516 	push	ar6
   23A2 C0 07               517 	push	ar7
   23A4 C0 D0               518 	push	psw
   23A6 75 D0 00            519 	mov	psw,#0x00
                            520 ;	TIMER.c:59: TH0 = 0; 												// Zerar os bits mais significativos do contador
   23A9 75 8C 00            521 	mov	_TH0,#0x00
                            522 ;	TIMER.c:60: TL0 = 0; 												// Zerar os bits menos significativos do contador
   23AC 75 8A 00            523 	mov	_TL0,#0x00
                            524 ;	TIMER.c:61: TF0 = 0;												// Zero a flag do contador
   23AF C2 8D               525 	clr	_TF0
                            526 ;	TIMER.c:62: TR0 = 0;												// Paro timer0
   23B1 C2 8C               527 	clr	_TR0
                            528 ;	TIMER.c:64: if(Timer0.cycles > 1){
   23B3 90 02 CC            529 	mov	dptr,#_Timer0
   23B6 E0                  530 	movx	a,@dptr
   23B7 FA                  531 	mov	r2,a
   23B8 A3                  532 	inc	dptr
   23B9 E0                  533 	movx	a,@dptr
   23BA FB                  534 	mov	r3,a
   23BB C3                  535 	clr	c
   23BC 74 01               536 	mov	a,#0x01
   23BE 9A                  537 	subb	a,r2
   23BF E4                  538 	clr	a
   23C0 9B                  539 	subb	a,r3
   23C1 50 14               540 	jnc	00107$
                            541 ;	TIMER.c:65: Timer0.cycles--;									// decrementa cycles
   23C3 EA                  542 	mov	a,r2
   23C4 24 FF               543 	add	a,#0xff
   23C6 FC                  544 	mov	r4,a
   23C7 EB                  545 	mov	a,r3
   23C8 34 FF               546 	addc	a,#0xff
   23CA FD                  547 	mov	r5,a
   23CB 90 02 CC            548 	mov	dptr,#_Timer0
   23CE EC                  549 	mov	a,r4
   23CF F0                  550 	movx	@dptr,a
   23D0 A3                  551 	inc	dptr
   23D1 ED                  552 	mov	a,r5
   23D2 F0                  553 	movx	@dptr,a
                            554 ;	TIMER.c:66: TR0 = 1;											// inicia contador
   23D3 D2 8C               555 	setb	_TR0
   23D5 80 3E               556 	sjmp	00109$
   23D7                     557 00107$:
                            558 ;	TIMER.c:68: else if(Timer0.cycles == 1){
   23D7 BA 01 32            559 	cjne	r2,#0x01,00104$
   23DA BB 00 2F            560 	cjne	r3,#0x00,00104$
                            561 ;	TIMER.c:69: TH0 = Timer0.lastClock & 0xFF ;						// Atribui ao ultimo timer o valor dos bits mais significativos
   23DD 90 02 CE            562 	mov	dptr,#(_Timer0 + 0x0002)
   23E0 E0                  563 	movx	a,@dptr
   23E1 FC                  564 	mov	r4,a
   23E2 A3                  565 	inc	dptr
   23E3 E0                  566 	movx	a,@dptr
   23E4 FD                  567 	mov	r5,a
   23E5 8C 06               568 	mov	ar6,r4
   23E7 7F 00               569 	mov	r7,#0x00
   23E9 8E 8C               570 	mov	_TH0,r6
                            571 ;	TIMER.c:70: TL0 = Timer0.lastClock >> 8;						// Atribui ao ultimo timer o valor dos bits menos significativos
   23EB 8D 8A               572 	mov	_TL0,r5
                            573 ;	TIMER.c:71: Timer0.cycles--;									// decrementa cycles
   23ED 90 02 CC            574 	mov	dptr,#_Timer0
   23F0 E0                  575 	movx	a,@dptr
   23F1 FC                  576 	mov	r4,a
   23F2 A3                  577 	inc	dptr
   23F3 E0                  578 	movx	a,@dptr
   23F4 FD                  579 	mov	r5,a
   23F5 1C                  580 	dec	r4
   23F6 BC FF 01            581 	cjne	r4,#0xff,00117$
   23F9 1D                  582 	dec	r5
   23FA                     583 00117$:
   23FA 90 02 CC            584 	mov	dptr,#_Timer0
   23FD EC                  585 	mov	a,r4
   23FE F0                  586 	movx	@dptr,a
   23FF A3                  587 	inc	dptr
   2400 ED                  588 	mov	a,r5
   2401 F0                  589 	movx	@dptr,a
                            590 ;	TIMER.c:73: Timer0.finishMicro = 1;
   2402 90 02 D1            591 	mov	dptr,#(_Timer0 + 0x0005)
   2405 74 01               592 	mov	a,#0x01
   2407 F0                  593 	movx	@dptr,a
                            594 ;	TIMER.c:75: TR0 = 1;											// inicia contador
   2408 D2 8C               595 	setb	_TR0
   240A 80 09               596 	sjmp	00109$
   240C                     597 00104$:
                            598 ;	TIMER.c:77: else if(Timer0.cycles == 0){
   240C EA                  599 	mov	a,r2
   240D 4B                  600 	orl	a,r3
   240E 70 05               601 	jnz	00109$
                            602 ;	TIMER.c:78: Timer0.finishMili = 0;								// finish é uma flag que indica que o tempo acabou
   2410 90 02 D0            603 	mov	dptr,#(_Timer0 + 0x0004)
   2413 E4                  604 	clr	a
   2414 F0                  605 	movx	@dptr,a
   2415                     606 00109$:
   2415 D0 D0               607 	pop	psw
   2417 D0 07               608 	pop	ar7
   2419 D0 06               609 	pop	ar6
   241B D0 05               610 	pop	ar5
   241D D0 04               611 	pop	ar4
   241F D0 03               612 	pop	ar3
   2421 D0 02               613 	pop	ar2
   2423 D0 83               614 	pop	dph
   2425 D0 82               615 	pop	dpl
   2427 D0 E0               616 	pop	acc
   2429 32                  617 	reti
                            618 ;	eliminated unneeded push/pop b
                            619 	.area CSEG    (CODE)
                            620 	.area CONST   (CODE)
                            621 	.area XINIT   (CODE)
                            622 	.area CABS    (ABS,CODE)
