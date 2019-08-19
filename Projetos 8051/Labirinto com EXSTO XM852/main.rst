                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Mon Aug 19 00:21:26 2019
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _setFinish
                             14 	.globl _setLevel5
                             15 	.globl _setLevel4
                             16 	.globl _setLevel3
                             17 	.globl _setLevel2
                             18 	.globl _setLevel1
                             19 	.globl _setInstructions
                             20 	.globl _setInitialScreen
                             21 	.globl _configs
                             22 	.globl _interruptConfig
                             23 	.globl _CY
                             24 	.globl _AC
                             25 	.globl _F0
                             26 	.globl _RS1
                             27 	.globl _RS0
                             28 	.globl _OV
                             29 	.globl _F1
                             30 	.globl _P
                             31 	.globl _PS
                             32 	.globl _PT1
                             33 	.globl _PX1
                             34 	.globl _PT0
                             35 	.globl _PX0
                             36 	.globl _RD
                             37 	.globl _WR
                             38 	.globl _T1
                             39 	.globl _T0
                             40 	.globl _INT1
                             41 	.globl _INT0
                             42 	.globl _TXD
                             43 	.globl _RXD
                             44 	.globl _P3_7
                             45 	.globl _P3_6
                             46 	.globl _P3_5
                             47 	.globl _P3_4
                             48 	.globl _P3_3
                             49 	.globl _P3_2
                             50 	.globl _P3_1
                             51 	.globl _P3_0
                             52 	.globl _EA
                             53 	.globl _ES
                             54 	.globl _ET1
                             55 	.globl _EX1
                             56 	.globl _ET0
                             57 	.globl _EX0
                             58 	.globl _P2_7
                             59 	.globl _P2_6
                             60 	.globl _P2_5
                             61 	.globl _P2_4
                             62 	.globl _P2_3
                             63 	.globl _P2_2
                             64 	.globl _P2_1
                             65 	.globl _P2_0
                             66 	.globl _SM0
                             67 	.globl _SM1
                             68 	.globl _SM2
                             69 	.globl _REN
                             70 	.globl _TB8
                             71 	.globl _RB8
                             72 	.globl _TI
                             73 	.globl _RI
                             74 	.globl _P1_7
                             75 	.globl _P1_6
                             76 	.globl _P1_5
                             77 	.globl _P1_4
                             78 	.globl _P1_3
                             79 	.globl _P1_2
                             80 	.globl _P1_1
                             81 	.globl _P1_0
                             82 	.globl _TF1
                             83 	.globl _TR1
                             84 	.globl _TF0
                             85 	.globl _TR0
                             86 	.globl _IE1
                             87 	.globl _IT1
                             88 	.globl _IE0
                             89 	.globl _IT0
                             90 	.globl _P0_7
                             91 	.globl _P0_6
                             92 	.globl _P0_5
                             93 	.globl _P0_4
                             94 	.globl _P0_3
                             95 	.globl _P0_2
                             96 	.globl _P0_1
                             97 	.globl _P0_0
                             98 	.globl _B
                             99 	.globl _ACC
                            100 	.globl _PSW
                            101 	.globl _IP
                            102 	.globl _P3
                            103 	.globl _IE
                            104 	.globl _P2
                            105 	.globl _SBUF
                            106 	.globl _SCON
                            107 	.globl _P1
                            108 	.globl _TH1
                            109 	.globl _TH0
                            110 	.globl _TL1
                            111 	.globl _TL0
                            112 	.globl _TMOD
                            113 	.globl _TCON
                            114 	.globl _PCON
                            115 	.globl _DPH
                            116 	.globl _DPL
                            117 	.globl _SP
                            118 	.globl _P0
                            119 	.globl _player
                            120 	.globl _Timer0
                            121 	.globl _map
                            122 	.globl _SCmap
                            123 ;--------------------------------------------------------
                            124 ; special function registers
                            125 ;--------------------------------------------------------
                            126 	.area RSEG    (DATA)
                    0080    127 _P0	=	0x0080
                    0081    128 _SP	=	0x0081
                    0082    129 _DPL	=	0x0082
                    0083    130 _DPH	=	0x0083
                    0087    131 _PCON	=	0x0087
                    0088    132 _TCON	=	0x0088
                    0089    133 _TMOD	=	0x0089
                    008A    134 _TL0	=	0x008a
                    008B    135 _TL1	=	0x008b
                    008C    136 _TH0	=	0x008c
                    008D    137 _TH1	=	0x008d
                    0090    138 _P1	=	0x0090
                    0098    139 _SCON	=	0x0098
                    0099    140 _SBUF	=	0x0099
                    00A0    141 _P2	=	0x00a0
                    00A8    142 _IE	=	0x00a8
                    00B0    143 _P3	=	0x00b0
                    00B8    144 _IP	=	0x00b8
                    00D0    145 _PSW	=	0x00d0
                    00E0    146 _ACC	=	0x00e0
                    00F0    147 _B	=	0x00f0
                            148 ;--------------------------------------------------------
                            149 ; special function bits
                            150 ;--------------------------------------------------------
                            151 	.area RSEG    (DATA)
                    0080    152 _P0_0	=	0x0080
                    0081    153 _P0_1	=	0x0081
                    0082    154 _P0_2	=	0x0082
                    0083    155 _P0_3	=	0x0083
                    0084    156 _P0_4	=	0x0084
                    0085    157 _P0_5	=	0x0085
                    0086    158 _P0_6	=	0x0086
                    0087    159 _P0_7	=	0x0087
                    0088    160 _IT0	=	0x0088
                    0089    161 _IE0	=	0x0089
                    008A    162 _IT1	=	0x008a
                    008B    163 _IE1	=	0x008b
                    008C    164 _TR0	=	0x008c
                    008D    165 _TF0	=	0x008d
                    008E    166 _TR1	=	0x008e
                    008F    167 _TF1	=	0x008f
                    0090    168 _P1_0	=	0x0090
                    0091    169 _P1_1	=	0x0091
                    0092    170 _P1_2	=	0x0092
                    0093    171 _P1_3	=	0x0093
                    0094    172 _P1_4	=	0x0094
                    0095    173 _P1_5	=	0x0095
                    0096    174 _P1_6	=	0x0096
                    0097    175 _P1_7	=	0x0097
                    0098    176 _RI	=	0x0098
                    0099    177 _TI	=	0x0099
                    009A    178 _RB8	=	0x009a
                    009B    179 _TB8	=	0x009b
                    009C    180 _REN	=	0x009c
                    009D    181 _SM2	=	0x009d
                    009E    182 _SM1	=	0x009e
                    009F    183 _SM0	=	0x009f
                    00A0    184 _P2_0	=	0x00a0
                    00A1    185 _P2_1	=	0x00a1
                    00A2    186 _P2_2	=	0x00a2
                    00A3    187 _P2_3	=	0x00a3
                    00A4    188 _P2_4	=	0x00a4
                    00A5    189 _P2_5	=	0x00a5
                    00A6    190 _P2_6	=	0x00a6
                    00A7    191 _P2_7	=	0x00a7
                    00A8    192 _EX0	=	0x00a8
                    00A9    193 _ET0	=	0x00a9
                    00AA    194 _EX1	=	0x00aa
                    00AB    195 _ET1	=	0x00ab
                    00AC    196 _ES	=	0x00ac
                    00AF    197 _EA	=	0x00af
                    00B0    198 _P3_0	=	0x00b0
                    00B1    199 _P3_1	=	0x00b1
                    00B2    200 _P3_2	=	0x00b2
                    00B3    201 _P3_3	=	0x00b3
                    00B4    202 _P3_4	=	0x00b4
                    00B5    203 _P3_5	=	0x00b5
                    00B6    204 _P3_6	=	0x00b6
                    00B7    205 _P3_7	=	0x00b7
                    00B0    206 _RXD	=	0x00b0
                    00B1    207 _TXD	=	0x00b1
                    00B2    208 _INT0	=	0x00b2
                    00B3    209 _INT1	=	0x00b3
                    00B4    210 _T0	=	0x00b4
                    00B5    211 _T1	=	0x00b5
                    00B6    212 _WR	=	0x00b6
                    00B7    213 _RD	=	0x00b7
                    00B8    214 _PX0	=	0x00b8
                    00B9    215 _PT0	=	0x00b9
                    00BA    216 _PX1	=	0x00ba
                    00BB    217 _PT1	=	0x00bb
                    00BC    218 _PS	=	0x00bc
                    00D0    219 _P	=	0x00d0
                    00D1    220 _F1	=	0x00d1
                    00D2    221 _OV	=	0x00d2
                    00D3    222 _RS0	=	0x00d3
                    00D4    223 _RS1	=	0x00d4
                    00D5    224 _F0	=	0x00d5
                    00D6    225 _AC	=	0x00d6
                    00D7    226 _CY	=	0x00d7
                            227 ;--------------------------------------------------------
                            228 ; overlayable register banks
                            229 ;--------------------------------------------------------
                            230 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     231 	.ds 8
                            232 ;--------------------------------------------------------
                            233 ; internal ram data
                            234 ;--------------------------------------------------------
                            235 	.area DSEG    (DATA)
                            236 ;--------------------------------------------------------
                            237 ; overlayable items in internal ram 
                            238 ;--------------------------------------------------------
                            239 	.area OSEG    (OVR,DATA)
                            240 ;--------------------------------------------------------
                            241 ; Stack segment in internal ram 
                            242 ;--------------------------------------------------------
                            243 	.area	SSEG	(DATA)
   0021                     244 __start__stack:
   0021                     245 	.ds	1
                            246 
                            247 ;--------------------------------------------------------
                            248 ; indirectly addressable internal ram data
                            249 ;--------------------------------------------------------
                            250 	.area ISEG    (DATA)
                            251 ;--------------------------------------------------------
                            252 ; absolute internal ram data
                            253 ;--------------------------------------------------------
                            254 	.area IABS    (ABS,DATA)
                            255 	.area IABS    (ABS,DATA)
                            256 ;--------------------------------------------------------
                            257 ; bit data
                            258 ;--------------------------------------------------------
                            259 	.area BSEG    (BIT)
                            260 ;--------------------------------------------------------
                            261 ; paged external ram data
                            262 ;--------------------------------------------------------
                            263 	.area PSEG    (PAG,XDATA)
                            264 ;--------------------------------------------------------
                            265 ; external ram data
                            266 ;--------------------------------------------------------
                            267 	.area XSEG    (XDATA)
                    FFC2    268 _winstLCD	=	0xffc2
                    FFD2    269 _wdataLCD	=	0xffd2
                    FFE2    270 _rinstLCD	=	0xffe2
                    FFF2    271 _rdataLCD	=	0xfff2
   0000                     272 _point:
   0000                     273 	.ds 8
   0008                     274 _SCmap::
   0008                     275 	.ds 64
   0048                     276 _map::
   0048                     277 	.ds 64
   0088                     278 _Timer0::
   0088                     279 	.ds 7
                    FFC4    280 _dacWrite	=	0xffc4
   008F                     281 _player::
   008F                     282 	.ds 3
   0092                     283 _setInitialScreen_control_1_1:
   0092                     284 	.ds 1
   0093                     285 _setLevel1_control_1_1:
   0093                     286 	.ds 1
   0094                     287 _setLevel2_control_1_1:
   0094                     288 	.ds 1
   0095                     289 _setLevel3_control_1_1:
   0095                     290 	.ds 1
   0096                     291 _setLevel4_control_1_1:
   0096                     292 	.ds 1
   0097                     293 _setLevel5_control_1_1:
   0097                     294 	.ds 1
                            295 ;--------------------------------------------------------
                            296 ; absolute external ram data
                            297 ;--------------------------------------------------------
                            298 	.area XABS    (ABS,XDATA)
                            299 ;--------------------------------------------------------
                            300 ; external initialized ram data
                            301 ;--------------------------------------------------------
                            302 	.area XISEG   (XDATA)
   0397                     303 _rxMsg:
   0397                     304 	.ds 1
                            305 	.area HOME    (CODE)
                            306 	.area GSINIT0 (CODE)
                            307 	.area GSINIT1 (CODE)
                            308 	.area GSINIT2 (CODE)
                            309 	.area GSINIT3 (CODE)
                            310 	.area GSINIT4 (CODE)
                            311 	.area GSINIT5 (CODE)
                            312 	.area GSINIT  (CODE)
                            313 	.area GSFINAL (CODE)
                            314 	.area CSEG    (CODE)
                            315 ;--------------------------------------------------------
                            316 ; interrupt vector 
                            317 ;--------------------------------------------------------
                            318 	.area HOME    (CODE)
   0000                     319 __interrupt_vect:
   0000 02 00 13            320 	ljmp	__sdcc_gsinit_startup
   0003 32                  321 	reti
   0004                     322 	.ds	7
   000B 02 23 E3            323 	ljmp	_timer
                            324 ;--------------------------------------------------------
                            325 ; global & static initialisations
                            326 ;--------------------------------------------------------
                            327 	.area HOME    (CODE)
                            328 	.area GSINIT  (CODE)
                            329 	.area GSFINAL (CODE)
                            330 	.area GSINIT  (CODE)
                            331 	.globl __sdcc_gsinit_startup
                            332 	.globl __sdcc_program_startup
                            333 	.globl __start__stack
                            334 	.globl __mcs51_genXINIT
                            335 	.globl __mcs51_genXRAMCLEAR
                            336 	.globl __mcs51_genRAMCLEAR
                            337 	.area GSFINAL (CODE)
   006C 02 00 0E            338 	ljmp	__sdcc_program_startup
                            339 ;--------------------------------------------------------
                            340 ; Home
                            341 ;--------------------------------------------------------
                            342 	.area HOME    (CODE)
                            343 	.area HOME    (CODE)
   000E                     344 __sdcc_program_startup:
   000E 12 07 97            345 	lcall	_main
                            346 ;	return from main will lock up
   0011 80 FE               347 	sjmp .
                            348 ;--------------------------------------------------------
                            349 ; code
                            350 ;--------------------------------------------------------
                            351 	.area CSEG    (CODE)
                            352 ;------------------------------------------------------------
                            353 ;Allocation info for local variables in function 'interruptConfig'
                            354 ;------------------------------------------------------------
                            355 ;------------------------------------------------------------
                            356 ;	main.c:19: void interruptConfig(){
                            357 ;	-----------------------------------------
                            358 ;	 function interruptConfig
                            359 ;	-----------------------------------------
   006F                     360 _interruptConfig:
                    0002    361 	ar2 = 0x02
                    0003    362 	ar3 = 0x03
                    0004    363 	ar4 = 0x04
                    0005    364 	ar5 = 0x05
                    0006    365 	ar6 = 0x06
                    0007    366 	ar7 = 0x07
                    0000    367 	ar0 = 0x00
                    0001    368 	ar1 = 0x01
                            369 ;	main.c:20: IE = 0x82; 								// Habilitando interrupções, Serial e timer0 (slide sistmicro 03_Interrup��es.pdf pg.9)
   006F 75 A8 82            370 	mov	_IE,#0x82
                            371 ;	main.c:21: IP = 0x08;								// Prioridade de interrupção Serial
   0072 75 B8 08            372 	mov	_IP,#0x08
   0075 22                  373 	ret
                            374 ;------------------------------------------------------------
                            375 ;Allocation info for local variables in function 'configs'
                            376 ;------------------------------------------------------------
                            377 ;------------------------------------------------------------
                            378 ;	main.c:24: void configs(){
                            379 ;	-----------------------------------------
                            380 ;	 function configs
                            381 ;	-----------------------------------------
   0076                     382 _configs:
                            383 ;	main.c:25: interruptConfig();						// Habilitando configuracoes
   0076 12 00 6F            384 	lcall	_interruptConfig
                            385 ;	main.c:26: timerConfig();
   0079 12 22 EB            386 	lcall	_timerConfig
                            387 ;	main.c:27: LCDconfig();
   007C 12 07 B2            388 	lcall	_LCDconfig
                            389 ;	main.c:28: serialConfig(1,player);
   007F 90 00 8F            390 	mov	dptr,#_player
   0082 E0                  391 	movx	a,@dptr
   0083 FA                  392 	mov	r2,a
   0084 A3                  393 	inc	dptr
   0085 E0                  394 	movx	a,@dptr
   0086 FB                  395 	mov	r3,a
   0087 A3                  396 	inc	dptr
   0088 E0                  397 	movx	a,@dptr
   0089 FC                  398 	mov	r4,a
   008A 90 03 67            399 	mov	dptr,#_serialConfig_PARM_2
   008D EA                  400 	mov	a,r2
   008E F0                  401 	movx	@dptr,a
   008F A3                  402 	inc	dptr
   0090 EB                  403 	mov	a,r3
   0091 F0                  404 	movx	@dptr,a
   0092 A3                  405 	inc	dptr
   0093 EC                  406 	mov	a,r4
   0094 F0                  407 	movx	@dptr,a
   0095 75 82 01            408 	mov	dpl,#0x01
   0098 02 24 CA            409 	ljmp	_serialConfig
                            410 ;------------------------------------------------------------
                            411 ;Allocation info for local variables in function 'setInitialScreen'
                            412 ;------------------------------------------------------------
                            413 ;control                   Allocated with name '_setInitialScreen_control_1_1'
                            414 ;------------------------------------------------------------
                            415 ;	main.c:32: void setInitialScreen(){
                            416 ;	-----------------------------------------
                            417 ;	 function setInitialScreen
                            418 ;	-----------------------------------------
   009B                     419 _setInitialScreen:
                            420 ;	main.c:34: unsigned char control = 1;
   009B 90 00 92            421 	mov	dptr,#_setInitialScreen_control_1_1
   009E 74 01               422 	mov	a,#0x01
   00A0 F0                  423 	movx	@dptr,a
                            424 ;	main.c:36: setMap1CGram();
   00A1 12 08 D0            425 	lcall	_setMap1CGram
                            426 ;	main.c:37: LCD_putTextAt("MAZE GAME",2,CENTER);
   00A4 90 02 72            427 	mov	dptr,#_LCD_putTextAt_PARM_2
   00A7 74 02               428 	mov	a,#0x02
   00A9 F0                  429 	movx	@dptr,a
   00AA 90 02 73            430 	mov	dptr,#_LCD_putTextAt_PARM_3
   00AD 74 02               431 	mov	a,#0x02
   00AF F0                  432 	movx	@dptr,a
   00B0 90 36 7C            433 	mov	dptr,#__str_0
   00B3 75 F0 80            434 	mov	b,#0x80
   00B6 12 1F 12            435 	lcall	_LCD_putTextAt
                            436 ;	main.c:39: while(control)
   00B9                     437 00101$:
   00B9 90 00 92            438 	mov	dptr,#_setInitialScreen_control_1_1
   00BC E0                  439 	movx	a,@dptr
   00BD FA                  440 	mov	r2,a
   00BE 60 20               441 	jz	00103$
                            442 ;	main.c:40: control = LCD_putText(" aperte ESPACO para iniciar",3, 250);
   00C0 90 02 89            443 	mov	dptr,#_LCD_putText_PARM_2
   00C3 74 03               444 	mov	a,#0x03
   00C5 F0                  445 	movx	@dptr,a
   00C6 90 02 8A            446 	mov	dptr,#_LCD_putText_PARM_3
   00C9 74 FA               447 	mov	a,#0xFA
   00CB F0                  448 	movx	@dptr,a
   00CC E4                  449 	clr	a
   00CD A3                  450 	inc	dptr
   00CE F0                  451 	movx	@dptr,a
   00CF 90 36 86            452 	mov	dptr,#__str_1
   00D2 75 F0 80            453 	mov	b,#0x80
   00D5 12 20 24            454 	lcall	_LCD_putText
   00D8 E5 82               455 	mov	a,dpl
   00DA 90 00 92            456 	mov	dptr,#_setInitialScreen_control_1_1
   00DD F0                  457 	movx	@dptr,a
   00DE 80 D9               458 	sjmp	00101$
   00E0                     459 00103$:
                            460 ;	main.c:42: clearLCD();
   00E0 02 1E CE            461 	ljmp	_clearLCD
                            462 ;------------------------------------------------------------
                            463 ;Allocation info for local variables in function 'setInstructions'
                            464 ;------------------------------------------------------------
                            465 ;------------------------------------------------------------
                            466 ;	main.c:46: void setInstructions(){
                            467 ;	-----------------------------------------
                            468 ;	 function setInstructions
                            469 ;	-----------------------------------------
   00E3                     470 _setInstructions:
                            471 ;	main.c:48: LCD_putTextAt("INSTRUCOES",1,CENTER);
   00E3 90 02 72            472 	mov	dptr,#_LCD_putTextAt_PARM_2
   00E6 74 01               473 	mov	a,#0x01
   00E8 F0                  474 	movx	@dptr,a
   00E9 90 02 73            475 	mov	dptr,#_LCD_putTextAt_PARM_3
   00EC 74 02               476 	mov	a,#0x02
   00EE F0                  477 	movx	@dptr,a
   00EF 90 36 A2            478 	mov	dptr,#__str_2
   00F2 75 F0 80            479 	mov	b,#0x80
   00F5 12 1F 12            480 	lcall	_LCD_putTextAt
                            481 ;	main.c:49: LCD_putTextAt("1) Movimente com",2,LEFT);
   00F8 90 02 72            482 	mov	dptr,#_LCD_putTextAt_PARM_2
   00FB 74 02               483 	mov	a,#0x02
   00FD F0                  484 	movx	@dptr,a
   00FE 90 02 73            485 	mov	dptr,#_LCD_putTextAt_PARM_3
   0101 74 01               486 	mov	a,#0x01
   0103 F0                  487 	movx	@dptr,a
   0104 90 36 AD            488 	mov	dptr,#__str_3
   0107 75 F0 80            489 	mov	b,#0x80
   010A 12 1F 12            490 	lcall	_LCD_putTextAt
                            491 ;	main.c:50: LCD_putTextAt("W,S,A,D ",3,CENTER);
   010D 90 02 72            492 	mov	dptr,#_LCD_putTextAt_PARM_2
   0110 74 03               493 	mov	a,#0x03
   0112 F0                  494 	movx	@dptr,a
   0113 90 02 73            495 	mov	dptr,#_LCD_putTextAt_PARM_3
   0116 74 02               496 	mov	a,#0x02
   0118 F0                  497 	movx	@dptr,a
   0119 90 36 BE            498 	mov	dptr,#__str_4
   011C 75 F0 80            499 	mov	b,#0x80
   011F 12 1F 12            500 	lcall	_LCD_putTextAt
                            501 ;	main.c:51: delay(3500,1);
   0122 90 02 D0            502 	mov	dptr,#_delay_PARM_2
   0125 74 01               503 	mov	a,#0x01
   0127 F0                  504 	movx	@dptr,a
   0128 90 0D AC            505 	mov	dptr,#0x0DAC
   012B 12 23 09            506 	lcall	_delay
                            507 ;	main.c:52: clearLCD();
   012E 12 1E CE            508 	lcall	_clearLCD
                            509 ;	main.c:54: LCD_putTextAt("COMO GANHAR",1,CENTER);
   0131 90 02 72            510 	mov	dptr,#_LCD_putTextAt_PARM_2
   0134 74 01               511 	mov	a,#0x01
   0136 F0                  512 	movx	@dptr,a
   0137 90 02 73            513 	mov	dptr,#_LCD_putTextAt_PARM_3
   013A 74 02               514 	mov	a,#0x02
   013C F0                  515 	movx	@dptr,a
   013D 90 36 C7            516 	mov	dptr,#__str_5
   0140 75 F0 80            517 	mov	b,#0x80
   0143 12 1F 12            518 	lcall	_LCD_putTextAt
                            519 ;	main.c:55: LCD_putTextAt("Ache uma saida ",2,LEFT);
   0146 90 02 72            520 	mov	dptr,#_LCD_putTextAt_PARM_2
   0149 74 02               521 	mov	a,#0x02
   014B F0                  522 	movx	@dptr,a
   014C 90 02 73            523 	mov	dptr,#_LCD_putTextAt_PARM_3
   014F 74 01               524 	mov	a,#0x01
   0151 F0                  525 	movx	@dptr,a
   0152 90 36 D3            526 	mov	dptr,#__str_6
   0155 75 F0 80            527 	mov	b,#0x80
   0158 12 1F 12            528 	lcall	_LCD_putTextAt
                            529 ;	main.c:56: LCD_putTextAt("para CIMA,DIREI-",3,LEFT);
   015B 90 02 72            530 	mov	dptr,#_LCD_putTextAt_PARM_2
   015E 74 03               531 	mov	a,#0x03
   0160 F0                  532 	movx	@dptr,a
   0161 90 02 73            533 	mov	dptr,#_LCD_putTextAt_PARM_3
   0164 74 01               534 	mov	a,#0x01
   0166 F0                  535 	movx	@dptr,a
   0167 90 36 E3            536 	mov	dptr,#__str_7
   016A 75 F0 80            537 	mov	b,#0x80
   016D 12 1F 12            538 	lcall	_LCD_putTextAt
                            539 ;	main.c:57: LCD_putTextAt("TA ou ESQUERDA",4,LEFT);
   0170 90 02 72            540 	mov	dptr,#_LCD_putTextAt_PARM_2
   0173 74 04               541 	mov	a,#0x04
   0175 F0                  542 	movx	@dptr,a
   0176 90 02 73            543 	mov	dptr,#_LCD_putTextAt_PARM_3
   0179 74 01               544 	mov	a,#0x01
   017B F0                  545 	movx	@dptr,a
   017C 90 36 F4            546 	mov	dptr,#__str_8
   017F 75 F0 80            547 	mov	b,#0x80
   0182 12 1F 12            548 	lcall	_LCD_putTextAt
                            549 ;	main.c:58: delay(3500,1);
   0185 90 02 D0            550 	mov	dptr,#_delay_PARM_2
   0188 74 01               551 	mov	a,#0x01
   018A F0                  552 	movx	@dptr,a
   018B 90 0D AC            553 	mov	dptr,#0x0DAC
   018E 12 23 09            554 	lcall	_delay
                            555 ;	main.c:59: clearLCD();
   0191 02 1E CE            556 	ljmp	_clearLCD
                            557 ;------------------------------------------------------------
                            558 ;Allocation info for local variables in function 'setLevel1'
                            559 ;------------------------------------------------------------
                            560 ;control                   Allocated with name '_setLevel1_control_1_1'
                            561 ;------------------------------------------------------------
                            562 ;	main.c:64: void setLevel1(){
                            563 ;	-----------------------------------------
                            564 ;	 function setLevel1
                            565 ;	-----------------------------------------
   0194                     566 _setLevel1:
                            567 ;	main.c:65: unsigned char control = 1;
   0194 90 00 93            568 	mov	dptr,#_setLevel1_control_1_1
   0197 74 01               569 	mov	a,#0x01
   0199 F0                  570 	movx	@dptr,a
                            571 ;	main.c:67: LCD_putTextAt("PASSA",1,CENTER);
   019A 90 02 72            572 	mov	dptr,#_LCD_putTextAt_PARM_2
   019D 74 01               573 	mov	a,#0x01
   019F F0                  574 	movx	@dptr,a
   01A0 90 02 73            575 	mov	dptr,#_LCD_putTextAt_PARM_3
   01A3 74 02               576 	mov	a,#0x02
   01A5 F0                  577 	movx	@dptr,a
   01A6 90 37 03            578 	mov	dptr,#__str_9
   01A9 75 F0 80            579 	mov	b,#0x80
   01AC 12 1F 12            580 	lcall	_LCD_putTextAt
                            581 ;	main.c:68: LCD_putTextAt("A",2,CENTER);
   01AF 90 02 72            582 	mov	dptr,#_LCD_putTextAt_PARM_2
   01B2 74 02               583 	mov	a,#0x02
   01B4 F0                  584 	movx	@dptr,a
   01B5 90 02 73            585 	mov	dptr,#_LCD_putTextAt_PARM_3
   01B8 74 02               586 	mov	a,#0x02
   01BA F0                  587 	movx	@dptr,a
   01BB 90 37 09            588 	mov	dptr,#__str_10
   01BE 75 F0 80            589 	mov	b,#0x80
   01C1 12 1F 12            590 	lcall	_LCD_putTextAt
                            591 ;	main.c:69: LCD_putTextAt("LAMBIDA",3,CENTER);
   01C4 90 02 72            592 	mov	dptr,#_LCD_putTextAt_PARM_2
   01C7 74 03               593 	mov	a,#0x03
   01C9 F0                  594 	movx	@dptr,a
   01CA 90 02 73            595 	mov	dptr,#_LCD_putTextAt_PARM_3
   01CD 74 02               596 	mov	a,#0x02
   01CF F0                  597 	movx	@dptr,a
   01D0 90 37 0B            598 	mov	dptr,#__str_11
   01D3 75 F0 80            599 	mov	b,#0x80
   01D6 12 1F 12            600 	lcall	_LCD_putTextAt
                            601 ;	main.c:70: LCD_putTextAt("NO BEICOLA 1",4,CENTER);
   01D9 90 02 72            602 	mov	dptr,#_LCD_putTextAt_PARM_2
   01DC 74 04               603 	mov	a,#0x04
   01DE F0                  604 	movx	@dptr,a
   01DF 90 02 73            605 	mov	dptr,#_LCD_putTextAt_PARM_3
   01E2 74 02               606 	mov	a,#0x02
   01E4 F0                  607 	movx	@dptr,a
   01E5 90 37 13            608 	mov	dptr,#__str_12
   01E8 75 F0 80            609 	mov	b,#0x80
   01EB 12 1F 12            610 	lcall	_LCD_putTextAt
                            611 ;	main.c:71: delay(3000,1);
   01EE 90 02 D0            612 	mov	dptr,#_delay_PARM_2
   01F1 74 01               613 	mov	a,#0x01
   01F3 F0                  614 	movx	@dptr,a
   01F4 90 0B B8            615 	mov	dptr,#0x0BB8
   01F7 12 23 09            616 	lcall	_delay
                            617 ;	main.c:72: clearLCD();
   01FA 12 1E CE            618 	lcall	_clearLCD
                            619 ;	main.c:74: player->sline = 7;
   01FD 90 00 8F            620 	mov	dptr,#_player
   0200 E0                  621 	movx	a,@dptr
   0201 FA                  622 	mov	r2,a
   0202 A3                  623 	inc	dptr
   0203 E0                  624 	movx	a,@dptr
   0204 FB                  625 	mov	r3,a
   0205 A3                  626 	inc	dptr
   0206 E0                  627 	movx	a,@dptr
   0207 FC                  628 	mov	r4,a
   0208 8A 82               629 	mov	dpl,r2
   020A 8B 83               630 	mov	dph,r3
   020C 8C F0               631 	mov	b,r4
   020E 74 07               632 	mov	a,#0x07
   0210 12 34 09            633 	lcall	__gptrput
                            634 ;	main.c:75: player->scol = 3;
   0213 90 00 8F            635 	mov	dptr,#_player
   0216 E0                  636 	movx	a,@dptr
   0217 FA                  637 	mov	r2,a
   0218 A3                  638 	inc	dptr
   0219 E0                  639 	movx	a,@dptr
   021A FB                  640 	mov	r3,a
   021B A3                  641 	inc	dptr
   021C E0                  642 	movx	a,@dptr
   021D FC                  643 	mov	r4,a
   021E 0A                  644 	inc	r2
   021F BA 00 01            645 	cjne	r2,#0x00,00108$
   0222 0B                  646 	inc	r3
   0223                     647 00108$:
   0223 8A 82               648 	mov	dpl,r2
   0225 8B 83               649 	mov	dph,r3
   0227 8C F0               650 	mov	b,r4
   0229 74 03               651 	mov	a,#0x03
   022B 12 34 09            652 	lcall	__gptrput
                            653 ;	main.c:76: player->line = 4;
   022E 90 00 8F            654 	mov	dptr,#_player
   0231 E0                  655 	movx	a,@dptr
   0232 FA                  656 	mov	r2,a
   0233 A3                  657 	inc	dptr
   0234 E0                  658 	movx	a,@dptr
   0235 FB                  659 	mov	r3,a
   0236 A3                  660 	inc	dptr
   0237 E0                  661 	movx	a,@dptr
   0238 FC                  662 	mov	r4,a
   0239 74 02               663 	mov	a,#0x02
   023B 2A                  664 	add	a,r2
   023C FA                  665 	mov	r2,a
   023D E4                  666 	clr	a
   023E 3B                  667 	addc	a,r3
   023F FB                  668 	mov	r3,a
   0240 8A 82               669 	mov	dpl,r2
   0242 8B 83               670 	mov	dph,r3
   0244 8C F0               671 	mov	b,r4
   0246 74 04               672 	mov	a,#0x04
   0248 12 34 09            673 	lcall	__gptrput
                            674 ;	main.c:77: player->col = 10;
   024B 90 00 8F            675 	mov	dptr,#_player
   024E E0                  676 	movx	a,@dptr
   024F FA                  677 	mov	r2,a
   0250 A3                  678 	inc	dptr
   0251 E0                  679 	movx	a,@dptr
   0252 FB                  680 	mov	r3,a
   0253 A3                  681 	inc	dptr
   0254 E0                  682 	movx	a,@dptr
   0255 FC                  683 	mov	r4,a
   0256 74 03               684 	mov	a,#0x03
   0258 2A                  685 	add	a,r2
   0259 FA                  686 	mov	r2,a
   025A E4                  687 	clr	a
   025B 3B                  688 	addc	a,r3
   025C FB                  689 	mov	r3,a
   025D 8A 82               690 	mov	dpl,r2
   025F 8B 83               691 	mov	dph,r3
   0261 8C F0               692 	mov	b,r4
   0263 74 0A               693 	mov	a,#0x0A
   0265 12 34 09            694 	lcall	__gptrput
                            695 ;	main.c:79: printMap();
   0268 12 08 67            696 	lcall	_printMap
                            697 ;	main.c:81: while(control)
   026B                     698 00101$:
   026B 90 00 93            699 	mov	dptr,#_setLevel1_control_1_1
   026E E0                  700 	movx	a,@dptr
   026F FA                  701 	mov	r2,a
   0270 60 48               702 	jz	00103$
                            703 ;	main.c:82: control = configMap(player->line, player->col);
   0272 90 00 8F            704 	mov	dptr,#_player
   0275 E0                  705 	movx	a,@dptr
   0276 FA                  706 	mov	r2,a
   0277 A3                  707 	inc	dptr
   0278 E0                  708 	movx	a,@dptr
   0279 FB                  709 	mov	r3,a
   027A A3                  710 	inc	dptr
   027B E0                  711 	movx	a,@dptr
   027C FC                  712 	mov	r4,a
   027D 74 02               713 	mov	a,#0x02
   027F 2A                  714 	add	a,r2
   0280 FA                  715 	mov	r2,a
   0281 E4                  716 	clr	a
   0282 3B                  717 	addc	a,r3
   0283 FB                  718 	mov	r3,a
   0284 8A 82               719 	mov	dpl,r2
   0286 8B 83               720 	mov	dph,r3
   0288 8C F0               721 	mov	b,r4
   028A 12 35 CD            722 	lcall	__gptrget
   028D FA                  723 	mov	r2,a
   028E 90 00 8F            724 	mov	dptr,#_player
   0291 E0                  725 	movx	a,@dptr
   0292 FB                  726 	mov	r3,a
   0293 A3                  727 	inc	dptr
   0294 E0                  728 	movx	a,@dptr
   0295 FC                  729 	mov	r4,a
   0296 A3                  730 	inc	dptr
   0297 E0                  731 	movx	a,@dptr
   0298 FD                  732 	mov	r5,a
   0299 74 03               733 	mov	a,#0x03
   029B 2B                  734 	add	a,r3
   029C FB                  735 	mov	r3,a
   029D E4                  736 	clr	a
   029E 3C                  737 	addc	a,r4
   029F FC                  738 	mov	r4,a
   02A0 8B 82               739 	mov	dpl,r3
   02A2 8C 83               740 	mov	dph,r4
   02A4 8D F0               741 	mov	b,r5
   02A6 12 35 CD            742 	lcall	__gptrget
   02A9 90 02 6B            743 	mov	dptr,#_configMap_PARM_2
   02AC F0                  744 	movx	@dptr,a
   02AD 8A 82               745 	mov	dpl,r2
   02AF 12 1D 4C            746 	lcall	_configMap
   02B2 E5 82               747 	mov	a,dpl
   02B4 90 00 93            748 	mov	dptr,#_setLevel1_control_1_1
   02B7 F0                  749 	movx	@dptr,a
   02B8 80 B1               750 	sjmp	00101$
   02BA                     751 00103$:
                            752 ;	main.c:84: clearLCD();
   02BA 02 1E CE            753 	ljmp	_clearLCD
                            754 ;------------------------------------------------------------
                            755 ;Allocation info for local variables in function 'setLevel2'
                            756 ;------------------------------------------------------------
                            757 ;control                   Allocated with name '_setLevel2_control_1_1'
                            758 ;------------------------------------------------------------
                            759 ;	main.c:87: void setLevel2(){
                            760 ;	-----------------------------------------
                            761 ;	 function setLevel2
                            762 ;	-----------------------------------------
   02BD                     763 _setLevel2:
                            764 ;	main.c:88: unsigned char control = 1;
   02BD 90 00 94            765 	mov	dptr,#_setLevel2_control_1_1
   02C0 74 01               766 	mov	a,#0x01
   02C2 F0                  767 	movx	@dptr,a
                            768 ;	main.c:90: LCD_putTextAt("PASSA",1,CENTER);
   02C3 90 02 72            769 	mov	dptr,#_LCD_putTextAt_PARM_2
   02C6 74 01               770 	mov	a,#0x01
   02C8 F0                  771 	movx	@dptr,a
   02C9 90 02 73            772 	mov	dptr,#_LCD_putTextAt_PARM_3
   02CC 74 02               773 	mov	a,#0x02
   02CE F0                  774 	movx	@dptr,a
   02CF 90 37 03            775 	mov	dptr,#__str_9
   02D2 75 F0 80            776 	mov	b,#0x80
   02D5 12 1F 12            777 	lcall	_LCD_putTextAt
                            778 ;	main.c:91: LCD_putTextAt("A",2,CENTER);
   02D8 90 02 72            779 	mov	dptr,#_LCD_putTextAt_PARM_2
   02DB 74 02               780 	mov	a,#0x02
   02DD F0                  781 	movx	@dptr,a
   02DE 90 02 73            782 	mov	dptr,#_LCD_putTextAt_PARM_3
   02E1 74 02               783 	mov	a,#0x02
   02E3 F0                  784 	movx	@dptr,a
   02E4 90 37 09            785 	mov	dptr,#__str_10
   02E7 75 F0 80            786 	mov	b,#0x80
   02EA 12 1F 12            787 	lcall	_LCD_putTextAt
                            788 ;	main.c:92: LCD_putTextAt("LAMBIDA",3,CENTER);
   02ED 90 02 72            789 	mov	dptr,#_LCD_putTextAt_PARM_2
   02F0 74 03               790 	mov	a,#0x03
   02F2 F0                  791 	movx	@dptr,a
   02F3 90 02 73            792 	mov	dptr,#_LCD_putTextAt_PARM_3
   02F6 74 02               793 	mov	a,#0x02
   02F8 F0                  794 	movx	@dptr,a
   02F9 90 37 0B            795 	mov	dptr,#__str_11
   02FC 75 F0 80            796 	mov	b,#0x80
   02FF 12 1F 12            797 	lcall	_LCD_putTextAt
                            798 ;	main.c:93: LCD_putTextAt("NO BEICOLA 2",4,CENTER);
   0302 90 02 72            799 	mov	dptr,#_LCD_putTextAt_PARM_2
   0305 74 04               800 	mov	a,#0x04
   0307 F0                  801 	movx	@dptr,a
   0308 90 02 73            802 	mov	dptr,#_LCD_putTextAt_PARM_3
   030B 74 02               803 	mov	a,#0x02
   030D F0                  804 	movx	@dptr,a
   030E 90 37 20            805 	mov	dptr,#__str_13
   0311 75 F0 80            806 	mov	b,#0x80
   0314 12 1F 12            807 	lcall	_LCD_putTextAt
                            808 ;	main.c:94: delay(3000,1);
   0317 90 02 D0            809 	mov	dptr,#_delay_PARM_2
   031A 74 01               810 	mov	a,#0x01
   031C F0                  811 	movx	@dptr,a
   031D 90 0B B8            812 	mov	dptr,#0x0BB8
   0320 12 23 09            813 	lcall	_delay
                            814 ;	main.c:95: clearLCD();
   0323 12 1E CE            815 	lcall	_clearLCD
                            816 ;	main.c:97: setMap2CGram();
   0326 12 0C EA            817 	lcall	_setMap2CGram
                            818 ;	main.c:99: player->sline = 7;
   0329 90 00 8F            819 	mov	dptr,#_player
   032C E0                  820 	movx	a,@dptr
   032D FA                  821 	mov	r2,a
   032E A3                  822 	inc	dptr
   032F E0                  823 	movx	a,@dptr
   0330 FB                  824 	mov	r3,a
   0331 A3                  825 	inc	dptr
   0332 E0                  826 	movx	a,@dptr
   0333 FC                  827 	mov	r4,a
   0334 8A 82               828 	mov	dpl,r2
   0336 8B 83               829 	mov	dph,r3
   0338 8C F0               830 	mov	b,r4
   033A 74 07               831 	mov	a,#0x07
   033C 12 34 09            832 	lcall	__gptrput
                            833 ;	main.c:100: player->scol = 2;
   033F 90 00 8F            834 	mov	dptr,#_player
   0342 E0                  835 	movx	a,@dptr
   0343 FA                  836 	mov	r2,a
   0344 A3                  837 	inc	dptr
   0345 E0                  838 	movx	a,@dptr
   0346 FB                  839 	mov	r3,a
   0347 A3                  840 	inc	dptr
   0348 E0                  841 	movx	a,@dptr
   0349 FC                  842 	mov	r4,a
   034A 0A                  843 	inc	r2
   034B BA 00 01            844 	cjne	r2,#0x00,00108$
   034E 0B                  845 	inc	r3
   034F                     846 00108$:
   034F 8A 82               847 	mov	dpl,r2
   0351 8B 83               848 	mov	dph,r3
   0353 8C F0               849 	mov	b,r4
   0355 74 02               850 	mov	a,#0x02
   0357 12 34 09            851 	lcall	__gptrput
                            852 ;	main.c:101: player->line = 4;
   035A 90 00 8F            853 	mov	dptr,#_player
   035D E0                  854 	movx	a,@dptr
   035E FA                  855 	mov	r2,a
   035F A3                  856 	inc	dptr
   0360 E0                  857 	movx	a,@dptr
   0361 FB                  858 	mov	r3,a
   0362 A3                  859 	inc	dptr
   0363 E0                  860 	movx	a,@dptr
   0364 FC                  861 	mov	r4,a
   0365 74 02               862 	mov	a,#0x02
   0367 2A                  863 	add	a,r2
   0368 FA                  864 	mov	r2,a
   0369 E4                  865 	clr	a
   036A 3B                  866 	addc	a,r3
   036B FB                  867 	mov	r3,a
   036C 8A 82               868 	mov	dpl,r2
   036E 8B 83               869 	mov	dph,r3
   0370 8C F0               870 	mov	b,r4
   0372 74 04               871 	mov	a,#0x04
   0374 12 34 09            872 	lcall	__gptrput
                            873 ;	main.c:102: player->col = 2;
   0377 90 00 8F            874 	mov	dptr,#_player
   037A E0                  875 	movx	a,@dptr
   037B FA                  876 	mov	r2,a
   037C A3                  877 	inc	dptr
   037D E0                  878 	movx	a,@dptr
   037E FB                  879 	mov	r3,a
   037F A3                  880 	inc	dptr
   0380 E0                  881 	movx	a,@dptr
   0381 FC                  882 	mov	r4,a
   0382 74 03               883 	mov	a,#0x03
   0384 2A                  884 	add	a,r2
   0385 FA                  885 	mov	r2,a
   0386 E4                  886 	clr	a
   0387 3B                  887 	addc	a,r3
   0388 FB                  888 	mov	r3,a
   0389 8A 82               889 	mov	dpl,r2
   038B 8B 83               890 	mov	dph,r3
   038D 8C F0               891 	mov	b,r4
   038F 74 02               892 	mov	a,#0x02
   0391 12 34 09            893 	lcall	__gptrput
                            894 ;	main.c:104: while(control)
   0394                     895 00101$:
   0394 90 00 94            896 	mov	dptr,#_setLevel2_control_1_1
   0397 E0                  897 	movx	a,@dptr
   0398 FA                  898 	mov	r2,a
   0399 60 48               899 	jz	00103$
                            900 ;	main.c:105: control = configMap(player->line, player->col);
   039B 90 00 8F            901 	mov	dptr,#_player
   039E E0                  902 	movx	a,@dptr
   039F FA                  903 	mov	r2,a
   03A0 A3                  904 	inc	dptr
   03A1 E0                  905 	movx	a,@dptr
   03A2 FB                  906 	mov	r3,a
   03A3 A3                  907 	inc	dptr
   03A4 E0                  908 	movx	a,@dptr
   03A5 FC                  909 	mov	r4,a
   03A6 74 02               910 	mov	a,#0x02
   03A8 2A                  911 	add	a,r2
   03A9 FA                  912 	mov	r2,a
   03AA E4                  913 	clr	a
   03AB 3B                  914 	addc	a,r3
   03AC FB                  915 	mov	r3,a
   03AD 8A 82               916 	mov	dpl,r2
   03AF 8B 83               917 	mov	dph,r3
   03B1 8C F0               918 	mov	b,r4
   03B3 12 35 CD            919 	lcall	__gptrget
   03B6 FA                  920 	mov	r2,a
   03B7 90 00 8F            921 	mov	dptr,#_player
   03BA E0                  922 	movx	a,@dptr
   03BB FB                  923 	mov	r3,a
   03BC A3                  924 	inc	dptr
   03BD E0                  925 	movx	a,@dptr
   03BE FC                  926 	mov	r4,a
   03BF A3                  927 	inc	dptr
   03C0 E0                  928 	movx	a,@dptr
   03C1 FD                  929 	mov	r5,a
   03C2 74 03               930 	mov	a,#0x03
   03C4 2B                  931 	add	a,r3
   03C5 FB                  932 	mov	r3,a
   03C6 E4                  933 	clr	a
   03C7 3C                  934 	addc	a,r4
   03C8 FC                  935 	mov	r4,a
   03C9 8B 82               936 	mov	dpl,r3
   03CB 8C 83               937 	mov	dph,r4
   03CD 8D F0               938 	mov	b,r5
   03CF 12 35 CD            939 	lcall	__gptrget
   03D2 90 02 6B            940 	mov	dptr,#_configMap_PARM_2
   03D5 F0                  941 	movx	@dptr,a
   03D6 8A 82               942 	mov	dpl,r2
   03D8 12 1D 4C            943 	lcall	_configMap
   03DB E5 82               944 	mov	a,dpl
   03DD 90 00 94            945 	mov	dptr,#_setLevel2_control_1_1
   03E0 F0                  946 	movx	@dptr,a
   03E1 80 B1               947 	sjmp	00101$
   03E3                     948 00103$:
                            949 ;	main.c:107: clearLCD();
   03E3 02 1E CE            950 	ljmp	_clearLCD
                            951 ;------------------------------------------------------------
                            952 ;Allocation info for local variables in function 'setLevel3'
                            953 ;------------------------------------------------------------
                            954 ;control                   Allocated with name '_setLevel3_control_1_1'
                            955 ;------------------------------------------------------------
                            956 ;	main.c:110: void setLevel3(){
                            957 ;	-----------------------------------------
                            958 ;	 function setLevel3
                            959 ;	-----------------------------------------
   03E6                     960 _setLevel3:
                            961 ;	main.c:111: unsigned char control = 1;
   03E6 90 00 95            962 	mov	dptr,#_setLevel3_control_1_1
   03E9 74 01               963 	mov	a,#0x01
   03EB F0                  964 	movx	@dptr,a
                            965 ;	main.c:113: LCD_putTextAt("PASSA",1,CENTER);
   03EC 90 02 72            966 	mov	dptr,#_LCD_putTextAt_PARM_2
   03EF 74 01               967 	mov	a,#0x01
   03F1 F0                  968 	movx	@dptr,a
   03F2 90 02 73            969 	mov	dptr,#_LCD_putTextAt_PARM_3
   03F5 74 02               970 	mov	a,#0x02
   03F7 F0                  971 	movx	@dptr,a
   03F8 90 37 03            972 	mov	dptr,#__str_9
   03FB 75 F0 80            973 	mov	b,#0x80
   03FE 12 1F 12            974 	lcall	_LCD_putTextAt
                            975 ;	main.c:114: LCD_putTextAt("A",2,CENTER);
   0401 90 02 72            976 	mov	dptr,#_LCD_putTextAt_PARM_2
   0404 74 02               977 	mov	a,#0x02
   0406 F0                  978 	movx	@dptr,a
   0407 90 02 73            979 	mov	dptr,#_LCD_putTextAt_PARM_3
   040A 74 02               980 	mov	a,#0x02
   040C F0                  981 	movx	@dptr,a
   040D 90 37 09            982 	mov	dptr,#__str_10
   0410 75 F0 80            983 	mov	b,#0x80
   0413 12 1F 12            984 	lcall	_LCD_putTextAt
                            985 ;	main.c:115: LCD_putTextAt("LAMBIDA",3,CENTER);
   0416 90 02 72            986 	mov	dptr,#_LCD_putTextAt_PARM_2
   0419 74 03               987 	mov	a,#0x03
   041B F0                  988 	movx	@dptr,a
   041C 90 02 73            989 	mov	dptr,#_LCD_putTextAt_PARM_3
   041F 74 02               990 	mov	a,#0x02
   0421 F0                  991 	movx	@dptr,a
   0422 90 37 0B            992 	mov	dptr,#__str_11
   0425 75 F0 80            993 	mov	b,#0x80
   0428 12 1F 12            994 	lcall	_LCD_putTextAt
                            995 ;	main.c:116: LCD_putTextAt("NO BEICOLA 3",4,CENTER);
   042B 90 02 72            996 	mov	dptr,#_LCD_putTextAt_PARM_2
   042E 74 04               997 	mov	a,#0x04
   0430 F0                  998 	movx	@dptr,a
   0431 90 02 73            999 	mov	dptr,#_LCD_putTextAt_PARM_3
   0434 74 02              1000 	mov	a,#0x02
   0436 F0                 1001 	movx	@dptr,a
   0437 90 37 2D           1002 	mov	dptr,#__str_14
   043A 75 F0 80           1003 	mov	b,#0x80
   043D 12 1F 12           1004 	lcall	_LCD_putTextAt
                           1005 ;	main.c:117: delay(3000,1);
   0440 90 02 D0           1006 	mov	dptr,#_delay_PARM_2
   0443 74 01              1007 	mov	a,#0x01
   0445 F0                 1008 	movx	@dptr,a
   0446 90 0B B8           1009 	mov	dptr,#0x0BB8
   0449 12 23 09           1010 	lcall	_delay
                           1011 ;	main.c:118: clearLCD();
   044C 12 1E CE           1012 	lcall	_clearLCD
                           1013 ;	main.c:120: setMap3CGram();
   044F 12 11 02           1014 	lcall	_setMap3CGram
                           1015 ;	main.c:122: player->sline = 5;
   0452 90 00 8F           1016 	mov	dptr,#_player
   0455 E0                 1017 	movx	a,@dptr
   0456 FA                 1018 	mov	r2,a
   0457 A3                 1019 	inc	dptr
   0458 E0                 1020 	movx	a,@dptr
   0459 FB                 1021 	mov	r3,a
   045A A3                 1022 	inc	dptr
   045B E0                 1023 	movx	a,@dptr
   045C FC                 1024 	mov	r4,a
   045D 8A 82              1025 	mov	dpl,r2
   045F 8B 83              1026 	mov	dph,r3
   0461 8C F0              1027 	mov	b,r4
   0463 74 05              1028 	mov	a,#0x05
   0465 12 34 09           1029 	lcall	__gptrput
                           1030 ;	main.c:123: player->scol = 5;
   0468 90 00 8F           1031 	mov	dptr,#_player
   046B E0                 1032 	movx	a,@dptr
   046C FA                 1033 	mov	r2,a
   046D A3                 1034 	inc	dptr
   046E E0                 1035 	movx	a,@dptr
   046F FB                 1036 	mov	r3,a
   0470 A3                 1037 	inc	dptr
   0471 E0                 1038 	movx	a,@dptr
   0472 FC                 1039 	mov	r4,a
   0473 0A                 1040 	inc	r2
   0474 BA 00 01           1041 	cjne	r2,#0x00,00108$
   0477 0B                 1042 	inc	r3
   0478                    1043 00108$:
   0478 8A 82              1044 	mov	dpl,r2
   047A 8B 83              1045 	mov	dph,r3
   047C 8C F0              1046 	mov	b,r4
   047E 74 05              1047 	mov	a,#0x05
   0480 12 34 09           1048 	lcall	__gptrput
                           1049 ;	main.c:124: player->line = 4;
   0483 90 00 8F           1050 	mov	dptr,#_player
   0486 E0                 1051 	movx	a,@dptr
   0487 FA                 1052 	mov	r2,a
   0488 A3                 1053 	inc	dptr
   0489 E0                 1054 	movx	a,@dptr
   048A FB                 1055 	mov	r3,a
   048B A3                 1056 	inc	dptr
   048C E0                 1057 	movx	a,@dptr
   048D FC                 1058 	mov	r4,a
   048E 74 02              1059 	mov	a,#0x02
   0490 2A                 1060 	add	a,r2
   0491 FA                 1061 	mov	r2,a
   0492 E4                 1062 	clr	a
   0493 3B                 1063 	addc	a,r3
   0494 FB                 1064 	mov	r3,a
   0495 8A 82              1065 	mov	dpl,r2
   0497 8B 83              1066 	mov	dph,r3
   0499 8C F0              1067 	mov	b,r4
   049B 74 04              1068 	mov	a,#0x04
   049D 12 34 09           1069 	lcall	__gptrput
                           1070 ;	main.c:125: player->col = 10;
   04A0 90 00 8F           1071 	mov	dptr,#_player
   04A3 E0                 1072 	movx	a,@dptr
   04A4 FA                 1073 	mov	r2,a
   04A5 A3                 1074 	inc	dptr
   04A6 E0                 1075 	movx	a,@dptr
   04A7 FB                 1076 	mov	r3,a
   04A8 A3                 1077 	inc	dptr
   04A9 E0                 1078 	movx	a,@dptr
   04AA FC                 1079 	mov	r4,a
   04AB 74 03              1080 	mov	a,#0x03
   04AD 2A                 1081 	add	a,r2
   04AE FA                 1082 	mov	r2,a
   04AF E4                 1083 	clr	a
   04B0 3B                 1084 	addc	a,r3
   04B1 FB                 1085 	mov	r3,a
   04B2 8A 82              1086 	mov	dpl,r2
   04B4 8B 83              1087 	mov	dph,r3
   04B6 8C F0              1088 	mov	b,r4
   04B8 74 0A              1089 	mov	a,#0x0A
   04BA 12 34 09           1090 	lcall	__gptrput
                           1091 ;	main.c:127: while(control)
   04BD                    1092 00101$:
   04BD 90 00 95           1093 	mov	dptr,#_setLevel3_control_1_1
   04C0 E0                 1094 	movx	a,@dptr
   04C1 FA                 1095 	mov	r2,a
   04C2 60 48              1096 	jz	00103$
                           1097 ;	main.c:128: control = configMap(player->line, player->col);
   04C4 90 00 8F           1098 	mov	dptr,#_player
   04C7 E0                 1099 	movx	a,@dptr
   04C8 FA                 1100 	mov	r2,a
   04C9 A3                 1101 	inc	dptr
   04CA E0                 1102 	movx	a,@dptr
   04CB FB                 1103 	mov	r3,a
   04CC A3                 1104 	inc	dptr
   04CD E0                 1105 	movx	a,@dptr
   04CE FC                 1106 	mov	r4,a
   04CF 74 02              1107 	mov	a,#0x02
   04D1 2A                 1108 	add	a,r2
   04D2 FA                 1109 	mov	r2,a
   04D3 E4                 1110 	clr	a
   04D4 3B                 1111 	addc	a,r3
   04D5 FB                 1112 	mov	r3,a
   04D6 8A 82              1113 	mov	dpl,r2
   04D8 8B 83              1114 	mov	dph,r3
   04DA 8C F0              1115 	mov	b,r4
   04DC 12 35 CD           1116 	lcall	__gptrget
   04DF FA                 1117 	mov	r2,a
   04E0 90 00 8F           1118 	mov	dptr,#_player
   04E3 E0                 1119 	movx	a,@dptr
   04E4 FB                 1120 	mov	r3,a
   04E5 A3                 1121 	inc	dptr
   04E6 E0                 1122 	movx	a,@dptr
   04E7 FC                 1123 	mov	r4,a
   04E8 A3                 1124 	inc	dptr
   04E9 E0                 1125 	movx	a,@dptr
   04EA FD                 1126 	mov	r5,a
   04EB 74 03              1127 	mov	a,#0x03
   04ED 2B                 1128 	add	a,r3
   04EE FB                 1129 	mov	r3,a
   04EF E4                 1130 	clr	a
   04F0 3C                 1131 	addc	a,r4
   04F1 FC                 1132 	mov	r4,a
   04F2 8B 82              1133 	mov	dpl,r3
   04F4 8C 83              1134 	mov	dph,r4
   04F6 8D F0              1135 	mov	b,r5
   04F8 12 35 CD           1136 	lcall	__gptrget
   04FB 90 02 6B           1137 	mov	dptr,#_configMap_PARM_2
   04FE F0                 1138 	movx	@dptr,a
   04FF 8A 82              1139 	mov	dpl,r2
   0501 12 1D 4C           1140 	lcall	_configMap
   0504 E5 82              1141 	mov	a,dpl
   0506 90 00 95           1142 	mov	dptr,#_setLevel3_control_1_1
   0509 F0                 1143 	movx	@dptr,a
   050A 80 B1              1144 	sjmp	00101$
   050C                    1145 00103$:
                           1146 ;	main.c:130: clearLCD();
   050C 02 1E CE           1147 	ljmp	_clearLCD
                           1148 ;------------------------------------------------------------
                           1149 ;Allocation info for local variables in function 'setLevel4'
                           1150 ;------------------------------------------------------------
                           1151 ;control                   Allocated with name '_setLevel4_control_1_1'
                           1152 ;------------------------------------------------------------
                           1153 ;	main.c:133: void setLevel4(){
                           1154 ;	-----------------------------------------
                           1155 ;	 function setLevel4
                           1156 ;	-----------------------------------------
   050F                    1157 _setLevel4:
                           1158 ;	main.c:134: unsigned char control = 1;
   050F 90 00 96           1159 	mov	dptr,#_setLevel4_control_1_1
   0512 74 01              1160 	mov	a,#0x01
   0514 F0                 1161 	movx	@dptr,a
                           1162 ;	main.c:136: LCD_putTextAt("PASSA",1,CENTER);
   0515 90 02 72           1163 	mov	dptr,#_LCD_putTextAt_PARM_2
   0518 74 01              1164 	mov	a,#0x01
   051A F0                 1165 	movx	@dptr,a
   051B 90 02 73           1166 	mov	dptr,#_LCD_putTextAt_PARM_3
   051E 74 02              1167 	mov	a,#0x02
   0520 F0                 1168 	movx	@dptr,a
   0521 90 37 03           1169 	mov	dptr,#__str_9
   0524 75 F0 80           1170 	mov	b,#0x80
   0527 12 1F 12           1171 	lcall	_LCD_putTextAt
                           1172 ;	main.c:137: LCD_putTextAt("A",2,CENTER);
   052A 90 02 72           1173 	mov	dptr,#_LCD_putTextAt_PARM_2
   052D 74 02              1174 	mov	a,#0x02
   052F F0                 1175 	movx	@dptr,a
   0530 90 02 73           1176 	mov	dptr,#_LCD_putTextAt_PARM_3
   0533 74 02              1177 	mov	a,#0x02
   0535 F0                 1178 	movx	@dptr,a
   0536 90 37 09           1179 	mov	dptr,#__str_10
   0539 75 F0 80           1180 	mov	b,#0x80
   053C 12 1F 12           1181 	lcall	_LCD_putTextAt
                           1182 ;	main.c:138: LCD_putTextAt("LAMBIDA",3,CENTER);
   053F 90 02 72           1183 	mov	dptr,#_LCD_putTextAt_PARM_2
   0542 74 03              1184 	mov	a,#0x03
   0544 F0                 1185 	movx	@dptr,a
   0545 90 02 73           1186 	mov	dptr,#_LCD_putTextAt_PARM_3
   0548 74 02              1187 	mov	a,#0x02
   054A F0                 1188 	movx	@dptr,a
   054B 90 37 0B           1189 	mov	dptr,#__str_11
   054E 75 F0 80           1190 	mov	b,#0x80
   0551 12 1F 12           1191 	lcall	_LCD_putTextAt
                           1192 ;	main.c:139: LCD_putTextAt("NO BEICOLA 4",4,CENTER);
   0554 90 02 72           1193 	mov	dptr,#_LCD_putTextAt_PARM_2
   0557 74 04              1194 	mov	a,#0x04
   0559 F0                 1195 	movx	@dptr,a
   055A 90 02 73           1196 	mov	dptr,#_LCD_putTextAt_PARM_3
   055D 74 02              1197 	mov	a,#0x02
   055F F0                 1198 	movx	@dptr,a
   0560 90 37 3A           1199 	mov	dptr,#__str_15
   0563 75 F0 80           1200 	mov	b,#0x80
   0566 12 1F 12           1201 	lcall	_LCD_putTextAt
                           1202 ;	main.c:140: delay(3000,1);
   0569 90 02 D0           1203 	mov	dptr,#_delay_PARM_2
   056C 74 01              1204 	mov	a,#0x01
   056E F0                 1205 	movx	@dptr,a
   056F 90 0B B8           1206 	mov	dptr,#0x0BB8
   0572 12 23 09           1207 	lcall	_delay
                           1208 ;	main.c:141: clearLCD();
   0575 12 1E CE           1209 	lcall	_clearLCD
                           1210 ;	main.c:143: setMap4CGram();
   0578 12 15 1A           1211 	lcall	_setMap4CGram
                           1212 ;	main.c:145: player->sline = 3;
   057B 90 00 8F           1213 	mov	dptr,#_player
   057E E0                 1214 	movx	a,@dptr
   057F FA                 1215 	mov	r2,a
   0580 A3                 1216 	inc	dptr
   0581 E0                 1217 	movx	a,@dptr
   0582 FB                 1218 	mov	r3,a
   0583 A3                 1219 	inc	dptr
   0584 E0                 1220 	movx	a,@dptr
   0585 FC                 1221 	mov	r4,a
   0586 8A 82              1222 	mov	dpl,r2
   0588 8B 83              1223 	mov	dph,r3
   058A 8C F0              1224 	mov	b,r4
   058C 74 03              1225 	mov	a,#0x03
   058E 12 34 09           1226 	lcall	__gptrput
                           1227 ;	main.c:146: player->scol = 4;
   0591 90 00 8F           1228 	mov	dptr,#_player
   0594 E0                 1229 	movx	a,@dptr
   0595 FA                 1230 	mov	r2,a
   0596 A3                 1231 	inc	dptr
   0597 E0                 1232 	movx	a,@dptr
   0598 FB                 1233 	mov	r3,a
   0599 A3                 1234 	inc	dptr
   059A E0                 1235 	movx	a,@dptr
   059B FC                 1236 	mov	r4,a
   059C 0A                 1237 	inc	r2
   059D BA 00 01           1238 	cjne	r2,#0x00,00108$
   05A0 0B                 1239 	inc	r3
   05A1                    1240 00108$:
   05A1 8A 82              1241 	mov	dpl,r2
   05A3 8B 83              1242 	mov	dph,r3
   05A5 8C F0              1243 	mov	b,r4
   05A7 74 04              1244 	mov	a,#0x04
   05A9 12 34 09           1245 	lcall	__gptrput
                           1246 ;	main.c:147: player->line = 4;
   05AC 90 00 8F           1247 	mov	dptr,#_player
   05AF E0                 1248 	movx	a,@dptr
   05B0 FA                 1249 	mov	r2,a
   05B1 A3                 1250 	inc	dptr
   05B2 E0                 1251 	movx	a,@dptr
   05B3 FB                 1252 	mov	r3,a
   05B4 A3                 1253 	inc	dptr
   05B5 E0                 1254 	movx	a,@dptr
   05B6 FC                 1255 	mov	r4,a
   05B7 74 02              1256 	mov	a,#0x02
   05B9 2A                 1257 	add	a,r2
   05BA FA                 1258 	mov	r2,a
   05BB E4                 1259 	clr	a
   05BC 3B                 1260 	addc	a,r3
   05BD FB                 1261 	mov	r3,a
   05BE 8A 82              1262 	mov	dpl,r2
   05C0 8B 83              1263 	mov	dph,r3
   05C2 8C F0              1264 	mov	b,r4
   05C4 74 04              1265 	mov	a,#0x04
   05C6 12 34 09           1266 	lcall	__gptrput
                           1267 ;	main.c:148: player->col = 16;
   05C9 90 00 8F           1268 	mov	dptr,#_player
   05CC E0                 1269 	movx	a,@dptr
   05CD FA                 1270 	mov	r2,a
   05CE A3                 1271 	inc	dptr
   05CF E0                 1272 	movx	a,@dptr
   05D0 FB                 1273 	mov	r3,a
   05D1 A3                 1274 	inc	dptr
   05D2 E0                 1275 	movx	a,@dptr
   05D3 FC                 1276 	mov	r4,a
   05D4 74 03              1277 	mov	a,#0x03
   05D6 2A                 1278 	add	a,r2
   05D7 FA                 1279 	mov	r2,a
   05D8 E4                 1280 	clr	a
   05D9 3B                 1281 	addc	a,r3
   05DA FB                 1282 	mov	r3,a
   05DB 8A 82              1283 	mov	dpl,r2
   05DD 8B 83              1284 	mov	dph,r3
   05DF 8C F0              1285 	mov	b,r4
   05E1 74 10              1286 	mov	a,#0x10
   05E3 12 34 09           1287 	lcall	__gptrput
                           1288 ;	main.c:150: while(control)
   05E6                    1289 00101$:
   05E6 90 00 96           1290 	mov	dptr,#_setLevel4_control_1_1
   05E9 E0                 1291 	movx	a,@dptr
   05EA FA                 1292 	mov	r2,a
   05EB 60 48              1293 	jz	00103$
                           1294 ;	main.c:151: control = configMap(player->line, player->col);
   05ED 90 00 8F           1295 	mov	dptr,#_player
   05F0 E0                 1296 	movx	a,@dptr
   05F1 FA                 1297 	mov	r2,a
   05F2 A3                 1298 	inc	dptr
   05F3 E0                 1299 	movx	a,@dptr
   05F4 FB                 1300 	mov	r3,a
   05F5 A3                 1301 	inc	dptr
   05F6 E0                 1302 	movx	a,@dptr
   05F7 FC                 1303 	mov	r4,a
   05F8 74 02              1304 	mov	a,#0x02
   05FA 2A                 1305 	add	a,r2
   05FB FA                 1306 	mov	r2,a
   05FC E4                 1307 	clr	a
   05FD 3B                 1308 	addc	a,r3
   05FE FB                 1309 	mov	r3,a
   05FF 8A 82              1310 	mov	dpl,r2
   0601 8B 83              1311 	mov	dph,r3
   0603 8C F0              1312 	mov	b,r4
   0605 12 35 CD           1313 	lcall	__gptrget
   0608 FA                 1314 	mov	r2,a
   0609 90 00 8F           1315 	mov	dptr,#_player
   060C E0                 1316 	movx	a,@dptr
   060D FB                 1317 	mov	r3,a
   060E A3                 1318 	inc	dptr
   060F E0                 1319 	movx	a,@dptr
   0610 FC                 1320 	mov	r4,a
   0611 A3                 1321 	inc	dptr
   0612 E0                 1322 	movx	a,@dptr
   0613 FD                 1323 	mov	r5,a
   0614 74 03              1324 	mov	a,#0x03
   0616 2B                 1325 	add	a,r3
   0617 FB                 1326 	mov	r3,a
   0618 E4                 1327 	clr	a
   0619 3C                 1328 	addc	a,r4
   061A FC                 1329 	mov	r4,a
   061B 8B 82              1330 	mov	dpl,r3
   061D 8C 83              1331 	mov	dph,r4
   061F 8D F0              1332 	mov	b,r5
   0621 12 35 CD           1333 	lcall	__gptrget
   0624 90 02 6B           1334 	mov	dptr,#_configMap_PARM_2
   0627 F0                 1335 	movx	@dptr,a
   0628 8A 82              1336 	mov	dpl,r2
   062A 12 1D 4C           1337 	lcall	_configMap
   062D E5 82              1338 	mov	a,dpl
   062F 90 00 96           1339 	mov	dptr,#_setLevel4_control_1_1
   0632 F0                 1340 	movx	@dptr,a
   0633 80 B1              1341 	sjmp	00101$
   0635                    1342 00103$:
                           1343 ;	main.c:153: clearLCD();
   0635 02 1E CE           1344 	ljmp	_clearLCD
                           1345 ;------------------------------------------------------------
                           1346 ;Allocation info for local variables in function 'setLevel5'
                           1347 ;------------------------------------------------------------
                           1348 ;control                   Allocated with name '_setLevel5_control_1_1'
                           1349 ;------------------------------------------------------------
                           1350 ;	main.c:156: void setLevel5(){
                           1351 ;	-----------------------------------------
                           1352 ;	 function setLevel5
                           1353 ;	-----------------------------------------
   0638                    1354 _setLevel5:
                           1355 ;	main.c:157: unsigned char control = 1;
   0638 90 00 97           1356 	mov	dptr,#_setLevel5_control_1_1
   063B 74 01              1357 	mov	a,#0x01
   063D F0                 1358 	movx	@dptr,a
                           1359 ;	main.c:159: LCD_putTextAt("PASSA",1,CENTER);
   063E 90 02 72           1360 	mov	dptr,#_LCD_putTextAt_PARM_2
   0641 74 01              1361 	mov	a,#0x01
   0643 F0                 1362 	movx	@dptr,a
   0644 90 02 73           1363 	mov	dptr,#_LCD_putTextAt_PARM_3
   0647 74 02              1364 	mov	a,#0x02
   0649 F0                 1365 	movx	@dptr,a
   064A 90 37 03           1366 	mov	dptr,#__str_9
   064D 75 F0 80           1367 	mov	b,#0x80
   0650 12 1F 12           1368 	lcall	_LCD_putTextAt
                           1369 ;	main.c:160: LCD_putTextAt("A",2,CENTER);
   0653 90 02 72           1370 	mov	dptr,#_LCD_putTextAt_PARM_2
   0656 74 02              1371 	mov	a,#0x02
   0658 F0                 1372 	movx	@dptr,a
   0659 90 02 73           1373 	mov	dptr,#_LCD_putTextAt_PARM_3
   065C 74 02              1374 	mov	a,#0x02
   065E F0                 1375 	movx	@dptr,a
   065F 90 37 09           1376 	mov	dptr,#__str_10
   0662 75 F0 80           1377 	mov	b,#0x80
   0665 12 1F 12           1378 	lcall	_LCD_putTextAt
                           1379 ;	main.c:161: LCD_putTextAt("LAMBIDA",3,CENTER);
   0668 90 02 72           1380 	mov	dptr,#_LCD_putTextAt_PARM_2
   066B 74 03              1381 	mov	a,#0x03
   066D F0                 1382 	movx	@dptr,a
   066E 90 02 73           1383 	mov	dptr,#_LCD_putTextAt_PARM_3
   0671 74 02              1384 	mov	a,#0x02
   0673 F0                 1385 	movx	@dptr,a
   0674 90 37 0B           1386 	mov	dptr,#__str_11
   0677 75 F0 80           1387 	mov	b,#0x80
   067A 12 1F 12           1388 	lcall	_LCD_putTextAt
                           1389 ;	main.c:162: LCD_putTextAt("NO BEICOLA 5",4,CENTER);
   067D 90 02 72           1390 	mov	dptr,#_LCD_putTextAt_PARM_2
   0680 74 04              1391 	mov	a,#0x04
   0682 F0                 1392 	movx	@dptr,a
   0683 90 02 73           1393 	mov	dptr,#_LCD_putTextAt_PARM_3
   0686 74 02              1394 	mov	a,#0x02
   0688 F0                 1395 	movx	@dptr,a
   0689 90 37 47           1396 	mov	dptr,#__str_16
   068C 75 F0 80           1397 	mov	b,#0x80
   068F 12 1F 12           1398 	lcall	_LCD_putTextAt
                           1399 ;	main.c:163: delay(3000,1);
   0692 90 02 D0           1400 	mov	dptr,#_delay_PARM_2
   0695 74 01              1401 	mov	a,#0x01
   0697 F0                 1402 	movx	@dptr,a
   0698 90 0B B8           1403 	mov	dptr,#0x0BB8
   069B 12 23 09           1404 	lcall	_delay
                           1405 ;	main.c:164: clearLCD();
   069E 12 1E CE           1406 	lcall	_clearLCD
                           1407 ;	main.c:166: setMap5CGram();
   06A1 12 19 33           1408 	lcall	_setMap5CGram
                           1409 ;	main.c:168: player->sline = 7;
   06A4 90 00 8F           1410 	mov	dptr,#_player
   06A7 E0                 1411 	movx	a,@dptr
   06A8 FA                 1412 	mov	r2,a
   06A9 A3                 1413 	inc	dptr
   06AA E0                 1414 	movx	a,@dptr
   06AB FB                 1415 	mov	r3,a
   06AC A3                 1416 	inc	dptr
   06AD E0                 1417 	movx	a,@dptr
   06AE FC                 1418 	mov	r4,a
   06AF 8A 82              1419 	mov	dpl,r2
   06B1 8B 83              1420 	mov	dph,r3
   06B3 8C F0              1421 	mov	b,r4
   06B5 74 07              1422 	mov	a,#0x07
   06B7 12 34 09           1423 	lcall	__gptrput
                           1424 ;	main.c:169: player->scol = 5;
   06BA 90 00 8F           1425 	mov	dptr,#_player
   06BD E0                 1426 	movx	a,@dptr
   06BE FA                 1427 	mov	r2,a
   06BF A3                 1428 	inc	dptr
   06C0 E0                 1429 	movx	a,@dptr
   06C1 FB                 1430 	mov	r3,a
   06C2 A3                 1431 	inc	dptr
   06C3 E0                 1432 	movx	a,@dptr
   06C4 FC                 1433 	mov	r4,a
   06C5 0A                 1434 	inc	r2
   06C6 BA 00 01           1435 	cjne	r2,#0x00,00108$
   06C9 0B                 1436 	inc	r3
   06CA                    1437 00108$:
   06CA 8A 82              1438 	mov	dpl,r2
   06CC 8B 83              1439 	mov	dph,r3
   06CE 8C F0              1440 	mov	b,r4
   06D0 74 05              1441 	mov	a,#0x05
   06D2 12 34 09           1442 	lcall	__gptrput
                           1443 ;	main.c:170: player->line = 4;
   06D5 90 00 8F           1444 	mov	dptr,#_player
   06D8 E0                 1445 	movx	a,@dptr
   06D9 FA                 1446 	mov	r2,a
   06DA A3                 1447 	inc	dptr
   06DB E0                 1448 	movx	a,@dptr
   06DC FB                 1449 	mov	r3,a
   06DD A3                 1450 	inc	dptr
   06DE E0                 1451 	movx	a,@dptr
   06DF FC                 1452 	mov	r4,a
   06E0 74 02              1453 	mov	a,#0x02
   06E2 2A                 1454 	add	a,r2
   06E3 FA                 1455 	mov	r2,a
   06E4 E4                 1456 	clr	a
   06E5 3B                 1457 	addc	a,r3
   06E6 FB                 1458 	mov	r3,a
   06E7 8A 82              1459 	mov	dpl,r2
   06E9 8B 83              1460 	mov	dph,r3
   06EB 8C F0              1461 	mov	b,r4
   06ED 74 04              1462 	mov	a,#0x04
   06EF 12 34 09           1463 	lcall	__gptrput
                           1464 ;	main.c:171: player->col = 1;
   06F2 90 00 8F           1465 	mov	dptr,#_player
   06F5 E0                 1466 	movx	a,@dptr
   06F6 FA                 1467 	mov	r2,a
   06F7 A3                 1468 	inc	dptr
   06F8 E0                 1469 	movx	a,@dptr
   06F9 FB                 1470 	mov	r3,a
   06FA A3                 1471 	inc	dptr
   06FB E0                 1472 	movx	a,@dptr
   06FC FC                 1473 	mov	r4,a
   06FD 74 03              1474 	mov	a,#0x03
   06FF 2A                 1475 	add	a,r2
   0700 FA                 1476 	mov	r2,a
   0701 E4                 1477 	clr	a
   0702 3B                 1478 	addc	a,r3
   0703 FB                 1479 	mov	r3,a
   0704 8A 82              1480 	mov	dpl,r2
   0706 8B 83              1481 	mov	dph,r3
   0708 8C F0              1482 	mov	b,r4
   070A 74 01              1483 	mov	a,#0x01
   070C 12 34 09           1484 	lcall	__gptrput
                           1485 ;	main.c:173: while(control)
   070F                    1486 00101$:
   070F 90 00 97           1487 	mov	dptr,#_setLevel5_control_1_1
   0712 E0                 1488 	movx	a,@dptr
   0713 FA                 1489 	mov	r2,a
   0714 60 48              1490 	jz	00103$
                           1491 ;	main.c:174: control = configMap(player->line, player->col);
   0716 90 00 8F           1492 	mov	dptr,#_player
   0719 E0                 1493 	movx	a,@dptr
   071A FA                 1494 	mov	r2,a
   071B A3                 1495 	inc	dptr
   071C E0                 1496 	movx	a,@dptr
   071D FB                 1497 	mov	r3,a
   071E A3                 1498 	inc	dptr
   071F E0                 1499 	movx	a,@dptr
   0720 FC                 1500 	mov	r4,a
   0721 74 02              1501 	mov	a,#0x02
   0723 2A                 1502 	add	a,r2
   0724 FA                 1503 	mov	r2,a
   0725 E4                 1504 	clr	a
   0726 3B                 1505 	addc	a,r3
   0727 FB                 1506 	mov	r3,a
   0728 8A 82              1507 	mov	dpl,r2
   072A 8B 83              1508 	mov	dph,r3
   072C 8C F0              1509 	mov	b,r4
   072E 12 35 CD           1510 	lcall	__gptrget
   0731 FA                 1511 	mov	r2,a
   0732 90 00 8F           1512 	mov	dptr,#_player
   0735 E0                 1513 	movx	a,@dptr
   0736 FB                 1514 	mov	r3,a
   0737 A3                 1515 	inc	dptr
   0738 E0                 1516 	movx	a,@dptr
   0739 FC                 1517 	mov	r4,a
   073A A3                 1518 	inc	dptr
   073B E0                 1519 	movx	a,@dptr
   073C FD                 1520 	mov	r5,a
   073D 74 03              1521 	mov	a,#0x03
   073F 2B                 1522 	add	a,r3
   0740 FB                 1523 	mov	r3,a
   0741 E4                 1524 	clr	a
   0742 3C                 1525 	addc	a,r4
   0743 FC                 1526 	mov	r4,a
   0744 8B 82              1527 	mov	dpl,r3
   0746 8C 83              1528 	mov	dph,r4
   0748 8D F0              1529 	mov	b,r5
   074A 12 35 CD           1530 	lcall	__gptrget
   074D 90 02 6B           1531 	mov	dptr,#_configMap_PARM_2
   0750 F0                 1532 	movx	@dptr,a
   0751 8A 82              1533 	mov	dpl,r2
   0753 12 1D 4C           1534 	lcall	_configMap
   0756 E5 82              1535 	mov	a,dpl
   0758 90 00 97           1536 	mov	dptr,#_setLevel5_control_1_1
   075B F0                 1537 	movx	@dptr,a
   075C 80 B1              1538 	sjmp	00101$
   075E                    1539 00103$:
                           1540 ;	main.c:176: clearLCD();
   075E 02 1E CE           1541 	ljmp	_clearLCD
                           1542 ;------------------------------------------------------------
                           1543 ;Allocation info for local variables in function 'setFinish'
                           1544 ;------------------------------------------------------------
                           1545 ;------------------------------------------------------------
                           1546 ;	main.c:178: void setFinish(){
                           1547 ;	-----------------------------------------
                           1548 ;	 function setFinish
                           1549 ;	-----------------------------------------
   0761                    1550 _setFinish:
                           1551 ;	main.c:179: LCD_putTextAt("AGOSTINHO",2,CENTER);
   0761 90 02 72           1552 	mov	dptr,#_LCD_putTextAt_PARM_2
   0764 74 02              1553 	mov	a,#0x02
   0766 F0                 1554 	movx	@dptr,a
   0767 90 02 73           1555 	mov	dptr,#_LCD_putTextAt_PARM_3
   076A 74 02              1556 	mov	a,#0x02
   076C F0                 1557 	movx	@dptr,a
   076D 90 37 54           1558 	mov	dptr,#__str_17
   0770 75 F0 80           1559 	mov	b,#0x80
   0773 12 1F 12           1560 	lcall	_LCD_putTextAt
                           1561 ;	main.c:180: LCD_putTextAt("FOI PRESO",3,CENTER);
   0776 90 02 72           1562 	mov	dptr,#_LCD_putTextAt_PARM_2
   0779 74 03              1563 	mov	a,#0x03
   077B F0                 1564 	movx	@dptr,a
   077C 90 02 73           1565 	mov	dptr,#_LCD_putTextAt_PARM_3
   077F 74 02              1566 	mov	a,#0x02
   0781 F0                 1567 	movx	@dptr,a
   0782 90 37 5E           1568 	mov	dptr,#__str_18
   0785 75 F0 80           1569 	mov	b,#0x80
   0788 12 1F 12           1570 	lcall	_LCD_putTextAt
                           1571 ;	main.c:181: delay(3000,1);
   078B 90 02 D0           1572 	mov	dptr,#_delay_PARM_2
   078E 74 01              1573 	mov	a,#0x01
   0790 F0                 1574 	movx	@dptr,a
   0791 90 0B B8           1575 	mov	dptr,#0x0BB8
   0794 02 23 09           1576 	ljmp	_delay
                           1577 ;------------------------------------------------------------
                           1578 ;Allocation info for local variables in function 'main'
                           1579 ;------------------------------------------------------------
                           1580 ;------------------------------------------------------------
                           1581 ;	main.c:184: void main(void){
                           1582 ;	-----------------------------------------
                           1583 ;	 function main
                           1584 ;	-----------------------------------------
   0797                    1585 _main:
                           1586 ;	main.c:186: configs();
   0797 12 00 76           1587 	lcall	_configs
                           1588 ;	main.c:188: setInitialScreen();
   079A 12 00 9B           1589 	lcall	_setInitialScreen
                           1590 ;	main.c:190: setInstructions();
   079D 12 00 E3           1591 	lcall	_setInstructions
                           1592 ;	main.c:192: setLevel1();
   07A0 12 01 94           1593 	lcall	_setLevel1
                           1594 ;	main.c:194: setLevel2();
   07A3 12 02 BD           1595 	lcall	_setLevel2
                           1596 ;	main.c:196: setLevel3();
   07A6 12 03 E6           1597 	lcall	_setLevel3
                           1598 ;	main.c:198: setLevel4();
   07A9 12 05 0F           1599 	lcall	_setLevel4
                           1600 ;	main.c:200: setLevel5();
   07AC 12 06 38           1601 	lcall	_setLevel5
                           1602 ;	main.c:202: setFinish();
   07AF 02 07 61           1603 	ljmp	_setFinish
                           1604 	.area CSEG    (CODE)
                           1605 	.area CONST   (CODE)
   367C                    1606 __str_0:
   367C 4D 41 5A 45 20 47  1607 	.ascii "MAZE GAME"
        41 4D 45
   3685 00                 1608 	.db 0x00
   3686                    1609 __str_1:
   3686 20 61 70 65 72 74  1610 	.ascii " aperte ESPACO para iniciar"
        65 20 45 53 50 41
        43 4F 20 70 61 72
        61 20 69 6E 69 63
        69 61 72
   36A1 00                 1611 	.db 0x00
   36A2                    1612 __str_2:
   36A2 49 4E 53 54 52 55  1613 	.ascii "INSTRUCOES"
        43 4F 45 53
   36AC 00                 1614 	.db 0x00
   36AD                    1615 __str_3:
   36AD 31 29 20 4D 6F 76  1616 	.ascii "1) Movimente com"
        69 6D 65 6E 74 65
        20 63 6F 6D
   36BD 00                 1617 	.db 0x00
   36BE                    1618 __str_4:
   36BE 57 2C 53 2C 41 2C  1619 	.ascii "W,S,A,D "
        44 20
   36C6 00                 1620 	.db 0x00
   36C7                    1621 __str_5:
   36C7 43 4F 4D 4F 20 47  1622 	.ascii "COMO GANHAR"
        41 4E 48 41 52
   36D2 00                 1623 	.db 0x00
   36D3                    1624 __str_6:
   36D3 41 63 68 65 20 75  1625 	.ascii "Ache uma saida "
        6D 61 20 73 61 69
        64 61 20
   36E2 00                 1626 	.db 0x00
   36E3                    1627 __str_7:
   36E3 70 61 72 61 20 43  1628 	.ascii "para CIMA,DIREI-"
        49 4D 41 2C 44 49
        52 45 49 2D
   36F3 00                 1629 	.db 0x00
   36F4                    1630 __str_8:
   36F4 54 41 20 6F 75 20  1631 	.ascii "TA ou ESQUERDA"
        45 53 51 55 45 52
        44 41
   3702 00                 1632 	.db 0x00
   3703                    1633 __str_9:
   3703 50 41 53 53 41     1634 	.ascii "PASSA"
   3708 00                 1635 	.db 0x00
   3709                    1636 __str_10:
   3709 41                 1637 	.ascii "A"
   370A 00                 1638 	.db 0x00
   370B                    1639 __str_11:
   370B 4C 41 4D 42 49 44  1640 	.ascii "LAMBIDA"
        41
   3712 00                 1641 	.db 0x00
   3713                    1642 __str_12:
   3713 4E 4F 20 42 45 49  1643 	.ascii "NO BEICOLA 1"
        43 4F 4C 41 20 31
   371F 00                 1644 	.db 0x00
   3720                    1645 __str_13:
   3720 4E 4F 20 42 45 49  1646 	.ascii "NO BEICOLA 2"
        43 4F 4C 41 20 32
   372C 00                 1647 	.db 0x00
   372D                    1648 __str_14:
   372D 4E 4F 20 42 45 49  1649 	.ascii "NO BEICOLA 3"
        43 4F 4C 41 20 33
   3739 00                 1650 	.db 0x00
   373A                    1651 __str_15:
   373A 4E 4F 20 42 45 49  1652 	.ascii "NO BEICOLA 4"
        43 4F 4C 41 20 34
   3746 00                 1653 	.db 0x00
   3747                    1654 __str_16:
   3747 4E 4F 20 42 45 49  1655 	.ascii "NO BEICOLA 5"
        43 4F 4C 41 20 35
   3753 00                 1656 	.db 0x00
   3754                    1657 __str_17:
   3754 41 47 4F 53 54 49  1658 	.ascii "AGOSTINHO"
        4E 48 4F
   375D 00                 1659 	.db 0x00
   375E                    1660 __str_18:
   375E 46 4F 49 20 50 52  1661 	.ascii "FOI PRESO"
        45 53 4F
   3767 00                 1662 	.db 0x00
                           1663 	.area XINIT   (CODE)
   3768                    1664 __xinit__rxMsg:
   3768 00                 1665 	.db #0x00
                           1666 	.area CABS    (ABS,CODE)
