                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Wed Aug 21 09:12:25 2019
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
                            119 	.globl _beep2_noteTime
                            120 	.globl _beep2_melody
                            121 	.globl _beep1_noteTime
                            122 	.globl _beep1_melody
                            123 	.globl _adobe_noteTime
                            124 	.globl _adobe_melody
                            125 	.globl _underworld_noteTime
                            126 	.globl _underworld_melody
                            127 	.globl _mainMario_noteTime
                            128 	.globl _mainMario_melody
                            129 	.globl _player
                            130 	.globl _dacWrite
                            131 	.globl _Timer0
                            132 	.globl _map
                            133 	.globl _SCmap
                            134 ;--------------------------------------------------------
                            135 ; special function registers
                            136 ;--------------------------------------------------------
                            137 	.area RSEG    (DATA)
                    0080    138 _P0	=	0x0080
                    0081    139 _SP	=	0x0081
                    0082    140 _DPL	=	0x0082
                    0083    141 _DPH	=	0x0083
                    0087    142 _PCON	=	0x0087
                    0088    143 _TCON	=	0x0088
                    0089    144 _TMOD	=	0x0089
                    008A    145 _TL0	=	0x008a
                    008B    146 _TL1	=	0x008b
                    008C    147 _TH0	=	0x008c
                    008D    148 _TH1	=	0x008d
                    0090    149 _P1	=	0x0090
                    0098    150 _SCON	=	0x0098
                    0099    151 _SBUF	=	0x0099
                    00A0    152 _P2	=	0x00a0
                    00A8    153 _IE	=	0x00a8
                    00B0    154 _P3	=	0x00b0
                    00B8    155 _IP	=	0x00b8
                    00D0    156 _PSW	=	0x00d0
                    00E0    157 _ACC	=	0x00e0
                    00F0    158 _B	=	0x00f0
                            159 ;--------------------------------------------------------
                            160 ; special function bits
                            161 ;--------------------------------------------------------
                            162 	.area RSEG    (DATA)
                    0080    163 _P0_0	=	0x0080
                    0081    164 _P0_1	=	0x0081
                    0082    165 _P0_2	=	0x0082
                    0083    166 _P0_3	=	0x0083
                    0084    167 _P0_4	=	0x0084
                    0085    168 _P0_5	=	0x0085
                    0086    169 _P0_6	=	0x0086
                    0087    170 _P0_7	=	0x0087
                    0088    171 _IT0	=	0x0088
                    0089    172 _IE0	=	0x0089
                    008A    173 _IT1	=	0x008a
                    008B    174 _IE1	=	0x008b
                    008C    175 _TR0	=	0x008c
                    008D    176 _TF0	=	0x008d
                    008E    177 _TR1	=	0x008e
                    008F    178 _TF1	=	0x008f
                    0090    179 _P1_0	=	0x0090
                    0091    180 _P1_1	=	0x0091
                    0092    181 _P1_2	=	0x0092
                    0093    182 _P1_3	=	0x0093
                    0094    183 _P1_4	=	0x0094
                    0095    184 _P1_5	=	0x0095
                    0096    185 _P1_6	=	0x0096
                    0097    186 _P1_7	=	0x0097
                    0098    187 _RI	=	0x0098
                    0099    188 _TI	=	0x0099
                    009A    189 _RB8	=	0x009a
                    009B    190 _TB8	=	0x009b
                    009C    191 _REN	=	0x009c
                    009D    192 _SM2	=	0x009d
                    009E    193 _SM1	=	0x009e
                    009F    194 _SM0	=	0x009f
                    00A0    195 _P2_0	=	0x00a0
                    00A1    196 _P2_1	=	0x00a1
                    00A2    197 _P2_2	=	0x00a2
                    00A3    198 _P2_3	=	0x00a3
                    00A4    199 _P2_4	=	0x00a4
                    00A5    200 _P2_5	=	0x00a5
                    00A6    201 _P2_6	=	0x00a6
                    00A7    202 _P2_7	=	0x00a7
                    00A8    203 _EX0	=	0x00a8
                    00A9    204 _ET0	=	0x00a9
                    00AA    205 _EX1	=	0x00aa
                    00AB    206 _ET1	=	0x00ab
                    00AC    207 _ES	=	0x00ac
                    00AF    208 _EA	=	0x00af
                    00B0    209 _P3_0	=	0x00b0
                    00B1    210 _P3_1	=	0x00b1
                    00B2    211 _P3_2	=	0x00b2
                    00B3    212 _P3_3	=	0x00b3
                    00B4    213 _P3_4	=	0x00b4
                    00B5    214 _P3_5	=	0x00b5
                    00B6    215 _P3_6	=	0x00b6
                    00B7    216 _P3_7	=	0x00b7
                    00B0    217 _RXD	=	0x00b0
                    00B1    218 _TXD	=	0x00b1
                    00B2    219 _INT0	=	0x00b2
                    00B3    220 _INT1	=	0x00b3
                    00B4    221 _T0	=	0x00b4
                    00B5    222 _T1	=	0x00b5
                    00B6    223 _WR	=	0x00b6
                    00B7    224 _RD	=	0x00b7
                    00B8    225 _PX0	=	0x00b8
                    00B9    226 _PT0	=	0x00b9
                    00BA    227 _PX1	=	0x00ba
                    00BB    228 _PT1	=	0x00bb
                    00BC    229 _PS	=	0x00bc
                    00D0    230 _P	=	0x00d0
                    00D1    231 _F1	=	0x00d1
                    00D2    232 _OV	=	0x00d2
                    00D3    233 _RS0	=	0x00d3
                    00D4    234 _RS1	=	0x00d4
                    00D5    235 _F0	=	0x00d5
                    00D6    236 _AC	=	0x00d6
                    00D7    237 _CY	=	0x00d7
                            238 ;--------------------------------------------------------
                            239 ; overlayable register banks
                            240 ;--------------------------------------------------------
                            241 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     242 	.ds 8
                            243 ;--------------------------------------------------------
                            244 ; internal ram data
                            245 ;--------------------------------------------------------
                            246 	.area DSEG    (DATA)
                            247 ;--------------------------------------------------------
                            248 ; overlayable items in internal ram 
                            249 ;--------------------------------------------------------
                            250 	.area OSEG    (OVR,DATA)
                            251 ;--------------------------------------------------------
                            252 ; Stack segment in internal ram 
                            253 ;--------------------------------------------------------
                            254 	.area	SSEG	(DATA)
   0021                     255 __start__stack:
   0021                     256 	.ds	1
                            257 
                            258 ;--------------------------------------------------------
                            259 ; indirectly addressable internal ram data
                            260 ;--------------------------------------------------------
                            261 	.area ISEG    (DATA)
                            262 ;--------------------------------------------------------
                            263 ; absolute internal ram data
                            264 ;--------------------------------------------------------
                            265 	.area IABS    (ABS,DATA)
                            266 	.area IABS    (ABS,DATA)
                            267 ;--------------------------------------------------------
                            268 ; bit data
                            269 ;--------------------------------------------------------
                            270 	.area BSEG    (BIT)
                            271 ;--------------------------------------------------------
                            272 ; paged external ram data
                            273 ;--------------------------------------------------------
                            274 	.area PSEG    (PAG,XDATA)
                            275 ;--------------------------------------------------------
                            276 ; external ram data
                            277 ;--------------------------------------------------------
                            278 	.area XSEG    (XDATA)
                    FFC2    279 _winstLCD	=	0xffc2
                    FFD2    280 _wdataLCD	=	0xffd2
                    FFE2    281 _rinstLCD	=	0xffe2
                    FFF2    282 _rdataLCD	=	0xfff2
   0000                     283 _point:
   0000                     284 	.ds 8
   0008                     285 _SCmap::
   0008                     286 	.ds 64
   0048                     287 _map::
   0048                     288 	.ds 64
   0088                     289 _Timer0::
   0088                     290 	.ds 7
                    FFE4    291 _dacWrite	=	0xffe4
   008F                     292 _player::
   008F                     293 	.ds 3
   0092                     294 _setInitialScreen_control_1_1:
   0092                     295 	.ds 1
   0093                     296 _setLevel1_control_1_1:
   0093                     297 	.ds 1
   0094                     298 _setLevel2_control_1_1:
   0094                     299 	.ds 1
   0095                     300 _setLevel3_control_1_1:
   0095                     301 	.ds 1
   0096                     302 _setLevel4_control_1_1:
   0096                     303 	.ds 1
   0097                     304 _setLevel5_control_1_1:
   0097                     305 	.ds 1
                            306 ;--------------------------------------------------------
                            307 ; absolute external ram data
                            308 ;--------------------------------------------------------
                            309 	.area XABS    (ABS,XDATA)
                            310 ;--------------------------------------------------------
                            311 ; external initialized ram data
                            312 ;--------------------------------------------------------
                            313 	.area XISEG   (XDATA)
   039A                     314 _rxMsg:
   039A                     315 	.ds 1
   039B                     316 _mainMario_melody::
   039B                     317 	.ds 156
   0437                     318 _mainMario_noteTime::
   0437                     319 	.ds 78
   0485                     320 _underworld_melody::
   0485                     321 	.ds 112
   04F5                     322 _underworld_noteTime::
   04F5                     323 	.ds 56
   052D                     324 _adobe_melody::
   052D                     325 	.ds 32
   054D                     326 _adobe_noteTime::
   054D                     327 	.ds 16
   055D                     328 _beep1_melody::
   055D                     329 	.ds 4
   0561                     330 _beep1_noteTime::
   0561                     331 	.ds 2
   0563                     332 _beep2_melody::
   0563                     333 	.ds 4
   0567                     334 _beep2_noteTime::
   0567                     335 	.ds 2
                            336 	.area HOME    (CODE)
                            337 	.area GSINIT0 (CODE)
                            338 	.area GSINIT1 (CODE)
                            339 	.area GSINIT2 (CODE)
                            340 	.area GSINIT3 (CODE)
                            341 	.area GSINIT4 (CODE)
                            342 	.area GSINIT5 (CODE)
                            343 	.area GSINIT  (CODE)
                            344 	.area GSFINAL (CODE)
                            345 	.area CSEG    (CODE)
                            346 ;--------------------------------------------------------
                            347 ; interrupt vector 
                            348 ;--------------------------------------------------------
                            349 	.area HOME    (CODE)
   0000                     350 __interrupt_vect:
   0000 02 00 13            351 	ljmp	__sdcc_gsinit_startup
   0003 32                  352 	reti
   0004                     353 	.ds	7
   000B 02 23 92            354 	ljmp	_timer
                            355 ;--------------------------------------------------------
                            356 ; global & static initialisations
                            357 ;--------------------------------------------------------
                            358 	.area HOME    (CODE)
                            359 	.area GSINIT  (CODE)
                            360 	.area GSFINAL (CODE)
                            361 	.area GSINIT  (CODE)
                            362 	.globl __sdcc_gsinit_startup
                            363 	.globl __sdcc_program_startup
                            364 	.globl __start__stack
                            365 	.globl __mcs51_genXINIT
                            366 	.globl __mcs51_genXRAMCLEAR
                            367 	.globl __mcs51_genRAMCLEAR
                            368 	.area GSFINAL (CODE)
   006C 02 00 0E            369 	ljmp	__sdcc_program_startup
                            370 ;--------------------------------------------------------
                            371 ; Home
                            372 ;--------------------------------------------------------
                            373 	.area HOME    (CODE)
                            374 	.area HOME    (CODE)
   000E                     375 __sdcc_program_startup:
   000E 12 06 E3            376 	lcall	_main
                            377 ;	return from main will lock up
   0011 80 FE               378 	sjmp .
                            379 ;--------------------------------------------------------
                            380 ; code
                            381 ;--------------------------------------------------------
                            382 	.area CSEG    (CODE)
                            383 ;------------------------------------------------------------
                            384 ;Allocation info for local variables in function 'interruptConfig'
                            385 ;------------------------------------------------------------
                            386 ;------------------------------------------------------------
                            387 ;	main.c:19: void interruptConfig(){
                            388 ;	-----------------------------------------
                            389 ;	 function interruptConfig
                            390 ;	-----------------------------------------
   006F                     391 _interruptConfig:
                    0002    392 	ar2 = 0x02
                    0003    393 	ar3 = 0x03
                    0004    394 	ar4 = 0x04
                    0005    395 	ar5 = 0x05
                    0006    396 	ar6 = 0x06
                    0007    397 	ar7 = 0x07
                    0000    398 	ar0 = 0x00
                    0001    399 	ar1 = 0x01
                            400 ;	main.c:20: IE = 0x82; 								// Habilitando interrupções, Serial e timer0 (slide sistmicro 03_Interrupções.pdf pg.9)
   006F 75 A8 82            401 	mov	_IE,#0x82
                            402 ;	main.c:21: IP = 0x08;								// Prioridade de interrupção Serial
   0072 75 B8 08            403 	mov	_IP,#0x08
   0075 22                  404 	ret
                            405 ;------------------------------------------------------------
                            406 ;Allocation info for local variables in function 'configs'
                            407 ;------------------------------------------------------------
                            408 ;------------------------------------------------------------
                            409 ;	main.c:24: void configs(){
                            410 ;	-----------------------------------------
                            411 ;	 function configs
                            412 ;	-----------------------------------------
   0076                     413 _configs:
                            414 ;	main.c:25: interruptConfig();						// Habilitando configuracoes
   0076 12 00 6F            415 	lcall	_interruptConfig
                            416 ;	main.c:26: timerConfig();
   0079 12 22 9A            417 	lcall	_timerConfig
                            418 ;	main.c:27: LCDconfig();
   007C 12 07 00            419 	lcall	_LCDconfig
                            420 ;	main.c:28: serialConfig(1,player);
   007F 90 00 8F            421 	mov	dptr,#_player
   0082 E0                  422 	movx	a,@dptr
   0083 FA                  423 	mov	r2,a
   0084 A3                  424 	inc	dptr
   0085 E0                  425 	movx	a,@dptr
   0086 FB                  426 	mov	r3,a
   0087 A3                  427 	inc	dptr
   0088 E0                  428 	movx	a,@dptr
   0089 FC                  429 	mov	r4,a
   008A 90 03 7A            430 	mov	dptr,#_serialConfig_PARM_2
   008D EA                  431 	mov	a,r2
   008E F0                  432 	movx	@dptr,a
   008F A3                  433 	inc	dptr
   0090 EB                  434 	mov	a,r3
   0091 F0                  435 	movx	@dptr,a
   0092 A3                  436 	inc	dptr
   0093 EC                  437 	mov	a,r4
   0094 F0                  438 	movx	@dptr,a
   0095 75 82 01            439 	mov	dpl,#0x01
   0098 02 27 92            440 	ljmp	_serialConfig
                            441 ;------------------------------------------------------------
                            442 ;Allocation info for local variables in function 'setInitialScreen'
                            443 ;------------------------------------------------------------
                            444 ;control                   Allocated with name '_setInitialScreen_control_1_1'
                            445 ;------------------------------------------------------------
                            446 ;	main.c:32: void setInitialScreen(){
                            447 ;	-----------------------------------------
                            448 ;	 function setInitialScreen
                            449 ;	-----------------------------------------
   009B                     450 _setInitialScreen:
                            451 ;	main.c:34: unsigned char control = 1;
   009B 90 00 92            452 	mov	dptr,#_setInitialScreen_control_1_1
   009E 74 01               453 	mov	a,#0x01
   00A0 F0                  454 	movx	@dptr,a
                            455 ;	main.c:36: setMap1CGram();
   00A1 12 08 5C            456 	lcall	_setMap1CGram
                            457 ;	main.c:37: LCD_putTextAt("MAZE GAME",2,CENTER);
   00A4 90 02 75            458 	mov	dptr,#_LCD_putTextAt_PARM_2
   00A7 74 02               459 	mov	a,#0x02
   00A9 F0                  460 	movx	@dptr,a
   00AA 90 02 76            461 	mov	dptr,#_LCD_putTextAt_PARM_3
   00AD 74 02               462 	mov	a,#0x02
   00AF F0                  463 	movx	@dptr,a
   00B0 90 34 D8            464 	mov	dptr,#__str_0
   00B3 75 F0 80            465 	mov	b,#0x80
   00B6 12 1E 9C            466 	lcall	_LCD_putTextAt
                            467 ;	main.c:39: while(control)
   00B9                     468 00101$:
   00B9 90 00 92            469 	mov	dptr,#_setInitialScreen_control_1_1
   00BC E0                  470 	movx	a,@dptr
   00BD FA                  471 	mov	r2,a
   00BE 60 20               472 	jz	00103$
                            473 ;	main.c:40: control = LCD_putText(" aperte ESPACO para iniciar",3, 250);
   00C0 90 02 8C            474 	mov	dptr,#_LCD_putText_PARM_2
   00C3 74 03               475 	mov	a,#0x03
   00C5 F0                  476 	movx	@dptr,a
   00C6 90 02 8D            477 	mov	dptr,#_LCD_putText_PARM_3
   00C9 74 FA               478 	mov	a,#0xFA
   00CB F0                  479 	movx	@dptr,a
   00CC E4                  480 	clr	a
   00CD A3                  481 	inc	dptr
   00CE F0                  482 	movx	@dptr,a
   00CF 90 34 E2            483 	mov	dptr,#__str_1
   00D2 75 F0 80            484 	mov	b,#0x80
   00D5 12 1F AE            485 	lcall	_LCD_putText
   00D8 E5 82               486 	mov	a,dpl
   00DA 90 00 92            487 	mov	dptr,#_setInitialScreen_control_1_1
   00DD F0                  488 	movx	@dptr,a
   00DE 80 D9               489 	sjmp	00101$
   00E0                     490 00103$:
                            491 ;	main.c:42: clearLCD();
   00E0 02 1E 58            492 	ljmp	_clearLCD
                            493 ;------------------------------------------------------------
                            494 ;Allocation info for local variables in function 'setInstructions'
                            495 ;------------------------------------------------------------
                            496 ;------------------------------------------------------------
                            497 ;	main.c:46: void setInstructions(){
                            498 ;	-----------------------------------------
                            499 ;	 function setInstructions
                            500 ;	-----------------------------------------
   00E3                     501 _setInstructions:
                            502 ;	main.c:48: LCD_putTextAt("INSTRUCOES",1,CENTER);
   00E3 90 02 75            503 	mov	dptr,#_LCD_putTextAt_PARM_2
   00E6 74 01               504 	mov	a,#0x01
   00E8 F0                  505 	movx	@dptr,a
   00E9 90 02 76            506 	mov	dptr,#_LCD_putTextAt_PARM_3
   00EC 74 02               507 	mov	a,#0x02
   00EE F0                  508 	movx	@dptr,a
   00EF 90 34 FE            509 	mov	dptr,#__str_2
   00F2 75 F0 80            510 	mov	b,#0x80
   00F5 12 1E 9C            511 	lcall	_LCD_putTextAt
                            512 ;	main.c:49: LCD_putTextAt("1) Movimente com",2,LEFT);
   00F8 90 02 75            513 	mov	dptr,#_LCD_putTextAt_PARM_2
   00FB 74 02               514 	mov	a,#0x02
   00FD F0                  515 	movx	@dptr,a
   00FE 90 02 76            516 	mov	dptr,#_LCD_putTextAt_PARM_3
   0101 74 01               517 	mov	a,#0x01
   0103 F0                  518 	movx	@dptr,a
   0104 90 35 09            519 	mov	dptr,#__str_3
   0107 75 F0 80            520 	mov	b,#0x80
   010A 12 1E 9C            521 	lcall	_LCD_putTextAt
                            522 ;	main.c:50: LCD_putTextAt("W,S,A,D ",3,CENTER);
   010D 90 02 75            523 	mov	dptr,#_LCD_putTextAt_PARM_2
   0110 74 03               524 	mov	a,#0x03
   0112 F0                  525 	movx	@dptr,a
   0113 90 02 76            526 	mov	dptr,#_LCD_putTextAt_PARM_3
   0116 74 02               527 	mov	a,#0x02
   0118 F0                  528 	movx	@dptr,a
   0119 90 35 1A            529 	mov	dptr,#__str_4
   011C 75 F0 80            530 	mov	b,#0x80
   011F 12 1E 9C            531 	lcall	_LCD_putTextAt
                            532 ;	main.c:51: delay(3500,1);
   0122 90 02 D3            533 	mov	dptr,#_delay_PARM_2
   0125 74 01               534 	mov	a,#0x01
   0127 F0                  535 	movx	@dptr,a
   0128 90 0D AC            536 	mov	dptr,#0x0DAC
   012B 12 22 B8            537 	lcall	_delay
                            538 ;	main.c:52: clearLCD();
   012E 12 1E 58            539 	lcall	_clearLCD
                            540 ;	main.c:54: LCD_putTextAt("COMO GANHAR",1,CENTER);
   0131 90 02 75            541 	mov	dptr,#_LCD_putTextAt_PARM_2
   0134 74 01               542 	mov	a,#0x01
   0136 F0                  543 	movx	@dptr,a
   0137 90 02 76            544 	mov	dptr,#_LCD_putTextAt_PARM_3
   013A 74 02               545 	mov	a,#0x02
   013C F0                  546 	movx	@dptr,a
   013D 90 35 23            547 	mov	dptr,#__str_5
   0140 75 F0 80            548 	mov	b,#0x80
   0143 12 1E 9C            549 	lcall	_LCD_putTextAt
                            550 ;	main.c:55: LCD_putTextAt("Ache uma saida ",2,LEFT);
   0146 90 02 75            551 	mov	dptr,#_LCD_putTextAt_PARM_2
   0149 74 02               552 	mov	a,#0x02
   014B F0                  553 	movx	@dptr,a
   014C 90 02 76            554 	mov	dptr,#_LCD_putTextAt_PARM_3
   014F 74 01               555 	mov	a,#0x01
   0151 F0                  556 	movx	@dptr,a
   0152 90 35 2F            557 	mov	dptr,#__str_6
   0155 75 F0 80            558 	mov	b,#0x80
   0158 12 1E 9C            559 	lcall	_LCD_putTextAt
                            560 ;	main.c:56: LCD_putTextAt("para CIMA,DIREI-",3,LEFT);
   015B 90 02 75            561 	mov	dptr,#_LCD_putTextAt_PARM_2
   015E 74 03               562 	mov	a,#0x03
   0160 F0                  563 	movx	@dptr,a
   0161 90 02 76            564 	mov	dptr,#_LCD_putTextAt_PARM_3
   0164 74 01               565 	mov	a,#0x01
   0166 F0                  566 	movx	@dptr,a
   0167 90 35 3F            567 	mov	dptr,#__str_7
   016A 75 F0 80            568 	mov	b,#0x80
   016D 12 1E 9C            569 	lcall	_LCD_putTextAt
                            570 ;	main.c:57: LCD_putTextAt("TA ou ESQUERDA",4,LEFT);
   0170 90 02 75            571 	mov	dptr,#_LCD_putTextAt_PARM_2
   0173 74 04               572 	mov	a,#0x04
   0175 F0                  573 	movx	@dptr,a
   0176 90 02 76            574 	mov	dptr,#_LCD_putTextAt_PARM_3
   0179 74 01               575 	mov	a,#0x01
   017B F0                  576 	movx	@dptr,a
   017C 90 35 50            577 	mov	dptr,#__str_8
   017F 75 F0 80            578 	mov	b,#0x80
   0182 12 1E 9C            579 	lcall	_LCD_putTextAt
                            580 ;	main.c:58: delay(3500,1);
   0185 90 02 D3            581 	mov	dptr,#_delay_PARM_2
   0188 74 01               582 	mov	a,#0x01
   018A F0                  583 	movx	@dptr,a
   018B 90 0D AC            584 	mov	dptr,#0x0DAC
   018E 12 22 B8            585 	lcall	_delay
                            586 ;	main.c:59: clearLCD();
   0191 02 1E 58            587 	ljmp	_clearLCD
                            588 ;------------------------------------------------------------
                            589 ;Allocation info for local variables in function 'setLevel1'
                            590 ;------------------------------------------------------------
                            591 ;control                   Allocated with name '_setLevel1_control_1_1'
                            592 ;------------------------------------------------------------
                            593 ;	main.c:64: void setLevel1(){
                            594 ;	-----------------------------------------
                            595 ;	 function setLevel1
                            596 ;	-----------------------------------------
   0194                     597 _setLevel1:
                            598 ;	main.c:65: unsigned char control = 1;
   0194 90 00 93            599 	mov	dptr,#_setLevel1_control_1_1
   0197 74 01               600 	mov	a,#0x01
   0199 F0                  601 	movx	@dptr,a
                            602 ;	main.c:67: LCD_putTextAt("NIVEL",2,CENTER);
   019A 90 02 75            603 	mov	dptr,#_LCD_putTextAt_PARM_2
   019D 74 02               604 	mov	a,#0x02
   019F F0                  605 	movx	@dptr,a
   01A0 90 02 76            606 	mov	dptr,#_LCD_putTextAt_PARM_3
   01A3 74 02               607 	mov	a,#0x02
   01A5 F0                  608 	movx	@dptr,a
   01A6 90 35 5F            609 	mov	dptr,#__str_9
   01A9 75 F0 80            610 	mov	b,#0x80
   01AC 12 1E 9C            611 	lcall	_LCD_putTextAt
                            612 ;	main.c:68: LCD_putTextAt("1",3,CENTER);
   01AF 90 02 75            613 	mov	dptr,#_LCD_putTextAt_PARM_2
   01B2 74 03               614 	mov	a,#0x03
   01B4 F0                  615 	movx	@dptr,a
   01B5 90 02 76            616 	mov	dptr,#_LCD_putTextAt_PARM_3
   01B8 74 02               617 	mov	a,#0x02
   01BA F0                  618 	movx	@dptr,a
   01BB 90 35 65            619 	mov	dptr,#__str_10
   01BE 75 F0 80            620 	mov	b,#0x80
   01C1 12 1E 9C            621 	lcall	_LCD_putTextAt
                            622 ;	main.c:69: delay(3000,1);
   01C4 90 02 D3            623 	mov	dptr,#_delay_PARM_2
   01C7 74 01               624 	mov	a,#0x01
   01C9 F0                  625 	movx	@dptr,a
   01CA 90 0B B8            626 	mov	dptr,#0x0BB8
   01CD 12 22 B8            627 	lcall	_delay
                            628 ;	main.c:70: clearLCD();
   01D0 12 1E 58            629 	lcall	_clearLCD
                            630 ;	main.c:72: player->sline = 7;
   01D3 90 00 8F            631 	mov	dptr,#_player
   01D6 E0                  632 	movx	a,@dptr
   01D7 FA                  633 	mov	r2,a
   01D8 A3                  634 	inc	dptr
   01D9 E0                  635 	movx	a,@dptr
   01DA FB                  636 	mov	r3,a
   01DB A3                  637 	inc	dptr
   01DC E0                  638 	movx	a,@dptr
   01DD FC                  639 	mov	r4,a
   01DE 8A 82               640 	mov	dpl,r2
   01E0 8B 83               641 	mov	dph,r3
   01E2 8C F0               642 	mov	b,r4
   01E4 74 07               643 	mov	a,#0x07
   01E6 12 33 5A            644 	lcall	__gptrput
                            645 ;	main.c:73: player->scol = 3;
   01E9 90 00 8F            646 	mov	dptr,#_player
   01EC E0                  647 	movx	a,@dptr
   01ED FA                  648 	mov	r2,a
   01EE A3                  649 	inc	dptr
   01EF E0                  650 	movx	a,@dptr
   01F0 FB                  651 	mov	r3,a
   01F1 A3                  652 	inc	dptr
   01F2 E0                  653 	movx	a,@dptr
   01F3 FC                  654 	mov	r4,a
   01F4 0A                  655 	inc	r2
   01F5 BA 00 01            656 	cjne	r2,#0x00,00108$
   01F8 0B                  657 	inc	r3
   01F9                     658 00108$:
   01F9 8A 82               659 	mov	dpl,r2
   01FB 8B 83               660 	mov	dph,r3
   01FD 8C F0               661 	mov	b,r4
   01FF 74 03               662 	mov	a,#0x03
   0201 12 33 5A            663 	lcall	__gptrput
                            664 ;	main.c:74: player->line = 4;
   0204 90 00 8F            665 	mov	dptr,#_player
   0207 E0                  666 	movx	a,@dptr
   0208 FA                  667 	mov	r2,a
   0209 A3                  668 	inc	dptr
   020A E0                  669 	movx	a,@dptr
   020B FB                  670 	mov	r3,a
   020C A3                  671 	inc	dptr
   020D E0                  672 	movx	a,@dptr
   020E FC                  673 	mov	r4,a
   020F 74 02               674 	mov	a,#0x02
   0211 2A                  675 	add	a,r2
   0212 FA                  676 	mov	r2,a
   0213 E4                  677 	clr	a
   0214 3B                  678 	addc	a,r3
   0215 FB                  679 	mov	r3,a
   0216 8A 82               680 	mov	dpl,r2
   0218 8B 83               681 	mov	dph,r3
   021A 8C F0               682 	mov	b,r4
   021C 74 04               683 	mov	a,#0x04
   021E 12 33 5A            684 	lcall	__gptrput
                            685 ;	main.c:75: player->col = 10;
   0221 90 00 8F            686 	mov	dptr,#_player
   0224 E0                  687 	movx	a,@dptr
   0225 FA                  688 	mov	r2,a
   0226 A3                  689 	inc	dptr
   0227 E0                  690 	movx	a,@dptr
   0228 FB                  691 	mov	r3,a
   0229 A3                  692 	inc	dptr
   022A E0                  693 	movx	a,@dptr
   022B FC                  694 	mov	r4,a
   022C 74 03               695 	mov	a,#0x03
   022E 2A                  696 	add	a,r2
   022F FA                  697 	mov	r2,a
   0230 E4                  698 	clr	a
   0231 3B                  699 	addc	a,r3
   0232 FB                  700 	mov	r3,a
   0233 8A 82               701 	mov	dpl,r2
   0235 8B 83               702 	mov	dph,r3
   0237 8C F0               703 	mov	b,r4
   0239 74 0A               704 	mov	a,#0x0A
   023B 12 33 5A            705 	lcall	__gptrput
                            706 ;	main.c:77: printMap();
   023E 12 07 F3            707 	lcall	_printMap
                            708 ;	main.c:79: while(control)
   0241                     709 00101$:
   0241 90 00 93            710 	mov	dptr,#_setLevel1_control_1_1
   0244 E0                  711 	movx	a,@dptr
   0245 FA                  712 	mov	r2,a
   0246 60 4E               713 	jz	00103$
                            714 ;	main.c:80: control = configMap(player->line, player->col, 1);
   0248 90 00 8F            715 	mov	dptr,#_player
   024B E0                  716 	movx	a,@dptr
   024C FA                  717 	mov	r2,a
   024D A3                  718 	inc	dptr
   024E E0                  719 	movx	a,@dptr
   024F FB                  720 	mov	r3,a
   0250 A3                  721 	inc	dptr
   0251 E0                  722 	movx	a,@dptr
   0252 FC                  723 	mov	r4,a
   0253 74 02               724 	mov	a,#0x02
   0255 2A                  725 	add	a,r2
   0256 FA                  726 	mov	r2,a
   0257 E4                  727 	clr	a
   0258 3B                  728 	addc	a,r3
   0259 FB                  729 	mov	r3,a
   025A 8A 82               730 	mov	dpl,r2
   025C 8B 83               731 	mov	dph,r3
   025E 8C F0               732 	mov	b,r4
   0260 12 34 B8            733 	lcall	__gptrget
   0263 FA                  734 	mov	r2,a
   0264 90 00 8F            735 	mov	dptr,#_player
   0267 E0                  736 	movx	a,@dptr
   0268 FB                  737 	mov	r3,a
   0269 A3                  738 	inc	dptr
   026A E0                  739 	movx	a,@dptr
   026B FC                  740 	mov	r4,a
   026C A3                  741 	inc	dptr
   026D E0                  742 	movx	a,@dptr
   026E FD                  743 	mov	r5,a
   026F 74 03               744 	mov	a,#0x03
   0271 2B                  745 	add	a,r3
   0272 FB                  746 	mov	r3,a
   0273 E4                  747 	clr	a
   0274 3C                  748 	addc	a,r4
   0275 FC                  749 	mov	r4,a
   0276 8B 82               750 	mov	dpl,r3
   0278 8C 83               751 	mov	dph,r4
   027A 8D F0               752 	mov	b,r5
   027C 12 34 B8            753 	lcall	__gptrget
   027F 90 02 6D            754 	mov	dptr,#_configMap_PARM_2
   0282 F0                  755 	movx	@dptr,a
   0283 90 02 6E            756 	mov	dptr,#_configMap_PARM_3
   0286 74 01               757 	mov	a,#0x01
   0288 F0                  758 	movx	@dptr,a
   0289 8A 82               759 	mov	dpl,r2
   028B 12 1C D8            760 	lcall	_configMap
   028E E5 82               761 	mov	a,dpl
   0290 90 00 93            762 	mov	dptr,#_setLevel1_control_1_1
   0293 F0                  763 	movx	@dptr,a
   0294 80 AB               764 	sjmp	00101$
   0296                     765 00103$:
                            766 ;	main.c:82: clearLCD();
   0296 02 1E 58            767 	ljmp	_clearLCD
                            768 ;------------------------------------------------------------
                            769 ;Allocation info for local variables in function 'setLevel2'
                            770 ;------------------------------------------------------------
                            771 ;control                   Allocated with name '_setLevel2_control_1_1'
                            772 ;------------------------------------------------------------
                            773 ;	main.c:85: void setLevel2(){
                            774 ;	-----------------------------------------
                            775 ;	 function setLevel2
                            776 ;	-----------------------------------------
   0299                     777 _setLevel2:
                            778 ;	main.c:86: unsigned char control = 1;
   0299 90 00 94            779 	mov	dptr,#_setLevel2_control_1_1
   029C 74 01               780 	mov	a,#0x01
   029E F0                  781 	movx	@dptr,a
                            782 ;	main.c:88: LCD_putTextAt("NIVEL",2,CENTER);
   029F 90 02 75            783 	mov	dptr,#_LCD_putTextAt_PARM_2
   02A2 74 02               784 	mov	a,#0x02
   02A4 F0                  785 	movx	@dptr,a
   02A5 90 02 76            786 	mov	dptr,#_LCD_putTextAt_PARM_3
   02A8 74 02               787 	mov	a,#0x02
   02AA F0                  788 	movx	@dptr,a
   02AB 90 35 5F            789 	mov	dptr,#__str_9
   02AE 75 F0 80            790 	mov	b,#0x80
   02B1 12 1E 9C            791 	lcall	_LCD_putTextAt
                            792 ;	main.c:89: LCD_putTextAt("2",3,CENTER);
   02B4 90 02 75            793 	mov	dptr,#_LCD_putTextAt_PARM_2
   02B7 74 03               794 	mov	a,#0x03
   02B9 F0                  795 	movx	@dptr,a
   02BA 90 02 76            796 	mov	dptr,#_LCD_putTextAt_PARM_3
   02BD 74 02               797 	mov	a,#0x02
   02BF F0                  798 	movx	@dptr,a
   02C0 90 35 67            799 	mov	dptr,#__str_11
   02C3 75 F0 80            800 	mov	b,#0x80
   02C6 12 1E 9C            801 	lcall	_LCD_putTextAt
                            802 ;	main.c:90: delay(3000,1);
   02C9 90 02 D3            803 	mov	dptr,#_delay_PARM_2
   02CC 74 01               804 	mov	a,#0x01
   02CE F0                  805 	movx	@dptr,a
   02CF 90 0B B8            806 	mov	dptr,#0x0BB8
   02D2 12 22 B8            807 	lcall	_delay
                            808 ;	main.c:91: clearLCD();
   02D5 12 1E 58            809 	lcall	_clearLCD
                            810 ;	main.c:93: setMap2CGram();
   02D8 12 0C 76            811 	lcall	_setMap2CGram
                            812 ;	main.c:95: player->sline = 7;
   02DB 90 00 8F            813 	mov	dptr,#_player
   02DE E0                  814 	movx	a,@dptr
   02DF FA                  815 	mov	r2,a
   02E0 A3                  816 	inc	dptr
   02E1 E0                  817 	movx	a,@dptr
   02E2 FB                  818 	mov	r3,a
   02E3 A3                  819 	inc	dptr
   02E4 E0                  820 	movx	a,@dptr
   02E5 FC                  821 	mov	r4,a
   02E6 8A 82               822 	mov	dpl,r2
   02E8 8B 83               823 	mov	dph,r3
   02EA 8C F0               824 	mov	b,r4
   02EC 74 07               825 	mov	a,#0x07
   02EE 12 33 5A            826 	lcall	__gptrput
                            827 ;	main.c:96: player->scol = 2;
   02F1 90 00 8F            828 	mov	dptr,#_player
   02F4 E0                  829 	movx	a,@dptr
   02F5 FA                  830 	mov	r2,a
   02F6 A3                  831 	inc	dptr
   02F7 E0                  832 	movx	a,@dptr
   02F8 FB                  833 	mov	r3,a
   02F9 A3                  834 	inc	dptr
   02FA E0                  835 	movx	a,@dptr
   02FB FC                  836 	mov	r4,a
   02FC 0A                  837 	inc	r2
   02FD BA 00 01            838 	cjne	r2,#0x00,00108$
   0300 0B                  839 	inc	r3
   0301                     840 00108$:
   0301 8A 82               841 	mov	dpl,r2
   0303 8B 83               842 	mov	dph,r3
   0305 8C F0               843 	mov	b,r4
   0307 74 02               844 	mov	a,#0x02
   0309 12 33 5A            845 	lcall	__gptrput
                            846 ;	main.c:97: player->line = 4;
   030C 90 00 8F            847 	mov	dptr,#_player
   030F E0                  848 	movx	a,@dptr
   0310 FA                  849 	mov	r2,a
   0311 A3                  850 	inc	dptr
   0312 E0                  851 	movx	a,@dptr
   0313 FB                  852 	mov	r3,a
   0314 A3                  853 	inc	dptr
   0315 E0                  854 	movx	a,@dptr
   0316 FC                  855 	mov	r4,a
   0317 74 02               856 	mov	a,#0x02
   0319 2A                  857 	add	a,r2
   031A FA                  858 	mov	r2,a
   031B E4                  859 	clr	a
   031C 3B                  860 	addc	a,r3
   031D FB                  861 	mov	r3,a
   031E 8A 82               862 	mov	dpl,r2
   0320 8B 83               863 	mov	dph,r3
   0322 8C F0               864 	mov	b,r4
   0324 74 04               865 	mov	a,#0x04
   0326 12 33 5A            866 	lcall	__gptrput
                            867 ;	main.c:98: player->col = 2;
   0329 90 00 8F            868 	mov	dptr,#_player
   032C E0                  869 	movx	a,@dptr
   032D FA                  870 	mov	r2,a
   032E A3                  871 	inc	dptr
   032F E0                  872 	movx	a,@dptr
   0330 FB                  873 	mov	r3,a
   0331 A3                  874 	inc	dptr
   0332 E0                  875 	movx	a,@dptr
   0333 FC                  876 	mov	r4,a
   0334 74 03               877 	mov	a,#0x03
   0336 2A                  878 	add	a,r2
   0337 FA                  879 	mov	r2,a
   0338 E4                  880 	clr	a
   0339 3B                  881 	addc	a,r3
   033A FB                  882 	mov	r3,a
   033B 8A 82               883 	mov	dpl,r2
   033D 8B 83               884 	mov	dph,r3
   033F 8C F0               885 	mov	b,r4
   0341 74 02               886 	mov	a,#0x02
   0343 12 33 5A            887 	lcall	__gptrput
                            888 ;	main.c:100: while(control)
   0346                     889 00101$:
   0346 90 00 94            890 	mov	dptr,#_setLevel2_control_1_1
   0349 E0                  891 	movx	a,@dptr
   034A FA                  892 	mov	r2,a
   034B 60 4E               893 	jz	00103$
                            894 ;	main.c:101: control = configMap(player->line, player->col, 2);
   034D 90 00 8F            895 	mov	dptr,#_player
   0350 E0                  896 	movx	a,@dptr
   0351 FA                  897 	mov	r2,a
   0352 A3                  898 	inc	dptr
   0353 E0                  899 	movx	a,@dptr
   0354 FB                  900 	mov	r3,a
   0355 A3                  901 	inc	dptr
   0356 E0                  902 	movx	a,@dptr
   0357 FC                  903 	mov	r4,a
   0358 74 02               904 	mov	a,#0x02
   035A 2A                  905 	add	a,r2
   035B FA                  906 	mov	r2,a
   035C E4                  907 	clr	a
   035D 3B                  908 	addc	a,r3
   035E FB                  909 	mov	r3,a
   035F 8A 82               910 	mov	dpl,r2
   0361 8B 83               911 	mov	dph,r3
   0363 8C F0               912 	mov	b,r4
   0365 12 34 B8            913 	lcall	__gptrget
   0368 FA                  914 	mov	r2,a
   0369 90 00 8F            915 	mov	dptr,#_player
   036C E0                  916 	movx	a,@dptr
   036D FB                  917 	mov	r3,a
   036E A3                  918 	inc	dptr
   036F E0                  919 	movx	a,@dptr
   0370 FC                  920 	mov	r4,a
   0371 A3                  921 	inc	dptr
   0372 E0                  922 	movx	a,@dptr
   0373 FD                  923 	mov	r5,a
   0374 74 03               924 	mov	a,#0x03
   0376 2B                  925 	add	a,r3
   0377 FB                  926 	mov	r3,a
   0378 E4                  927 	clr	a
   0379 3C                  928 	addc	a,r4
   037A FC                  929 	mov	r4,a
   037B 8B 82               930 	mov	dpl,r3
   037D 8C 83               931 	mov	dph,r4
   037F 8D F0               932 	mov	b,r5
   0381 12 34 B8            933 	lcall	__gptrget
   0384 90 02 6D            934 	mov	dptr,#_configMap_PARM_2
   0387 F0                  935 	movx	@dptr,a
   0388 90 02 6E            936 	mov	dptr,#_configMap_PARM_3
   038B 74 02               937 	mov	a,#0x02
   038D F0                  938 	movx	@dptr,a
   038E 8A 82               939 	mov	dpl,r2
   0390 12 1C D8            940 	lcall	_configMap
   0393 E5 82               941 	mov	a,dpl
   0395 90 00 94            942 	mov	dptr,#_setLevel2_control_1_1
   0398 F0                  943 	movx	@dptr,a
   0399 80 AB               944 	sjmp	00101$
   039B                     945 00103$:
                            946 ;	main.c:103: clearLCD();
   039B 02 1E 58            947 	ljmp	_clearLCD
                            948 ;------------------------------------------------------------
                            949 ;Allocation info for local variables in function 'setLevel3'
                            950 ;------------------------------------------------------------
                            951 ;control                   Allocated with name '_setLevel3_control_1_1'
                            952 ;------------------------------------------------------------
                            953 ;	main.c:106: void setLevel3(){
                            954 ;	-----------------------------------------
                            955 ;	 function setLevel3
                            956 ;	-----------------------------------------
   039E                     957 _setLevel3:
                            958 ;	main.c:107: unsigned char control = 1;
   039E 90 00 95            959 	mov	dptr,#_setLevel3_control_1_1
   03A1 74 01               960 	mov	a,#0x01
   03A3 F0                  961 	movx	@dptr,a
                            962 ;	main.c:109: LCD_putTextAt("NIVEL",2,CENTER);
   03A4 90 02 75            963 	mov	dptr,#_LCD_putTextAt_PARM_2
   03A7 74 02               964 	mov	a,#0x02
   03A9 F0                  965 	movx	@dptr,a
   03AA 90 02 76            966 	mov	dptr,#_LCD_putTextAt_PARM_3
   03AD 74 02               967 	mov	a,#0x02
   03AF F0                  968 	movx	@dptr,a
   03B0 90 35 5F            969 	mov	dptr,#__str_9
   03B3 75 F0 80            970 	mov	b,#0x80
   03B6 12 1E 9C            971 	lcall	_LCD_putTextAt
                            972 ;	main.c:110: LCD_putTextAt("3",3,CENTER);
   03B9 90 02 75            973 	mov	dptr,#_LCD_putTextAt_PARM_2
   03BC 74 03               974 	mov	a,#0x03
   03BE F0                  975 	movx	@dptr,a
   03BF 90 02 76            976 	mov	dptr,#_LCD_putTextAt_PARM_3
   03C2 74 02               977 	mov	a,#0x02
   03C4 F0                  978 	movx	@dptr,a
   03C5 90 35 69            979 	mov	dptr,#__str_12
   03C8 75 F0 80            980 	mov	b,#0x80
   03CB 12 1E 9C            981 	lcall	_LCD_putTextAt
                            982 ;	main.c:111: delay(3000,1);
   03CE 90 02 D3            983 	mov	dptr,#_delay_PARM_2
   03D1 74 01               984 	mov	a,#0x01
   03D3 F0                  985 	movx	@dptr,a
   03D4 90 0B B8            986 	mov	dptr,#0x0BB8
   03D7 12 22 B8            987 	lcall	_delay
                            988 ;	main.c:112: clearLCD();
   03DA 12 1E 58            989 	lcall	_clearLCD
                            990 ;	main.c:114: setMap3CGram();
   03DD 12 10 8E            991 	lcall	_setMap3CGram
                            992 ;	main.c:116: player->sline = 5;
   03E0 90 00 8F            993 	mov	dptr,#_player
   03E3 E0                  994 	movx	a,@dptr
   03E4 FA                  995 	mov	r2,a
   03E5 A3                  996 	inc	dptr
   03E6 E0                  997 	movx	a,@dptr
   03E7 FB                  998 	mov	r3,a
   03E8 A3                  999 	inc	dptr
   03E9 E0                 1000 	movx	a,@dptr
   03EA FC                 1001 	mov	r4,a
   03EB 8A 82              1002 	mov	dpl,r2
   03ED 8B 83              1003 	mov	dph,r3
   03EF 8C F0              1004 	mov	b,r4
   03F1 74 05              1005 	mov	a,#0x05
   03F3 12 33 5A           1006 	lcall	__gptrput
                           1007 ;	main.c:117: player->scol = 5;
   03F6 90 00 8F           1008 	mov	dptr,#_player
   03F9 E0                 1009 	movx	a,@dptr
   03FA FA                 1010 	mov	r2,a
   03FB A3                 1011 	inc	dptr
   03FC E0                 1012 	movx	a,@dptr
   03FD FB                 1013 	mov	r3,a
   03FE A3                 1014 	inc	dptr
   03FF E0                 1015 	movx	a,@dptr
   0400 FC                 1016 	mov	r4,a
   0401 0A                 1017 	inc	r2
   0402 BA 00 01           1018 	cjne	r2,#0x00,00108$
   0405 0B                 1019 	inc	r3
   0406                    1020 00108$:
   0406 8A 82              1021 	mov	dpl,r2
   0408 8B 83              1022 	mov	dph,r3
   040A 8C F0              1023 	mov	b,r4
   040C 74 05              1024 	mov	a,#0x05
   040E 12 33 5A           1025 	lcall	__gptrput
                           1026 ;	main.c:118: player->line = 4;
   0411 90 00 8F           1027 	mov	dptr,#_player
   0414 E0                 1028 	movx	a,@dptr
   0415 FA                 1029 	mov	r2,a
   0416 A3                 1030 	inc	dptr
   0417 E0                 1031 	movx	a,@dptr
   0418 FB                 1032 	mov	r3,a
   0419 A3                 1033 	inc	dptr
   041A E0                 1034 	movx	a,@dptr
   041B FC                 1035 	mov	r4,a
   041C 74 02              1036 	mov	a,#0x02
   041E 2A                 1037 	add	a,r2
   041F FA                 1038 	mov	r2,a
   0420 E4                 1039 	clr	a
   0421 3B                 1040 	addc	a,r3
   0422 FB                 1041 	mov	r3,a
   0423 8A 82              1042 	mov	dpl,r2
   0425 8B 83              1043 	mov	dph,r3
   0427 8C F0              1044 	mov	b,r4
   0429 74 04              1045 	mov	a,#0x04
   042B 12 33 5A           1046 	lcall	__gptrput
                           1047 ;	main.c:119: player->col = 10;
   042E 90 00 8F           1048 	mov	dptr,#_player
   0431 E0                 1049 	movx	a,@dptr
   0432 FA                 1050 	mov	r2,a
   0433 A3                 1051 	inc	dptr
   0434 E0                 1052 	movx	a,@dptr
   0435 FB                 1053 	mov	r3,a
   0436 A3                 1054 	inc	dptr
   0437 E0                 1055 	movx	a,@dptr
   0438 FC                 1056 	mov	r4,a
   0439 74 03              1057 	mov	a,#0x03
   043B 2A                 1058 	add	a,r2
   043C FA                 1059 	mov	r2,a
   043D E4                 1060 	clr	a
   043E 3B                 1061 	addc	a,r3
   043F FB                 1062 	mov	r3,a
   0440 8A 82              1063 	mov	dpl,r2
   0442 8B 83              1064 	mov	dph,r3
   0444 8C F0              1065 	mov	b,r4
   0446 74 0A              1066 	mov	a,#0x0A
   0448 12 33 5A           1067 	lcall	__gptrput
                           1068 ;	main.c:121: while(control)
   044B                    1069 00101$:
   044B 90 00 95           1070 	mov	dptr,#_setLevel3_control_1_1
   044E E0                 1071 	movx	a,@dptr
   044F FA                 1072 	mov	r2,a
   0450 60 4E              1073 	jz	00103$
                           1074 ;	main.c:122: control = configMap(player->line, player->col,3);
   0452 90 00 8F           1075 	mov	dptr,#_player
   0455 E0                 1076 	movx	a,@dptr
   0456 FA                 1077 	mov	r2,a
   0457 A3                 1078 	inc	dptr
   0458 E0                 1079 	movx	a,@dptr
   0459 FB                 1080 	mov	r3,a
   045A A3                 1081 	inc	dptr
   045B E0                 1082 	movx	a,@dptr
   045C FC                 1083 	mov	r4,a
   045D 74 02              1084 	mov	a,#0x02
   045F 2A                 1085 	add	a,r2
   0460 FA                 1086 	mov	r2,a
   0461 E4                 1087 	clr	a
   0462 3B                 1088 	addc	a,r3
   0463 FB                 1089 	mov	r3,a
   0464 8A 82              1090 	mov	dpl,r2
   0466 8B 83              1091 	mov	dph,r3
   0468 8C F0              1092 	mov	b,r4
   046A 12 34 B8           1093 	lcall	__gptrget
   046D FA                 1094 	mov	r2,a
   046E 90 00 8F           1095 	mov	dptr,#_player
   0471 E0                 1096 	movx	a,@dptr
   0472 FB                 1097 	mov	r3,a
   0473 A3                 1098 	inc	dptr
   0474 E0                 1099 	movx	a,@dptr
   0475 FC                 1100 	mov	r4,a
   0476 A3                 1101 	inc	dptr
   0477 E0                 1102 	movx	a,@dptr
   0478 FD                 1103 	mov	r5,a
   0479 74 03              1104 	mov	a,#0x03
   047B 2B                 1105 	add	a,r3
   047C FB                 1106 	mov	r3,a
   047D E4                 1107 	clr	a
   047E 3C                 1108 	addc	a,r4
   047F FC                 1109 	mov	r4,a
   0480 8B 82              1110 	mov	dpl,r3
   0482 8C 83              1111 	mov	dph,r4
   0484 8D F0              1112 	mov	b,r5
   0486 12 34 B8           1113 	lcall	__gptrget
   0489 90 02 6D           1114 	mov	dptr,#_configMap_PARM_2
   048C F0                 1115 	movx	@dptr,a
   048D 90 02 6E           1116 	mov	dptr,#_configMap_PARM_3
   0490 74 03              1117 	mov	a,#0x03
   0492 F0                 1118 	movx	@dptr,a
   0493 8A 82              1119 	mov	dpl,r2
   0495 12 1C D8           1120 	lcall	_configMap
   0498 E5 82              1121 	mov	a,dpl
   049A 90 00 95           1122 	mov	dptr,#_setLevel3_control_1_1
   049D F0                 1123 	movx	@dptr,a
   049E 80 AB              1124 	sjmp	00101$
   04A0                    1125 00103$:
                           1126 ;	main.c:124: clearLCD();
   04A0 02 1E 58           1127 	ljmp	_clearLCD
                           1128 ;------------------------------------------------------------
                           1129 ;Allocation info for local variables in function 'setLevel4'
                           1130 ;------------------------------------------------------------
                           1131 ;control                   Allocated with name '_setLevel4_control_1_1'
                           1132 ;------------------------------------------------------------
                           1133 ;	main.c:127: void setLevel4(){
                           1134 ;	-----------------------------------------
                           1135 ;	 function setLevel4
                           1136 ;	-----------------------------------------
   04A3                    1137 _setLevel4:
                           1138 ;	main.c:128: unsigned char control = 1;
   04A3 90 00 96           1139 	mov	dptr,#_setLevel4_control_1_1
   04A6 74 01              1140 	mov	a,#0x01
   04A8 F0                 1141 	movx	@dptr,a
                           1142 ;	main.c:130: LCD_putTextAt("NIVEL",2,CENTER);
   04A9 90 02 75           1143 	mov	dptr,#_LCD_putTextAt_PARM_2
   04AC 74 02              1144 	mov	a,#0x02
   04AE F0                 1145 	movx	@dptr,a
   04AF 90 02 76           1146 	mov	dptr,#_LCD_putTextAt_PARM_3
   04B2 74 02              1147 	mov	a,#0x02
   04B4 F0                 1148 	movx	@dptr,a
   04B5 90 35 5F           1149 	mov	dptr,#__str_9
   04B8 75 F0 80           1150 	mov	b,#0x80
   04BB 12 1E 9C           1151 	lcall	_LCD_putTextAt
                           1152 ;	main.c:131: LCD_putTextAt("4",3,CENTER);
   04BE 90 02 75           1153 	mov	dptr,#_LCD_putTextAt_PARM_2
   04C1 74 03              1154 	mov	a,#0x03
   04C3 F0                 1155 	movx	@dptr,a
   04C4 90 02 76           1156 	mov	dptr,#_LCD_putTextAt_PARM_3
   04C7 74 02              1157 	mov	a,#0x02
   04C9 F0                 1158 	movx	@dptr,a
   04CA 90 35 6B           1159 	mov	dptr,#__str_13
   04CD 75 F0 80           1160 	mov	b,#0x80
   04D0 12 1E 9C           1161 	lcall	_LCD_putTextAt
                           1162 ;	main.c:132: delay(3000,1);
   04D3 90 02 D3           1163 	mov	dptr,#_delay_PARM_2
   04D6 74 01              1164 	mov	a,#0x01
   04D8 F0                 1165 	movx	@dptr,a
   04D9 90 0B B8           1166 	mov	dptr,#0x0BB8
   04DC 12 22 B8           1167 	lcall	_delay
                           1168 ;	main.c:133: clearLCD();
   04DF 12 1E 58           1169 	lcall	_clearLCD
                           1170 ;	main.c:135: setMap4CGram();
   04E2 12 14 A6           1171 	lcall	_setMap4CGram
                           1172 ;	main.c:137: player->sline = 3;
   04E5 90 00 8F           1173 	mov	dptr,#_player
   04E8 E0                 1174 	movx	a,@dptr
   04E9 FA                 1175 	mov	r2,a
   04EA A3                 1176 	inc	dptr
   04EB E0                 1177 	movx	a,@dptr
   04EC FB                 1178 	mov	r3,a
   04ED A3                 1179 	inc	dptr
   04EE E0                 1180 	movx	a,@dptr
   04EF FC                 1181 	mov	r4,a
   04F0 8A 82              1182 	mov	dpl,r2
   04F2 8B 83              1183 	mov	dph,r3
   04F4 8C F0              1184 	mov	b,r4
   04F6 74 03              1185 	mov	a,#0x03
   04F8 12 33 5A           1186 	lcall	__gptrput
                           1187 ;	main.c:138: player->scol = 4;
   04FB 90 00 8F           1188 	mov	dptr,#_player
   04FE E0                 1189 	movx	a,@dptr
   04FF FA                 1190 	mov	r2,a
   0500 A3                 1191 	inc	dptr
   0501 E0                 1192 	movx	a,@dptr
   0502 FB                 1193 	mov	r3,a
   0503 A3                 1194 	inc	dptr
   0504 E0                 1195 	movx	a,@dptr
   0505 FC                 1196 	mov	r4,a
   0506 0A                 1197 	inc	r2
   0507 BA 00 01           1198 	cjne	r2,#0x00,00108$
   050A 0B                 1199 	inc	r3
   050B                    1200 00108$:
   050B 8A 82              1201 	mov	dpl,r2
   050D 8B 83              1202 	mov	dph,r3
   050F 8C F0              1203 	mov	b,r4
   0511 74 04              1204 	mov	a,#0x04
   0513 12 33 5A           1205 	lcall	__gptrput
                           1206 ;	main.c:139: player->line = 4;
   0516 90 00 8F           1207 	mov	dptr,#_player
   0519 E0                 1208 	movx	a,@dptr
   051A FA                 1209 	mov	r2,a
   051B A3                 1210 	inc	dptr
   051C E0                 1211 	movx	a,@dptr
   051D FB                 1212 	mov	r3,a
   051E A3                 1213 	inc	dptr
   051F E0                 1214 	movx	a,@dptr
   0520 FC                 1215 	mov	r4,a
   0521 74 02              1216 	mov	a,#0x02
   0523 2A                 1217 	add	a,r2
   0524 FA                 1218 	mov	r2,a
   0525 E4                 1219 	clr	a
   0526 3B                 1220 	addc	a,r3
   0527 FB                 1221 	mov	r3,a
   0528 8A 82              1222 	mov	dpl,r2
   052A 8B 83              1223 	mov	dph,r3
   052C 8C F0              1224 	mov	b,r4
   052E 74 04              1225 	mov	a,#0x04
   0530 12 33 5A           1226 	lcall	__gptrput
                           1227 ;	main.c:140: player->col = 16;
   0533 90 00 8F           1228 	mov	dptr,#_player
   0536 E0                 1229 	movx	a,@dptr
   0537 FA                 1230 	mov	r2,a
   0538 A3                 1231 	inc	dptr
   0539 E0                 1232 	movx	a,@dptr
   053A FB                 1233 	mov	r3,a
   053B A3                 1234 	inc	dptr
   053C E0                 1235 	movx	a,@dptr
   053D FC                 1236 	mov	r4,a
   053E 74 03              1237 	mov	a,#0x03
   0540 2A                 1238 	add	a,r2
   0541 FA                 1239 	mov	r2,a
   0542 E4                 1240 	clr	a
   0543 3B                 1241 	addc	a,r3
   0544 FB                 1242 	mov	r3,a
   0545 8A 82              1243 	mov	dpl,r2
   0547 8B 83              1244 	mov	dph,r3
   0549 8C F0              1245 	mov	b,r4
   054B 74 10              1246 	mov	a,#0x10
   054D 12 33 5A           1247 	lcall	__gptrput
                           1248 ;	main.c:142: while(control)
   0550                    1249 00101$:
   0550 90 00 96           1250 	mov	dptr,#_setLevel4_control_1_1
   0553 E0                 1251 	movx	a,@dptr
   0554 FA                 1252 	mov	r2,a
   0555 60 4E              1253 	jz	00103$
                           1254 ;	main.c:143: control = configMap(player->line, player->col,2);
   0557 90 00 8F           1255 	mov	dptr,#_player
   055A E0                 1256 	movx	a,@dptr
   055B FA                 1257 	mov	r2,a
   055C A3                 1258 	inc	dptr
   055D E0                 1259 	movx	a,@dptr
   055E FB                 1260 	mov	r3,a
   055F A3                 1261 	inc	dptr
   0560 E0                 1262 	movx	a,@dptr
   0561 FC                 1263 	mov	r4,a
   0562 74 02              1264 	mov	a,#0x02
   0564 2A                 1265 	add	a,r2
   0565 FA                 1266 	mov	r2,a
   0566 E4                 1267 	clr	a
   0567 3B                 1268 	addc	a,r3
   0568 FB                 1269 	mov	r3,a
   0569 8A 82              1270 	mov	dpl,r2
   056B 8B 83              1271 	mov	dph,r3
   056D 8C F0              1272 	mov	b,r4
   056F 12 34 B8           1273 	lcall	__gptrget
   0572 FA                 1274 	mov	r2,a
   0573 90 00 8F           1275 	mov	dptr,#_player
   0576 E0                 1276 	movx	a,@dptr
   0577 FB                 1277 	mov	r3,a
   0578 A3                 1278 	inc	dptr
   0579 E0                 1279 	movx	a,@dptr
   057A FC                 1280 	mov	r4,a
   057B A3                 1281 	inc	dptr
   057C E0                 1282 	movx	a,@dptr
   057D FD                 1283 	mov	r5,a
   057E 74 03              1284 	mov	a,#0x03
   0580 2B                 1285 	add	a,r3
   0581 FB                 1286 	mov	r3,a
   0582 E4                 1287 	clr	a
   0583 3C                 1288 	addc	a,r4
   0584 FC                 1289 	mov	r4,a
   0585 8B 82              1290 	mov	dpl,r3
   0587 8C 83              1291 	mov	dph,r4
   0589 8D F0              1292 	mov	b,r5
   058B 12 34 B8           1293 	lcall	__gptrget
   058E 90 02 6D           1294 	mov	dptr,#_configMap_PARM_2
   0591 F0                 1295 	movx	@dptr,a
   0592 90 02 6E           1296 	mov	dptr,#_configMap_PARM_3
   0595 74 02              1297 	mov	a,#0x02
   0597 F0                 1298 	movx	@dptr,a
   0598 8A 82              1299 	mov	dpl,r2
   059A 12 1C D8           1300 	lcall	_configMap
   059D E5 82              1301 	mov	a,dpl
   059F 90 00 96           1302 	mov	dptr,#_setLevel4_control_1_1
   05A2 F0                 1303 	movx	@dptr,a
   05A3 80 AB              1304 	sjmp	00101$
   05A5                    1305 00103$:
                           1306 ;	main.c:145: clearLCD();
   05A5 02 1E 58           1307 	ljmp	_clearLCD
                           1308 ;------------------------------------------------------------
                           1309 ;Allocation info for local variables in function 'setLevel5'
                           1310 ;------------------------------------------------------------
                           1311 ;control                   Allocated with name '_setLevel5_control_1_1'
                           1312 ;------------------------------------------------------------
                           1313 ;	main.c:148: void setLevel5(){
                           1314 ;	-----------------------------------------
                           1315 ;	 function setLevel5
                           1316 ;	-----------------------------------------
   05A8                    1317 _setLevel5:
                           1318 ;	main.c:149: unsigned char control = 1;
   05A8 90 00 97           1319 	mov	dptr,#_setLevel5_control_1_1
   05AB 74 01              1320 	mov	a,#0x01
   05AD F0                 1321 	movx	@dptr,a
                           1322 ;	main.c:151: LCD_putTextAt("NIVEL",2,CENTER);
   05AE 90 02 75           1323 	mov	dptr,#_LCD_putTextAt_PARM_2
   05B1 74 02              1324 	mov	a,#0x02
   05B3 F0                 1325 	movx	@dptr,a
   05B4 90 02 76           1326 	mov	dptr,#_LCD_putTextAt_PARM_3
   05B7 74 02              1327 	mov	a,#0x02
   05B9 F0                 1328 	movx	@dptr,a
   05BA 90 35 5F           1329 	mov	dptr,#__str_9
   05BD 75 F0 80           1330 	mov	b,#0x80
   05C0 12 1E 9C           1331 	lcall	_LCD_putTextAt
                           1332 ;	main.c:152: LCD_putTextAt("5",3,CENTER);
   05C3 90 02 75           1333 	mov	dptr,#_LCD_putTextAt_PARM_2
   05C6 74 03              1334 	mov	a,#0x03
   05C8 F0                 1335 	movx	@dptr,a
   05C9 90 02 76           1336 	mov	dptr,#_LCD_putTextAt_PARM_3
   05CC 74 02              1337 	mov	a,#0x02
   05CE F0                 1338 	movx	@dptr,a
   05CF 90 35 6D           1339 	mov	dptr,#__str_14
   05D2 75 F0 80           1340 	mov	b,#0x80
   05D5 12 1E 9C           1341 	lcall	_LCD_putTextAt
                           1342 ;	main.c:153: delay(3000,1);
   05D8 90 02 D3           1343 	mov	dptr,#_delay_PARM_2
   05DB 74 01              1344 	mov	a,#0x01
   05DD F0                 1345 	movx	@dptr,a
   05DE 90 0B B8           1346 	mov	dptr,#0x0BB8
   05E1 12 22 B8           1347 	lcall	_delay
                           1348 ;	main.c:154: clearLCD();
   05E4 12 1E 58           1349 	lcall	_clearLCD
                           1350 ;	main.c:156: setMap5CGram();
   05E7 12 18 BF           1351 	lcall	_setMap5CGram
                           1352 ;	main.c:158: player->sline = 7;
   05EA 90 00 8F           1353 	mov	dptr,#_player
   05ED E0                 1354 	movx	a,@dptr
   05EE FA                 1355 	mov	r2,a
   05EF A3                 1356 	inc	dptr
   05F0 E0                 1357 	movx	a,@dptr
   05F1 FB                 1358 	mov	r3,a
   05F2 A3                 1359 	inc	dptr
   05F3 E0                 1360 	movx	a,@dptr
   05F4 FC                 1361 	mov	r4,a
   05F5 8A 82              1362 	mov	dpl,r2
   05F7 8B 83              1363 	mov	dph,r3
   05F9 8C F0              1364 	mov	b,r4
   05FB 74 07              1365 	mov	a,#0x07
   05FD 12 33 5A           1366 	lcall	__gptrput
                           1367 ;	main.c:159: player->scol = 5;
   0600 90 00 8F           1368 	mov	dptr,#_player
   0603 E0                 1369 	movx	a,@dptr
   0604 FA                 1370 	mov	r2,a
   0605 A3                 1371 	inc	dptr
   0606 E0                 1372 	movx	a,@dptr
   0607 FB                 1373 	mov	r3,a
   0608 A3                 1374 	inc	dptr
   0609 E0                 1375 	movx	a,@dptr
   060A FC                 1376 	mov	r4,a
   060B 0A                 1377 	inc	r2
   060C BA 00 01           1378 	cjne	r2,#0x00,00108$
   060F 0B                 1379 	inc	r3
   0610                    1380 00108$:
   0610 8A 82              1381 	mov	dpl,r2
   0612 8B 83              1382 	mov	dph,r3
   0614 8C F0              1383 	mov	b,r4
   0616 74 05              1384 	mov	a,#0x05
   0618 12 33 5A           1385 	lcall	__gptrput
                           1386 ;	main.c:160: player->line = 4;
   061B 90 00 8F           1387 	mov	dptr,#_player
   061E E0                 1388 	movx	a,@dptr
   061F FA                 1389 	mov	r2,a
   0620 A3                 1390 	inc	dptr
   0621 E0                 1391 	movx	a,@dptr
   0622 FB                 1392 	mov	r3,a
   0623 A3                 1393 	inc	dptr
   0624 E0                 1394 	movx	a,@dptr
   0625 FC                 1395 	mov	r4,a
   0626 74 02              1396 	mov	a,#0x02
   0628 2A                 1397 	add	a,r2
   0629 FA                 1398 	mov	r2,a
   062A E4                 1399 	clr	a
   062B 3B                 1400 	addc	a,r3
   062C FB                 1401 	mov	r3,a
   062D 8A 82              1402 	mov	dpl,r2
   062F 8B 83              1403 	mov	dph,r3
   0631 8C F0              1404 	mov	b,r4
   0633 74 04              1405 	mov	a,#0x04
   0635 12 33 5A           1406 	lcall	__gptrput
                           1407 ;	main.c:161: player->col = 1;
   0638 90 00 8F           1408 	mov	dptr,#_player
   063B E0                 1409 	movx	a,@dptr
   063C FA                 1410 	mov	r2,a
   063D A3                 1411 	inc	dptr
   063E E0                 1412 	movx	a,@dptr
   063F FB                 1413 	mov	r3,a
   0640 A3                 1414 	inc	dptr
   0641 E0                 1415 	movx	a,@dptr
   0642 FC                 1416 	mov	r4,a
   0643 74 03              1417 	mov	a,#0x03
   0645 2A                 1418 	add	a,r2
   0646 FA                 1419 	mov	r2,a
   0647 E4                 1420 	clr	a
   0648 3B                 1421 	addc	a,r3
   0649 FB                 1422 	mov	r3,a
   064A 8A 82              1423 	mov	dpl,r2
   064C 8B 83              1424 	mov	dph,r3
   064E 8C F0              1425 	mov	b,r4
   0650 74 01              1426 	mov	a,#0x01
   0652 12 33 5A           1427 	lcall	__gptrput
                           1428 ;	main.c:163: while(control)
   0655                    1429 00101$:
   0655 90 00 97           1430 	mov	dptr,#_setLevel5_control_1_1
   0658 E0                 1431 	movx	a,@dptr
   0659 FA                 1432 	mov	r2,a
   065A 60 4E              1433 	jz	00103$
                           1434 ;	main.c:164: control = configMap(player->line, player->col,2);
   065C 90 00 8F           1435 	mov	dptr,#_player
   065F E0                 1436 	movx	a,@dptr
   0660 FA                 1437 	mov	r2,a
   0661 A3                 1438 	inc	dptr
   0662 E0                 1439 	movx	a,@dptr
   0663 FB                 1440 	mov	r3,a
   0664 A3                 1441 	inc	dptr
   0665 E0                 1442 	movx	a,@dptr
   0666 FC                 1443 	mov	r4,a
   0667 74 02              1444 	mov	a,#0x02
   0669 2A                 1445 	add	a,r2
   066A FA                 1446 	mov	r2,a
   066B E4                 1447 	clr	a
   066C 3B                 1448 	addc	a,r3
   066D FB                 1449 	mov	r3,a
   066E 8A 82              1450 	mov	dpl,r2
   0670 8B 83              1451 	mov	dph,r3
   0672 8C F0              1452 	mov	b,r4
   0674 12 34 B8           1453 	lcall	__gptrget
   0677 FA                 1454 	mov	r2,a
   0678 90 00 8F           1455 	mov	dptr,#_player
   067B E0                 1456 	movx	a,@dptr
   067C FB                 1457 	mov	r3,a
   067D A3                 1458 	inc	dptr
   067E E0                 1459 	movx	a,@dptr
   067F FC                 1460 	mov	r4,a
   0680 A3                 1461 	inc	dptr
   0681 E0                 1462 	movx	a,@dptr
   0682 FD                 1463 	mov	r5,a
   0683 74 03              1464 	mov	a,#0x03
   0685 2B                 1465 	add	a,r3
   0686 FB                 1466 	mov	r3,a
   0687 E4                 1467 	clr	a
   0688 3C                 1468 	addc	a,r4
   0689 FC                 1469 	mov	r4,a
   068A 8B 82              1470 	mov	dpl,r3
   068C 8C 83              1471 	mov	dph,r4
   068E 8D F0              1472 	mov	b,r5
   0690 12 34 B8           1473 	lcall	__gptrget
   0693 90 02 6D           1474 	mov	dptr,#_configMap_PARM_2
   0696 F0                 1475 	movx	@dptr,a
   0697 90 02 6E           1476 	mov	dptr,#_configMap_PARM_3
   069A 74 02              1477 	mov	a,#0x02
   069C F0                 1478 	movx	@dptr,a
   069D 8A 82              1479 	mov	dpl,r2
   069F 12 1C D8           1480 	lcall	_configMap
   06A2 E5 82              1481 	mov	a,dpl
   06A4 90 00 97           1482 	mov	dptr,#_setLevel5_control_1_1
   06A7 F0                 1483 	movx	@dptr,a
   06A8 80 AB              1484 	sjmp	00101$
   06AA                    1485 00103$:
                           1486 ;	main.c:166: clearLCD();
   06AA 02 1E 58           1487 	ljmp	_clearLCD
                           1488 ;------------------------------------------------------------
                           1489 ;Allocation info for local variables in function 'setFinish'
                           1490 ;------------------------------------------------------------
                           1491 ;------------------------------------------------------------
                           1492 ;	main.c:168: void setFinish(){
                           1493 ;	-----------------------------------------
                           1494 ;	 function setFinish
                           1495 ;	-----------------------------------------
   06AD                    1496 _setFinish:
                           1497 ;	main.c:169: LCD_putTextAt("VOCE",2,CENTER);
   06AD 90 02 75           1498 	mov	dptr,#_LCD_putTextAt_PARM_2
   06B0 74 02              1499 	mov	a,#0x02
   06B2 F0                 1500 	movx	@dptr,a
   06B3 90 02 76           1501 	mov	dptr,#_LCD_putTextAt_PARM_3
   06B6 74 02              1502 	mov	a,#0x02
   06B8 F0                 1503 	movx	@dptr,a
   06B9 90 35 6F           1504 	mov	dptr,#__str_15
   06BC 75 F0 80           1505 	mov	b,#0x80
   06BF 12 1E 9C           1506 	lcall	_LCD_putTextAt
                           1507 ;	main.c:170: LCD_putTextAt("VENCEU",3,CENTER);
   06C2 90 02 75           1508 	mov	dptr,#_LCD_putTextAt_PARM_2
   06C5 74 03              1509 	mov	a,#0x03
   06C7 F0                 1510 	movx	@dptr,a
   06C8 90 02 76           1511 	mov	dptr,#_LCD_putTextAt_PARM_3
   06CB 74 02              1512 	mov	a,#0x02
   06CD F0                 1513 	movx	@dptr,a
   06CE 90 35 74           1514 	mov	dptr,#__str_16
   06D1 75 F0 80           1515 	mov	b,#0x80
   06D4 12 1E 9C           1516 	lcall	_LCD_putTextAt
                           1517 ;	main.c:171: delay(3000,1);
   06D7 90 02 D3           1518 	mov	dptr,#_delay_PARM_2
   06DA 74 01              1519 	mov	a,#0x01
   06DC F0                 1520 	movx	@dptr,a
   06DD 90 0B B8           1521 	mov	dptr,#0x0BB8
   06E0 02 22 B8           1522 	ljmp	_delay
                           1523 ;------------------------------------------------------------
                           1524 ;Allocation info for local variables in function 'main'
                           1525 ;------------------------------------------------------------
                           1526 ;------------------------------------------------------------
                           1527 ;	main.c:174: void main(void){
                           1528 ;	-----------------------------------------
                           1529 ;	 function main
                           1530 ;	-----------------------------------------
   06E3                    1531 _main:
                           1532 ;	main.c:176: configs();
   06E3 12 00 76           1533 	lcall	_configs
                           1534 ;	main.c:178: while(1){
   06E6                    1535 00102$:
                           1536 ;	main.c:179: setInitialScreen();
   06E6 12 00 9B           1537 	lcall	_setInitialScreen
                           1538 ;	main.c:181: setInstructions();
   06E9 12 00 E3           1539 	lcall	_setInstructions
                           1540 ;	main.c:183: setLevel1();
   06EC 12 01 94           1541 	lcall	_setLevel1
                           1542 ;	main.c:185: setLevel2();
   06EF 12 02 99           1543 	lcall	_setLevel2
                           1544 ;	main.c:187: setLevel3();
   06F2 12 03 9E           1545 	lcall	_setLevel3
                           1546 ;	main.c:189: setLevel4();
   06F5 12 04 A3           1547 	lcall	_setLevel4
                           1548 ;	main.c:191: setLevel5();
   06F8 12 05 A8           1549 	lcall	_setLevel5
                           1550 ;	main.c:193: setFinish();
   06FB 12 06 AD           1551 	lcall	_setFinish
   06FE 80 E6              1552 	sjmp	00102$
                           1553 	.area CSEG    (CODE)
                           1554 	.area CONST   (CODE)
   34D8                    1555 __str_0:
   34D8 4D 41 5A 45 20 47  1556 	.ascii "MAZE GAME"
        41 4D 45
   34E1 00                 1557 	.db 0x00
   34E2                    1558 __str_1:
   34E2 20 61 70 65 72 74  1559 	.ascii " aperte ESPACO para iniciar"
        65 20 45 53 50 41
        43 4F 20 70 61 72
        61 20 69 6E 69 63
        69 61 72
   34FD 00                 1560 	.db 0x00
   34FE                    1561 __str_2:
   34FE 49 4E 53 54 52 55  1562 	.ascii "INSTRUCOES"
        43 4F 45 53
   3508 00                 1563 	.db 0x00
   3509                    1564 __str_3:
   3509 31 29 20 4D 6F 76  1565 	.ascii "1) Movimente com"
        69 6D 65 6E 74 65
        20 63 6F 6D
   3519 00                 1566 	.db 0x00
   351A                    1567 __str_4:
   351A 57 2C 53 2C 41 2C  1568 	.ascii "W,S,A,D "
        44 20
   3522 00                 1569 	.db 0x00
   3523                    1570 __str_5:
   3523 43 4F 4D 4F 20 47  1571 	.ascii "COMO GANHAR"
        41 4E 48 41 52
   352E 00                 1572 	.db 0x00
   352F                    1573 __str_6:
   352F 41 63 68 65 20 75  1574 	.ascii "Ache uma saida "
        6D 61 20 73 61 69
        64 61 20
   353E 00                 1575 	.db 0x00
   353F                    1576 __str_7:
   353F 70 61 72 61 20 43  1577 	.ascii "para CIMA,DIREI-"
        49 4D 41 2C 44 49
        52 45 49 2D
   354F 00                 1578 	.db 0x00
   3550                    1579 __str_8:
   3550 54 41 20 6F 75 20  1580 	.ascii "TA ou ESQUERDA"
        45 53 51 55 45 52
        44 41
   355E 00                 1581 	.db 0x00
   355F                    1582 __str_9:
   355F 4E 49 56 45 4C     1583 	.ascii "NIVEL"
   3564 00                 1584 	.db 0x00
   3565                    1585 __str_10:
   3565 31                 1586 	.ascii "1"
   3566 00                 1587 	.db 0x00
   3567                    1588 __str_11:
   3567 32                 1589 	.ascii "2"
   3568 00                 1590 	.db 0x00
   3569                    1591 __str_12:
   3569 33                 1592 	.ascii "3"
   356A 00                 1593 	.db 0x00
   356B                    1594 __str_13:
   356B 34                 1595 	.ascii "4"
   356C 00                 1596 	.db 0x00
   356D                    1597 __str_14:
   356D 35                 1598 	.ascii "5"
   356E 00                 1599 	.db 0x00
   356F                    1600 __str_15:
   356F 56 4F 43 45        1601 	.ascii "VOCE"
   3573 00                 1602 	.db 0x00
   3574                    1603 __str_16:
   3574 56 45 4E 43 45 55  1604 	.ascii "VENCEU"
   357A 00                 1605 	.db 0x00
                           1606 	.area XINIT   (CODE)
   357B                    1607 __xinit__rxMsg:
   357B 00                 1608 	.db #0x00
   357C                    1609 __xinit__mainMario_melody:
   357C 63 00              1610 	.byte #0x63,#0x00
   357E 63 00              1611 	.byte #0x63,#0x00
   3580 00 00              1612 	.byte #0x00,#0x00
   3582 63 00              1613 	.byte #0x63,#0x00
   3584 00 00              1614 	.byte #0x00,#0x00
   3586 7D 00              1615 	.byte #0x7D,#0x00
   3588 63 00              1616 	.byte #0x63,#0x00
   358A 00 00              1617 	.byte #0x00,#0x00
   358C 54 00              1618 	.byte #0x54,#0x00
   358E 00 00              1619 	.byte #0x00,#0x00
   3590 00 00              1620 	.byte #0x00,#0x00
   3592 00 00              1621 	.byte #0x00,#0x00
   3594 A7 00              1622 	.byte #0xA7,#0x00
   3596 00 00              1623 	.byte #0x00,#0x00
   3598 00 00              1624 	.byte #0x00,#0x00
   359A 00 00              1625 	.byte #0x00,#0x00
   359C 7D 00              1626 	.byte #0x7D,#0x00
   359E 00 00              1627 	.byte #0x00,#0x00
   35A0 00 00              1628 	.byte #0x00,#0x00
   35A2 A7 00              1629 	.byte #0xA7,#0x00
   35A4 00 00              1630 	.byte #0x00,#0x00
   35A6 00 00              1631 	.byte #0x00,#0x00
   35A8 C7 00              1632 	.byte #0xC7,#0x00
   35AA 00 00              1633 	.byte #0x00,#0x00
   35AC 00 00              1634 	.byte #0x00,#0x00
   35AE 95 00              1635 	.byte #0x95,#0x00
   35B0 00 00              1636 	.byte #0x00,#0x00
   35B2 85 00              1637 	.byte #0x85,#0x00
   35B4 00 00              1638 	.byte #0x00,#0x00
   35B6 8D 00              1639 	.byte #0x8D,#0x00
   35B8 95 00              1640 	.byte #0x95,#0x00
   35BA 00 00              1641 	.byte #0x00,#0x00
   35BC A7 00              1642 	.byte #0xA7,#0x00
   35BE 63 00              1643 	.byte #0x63,#0x00
   35C0 54 00              1644 	.byte #0x54,#0x00
   35C2 4B 00              1645 	.byte #0x4B,#0x00
   35C4 00 00              1646 	.byte #0x00,#0x00
   35C6 5E 00              1647 	.byte #0x5E,#0x00
   35C8 54 00              1648 	.byte #0x54,#0x00
   35CA 00 00              1649 	.byte #0x00,#0x00
   35CC 63 00              1650 	.byte #0x63,#0x00
   35CE 00 00              1651 	.byte #0x00,#0x00
   35D0 7D 00              1652 	.byte #0x7D,#0x00
   35D2 70 00              1653 	.byte #0x70,#0x00
   35D4 85 00              1654 	.byte #0x85,#0x00
   35D6 00 00              1655 	.byte #0x00,#0x00
   35D8 00 00              1656 	.byte #0x00,#0x00
   35DA 7D 00              1657 	.byte #0x7D,#0x00
   35DC 00 00              1658 	.byte #0x00,#0x00
   35DE 00 00              1659 	.byte #0x00,#0x00
   35E0 A7 00              1660 	.byte #0xA7,#0x00
   35E2 00 00              1661 	.byte #0x00,#0x00
   35E4 00 00              1662 	.byte #0x00,#0x00
   35E6 C7 00              1663 	.byte #0xC7,#0x00
   35E8 00 00              1664 	.byte #0x00,#0x00
   35EA 00 00              1665 	.byte #0x00,#0x00
   35EC 95 00              1666 	.byte #0x95,#0x00
   35EE 00 00              1667 	.byte #0x00,#0x00
   35F0 85 00              1668 	.byte #0x85,#0x00
   35F2 00 00              1669 	.byte #0x00,#0x00
   35F4 8D 00              1670 	.byte #0x8D,#0x00
   35F6 95 00              1671 	.byte #0x95,#0x00
   35F8 00 00              1672 	.byte #0x00,#0x00
   35FA A7 00              1673 	.byte #0xA7,#0x00
   35FC 63 00              1674 	.byte #0x63,#0x00
   35FE 54 00              1675 	.byte #0x54,#0x00
   3600 4B 00              1676 	.byte #0x4B,#0x00
   3602 00 00              1677 	.byte #0x00,#0x00
   3604 5E 00              1678 	.byte #0x5E,#0x00
   3606 54 00              1679 	.byte #0x54,#0x00
   3608 00 00              1680 	.byte #0x00,#0x00
   360A 63 00              1681 	.byte #0x63,#0x00
   360C 00 00              1682 	.byte #0x00,#0x00
   360E 7D 00              1683 	.byte #0x7D,#0x00
   3610 70 00              1684 	.byte #0x70,#0x00
   3612 85 00              1685 	.byte #0x85,#0x00
   3614 00 00              1686 	.byte #0x00,#0x00
   3616 00 00              1687 	.byte #0x00,#0x00
   3618                    1688 __xinit__mainMario_noteTime:
   3618 0F                 1689 	.db #0x0F
   3619 0F                 1690 	.db #0x0F
   361A 0F                 1691 	.db #0x0F
   361B 0F                 1692 	.db #0x0F
   361C 0F                 1693 	.db #0x0F
   361D 0F                 1694 	.db #0x0F
   361E 0F                 1695 	.db #0x0F
   361F 0F                 1696 	.db #0x0F
   3620 0F                 1697 	.db #0x0F
   3621 0F                 1698 	.db #0x0F
   3622 0F                 1699 	.db #0x0F
   3623 0F                 1700 	.db #0x0F
   3624 0F                 1701 	.db #0x0F
   3625 0F                 1702 	.db #0x0F
   3626 0F                 1703 	.db #0x0F
   3627 0F                 1704 	.db #0x0F
   3628 0F                 1705 	.db #0x0F
   3629 0F                 1706 	.db #0x0F
   362A 0F                 1707 	.db #0x0F
   362B 0F                 1708 	.db #0x0F
   362C 0F                 1709 	.db #0x0F
   362D 0F                 1710 	.db #0x0F
   362E 0F                 1711 	.db #0x0F
   362F 0F                 1712 	.db #0x0F
   3630 0F                 1713 	.db #0x0F
   3631 0F                 1714 	.db #0x0F
   3632 0F                 1715 	.db #0x0F
   3633 0F                 1716 	.db #0x0F
   3634 0F                 1717 	.db #0x0F
   3635 0F                 1718 	.db #0x0F
   3636 0F                 1719 	.db #0x0F
   3637 0F                 1720 	.db #0x0F
   3638 0C                 1721 	.db #0x0C
   3639 0C                 1722 	.db #0x0C
   363A 0C                 1723 	.db #0x0C
   363B 0F                 1724 	.db #0x0F
   363C 0F                 1725 	.db #0x0F
   363D 0F                 1726 	.db #0x0F
   363E 0F                 1727 	.db #0x0F
   363F 0F                 1728 	.db #0x0F
   3640 0F                 1729 	.db #0x0F
   3641 0F                 1730 	.db #0x0F
   3642 0F                 1731 	.db #0x0F
   3643 0F                 1732 	.db #0x0F
   3644 0F                 1733 	.db #0x0F
   3645 0F                 1734 	.db #0x0F
   3646 0F                 1735 	.db #0x0F
   3647 0F                 1736 	.db #0x0F
   3648 0F                 1737 	.db #0x0F
   3649 0F                 1738 	.db #0x0F
   364A 0F                 1739 	.db #0x0F
   364B 0F                 1740 	.db #0x0F
   364C 0F                 1741 	.db #0x0F
   364D 0F                 1742 	.db #0x0F
   364E 0F                 1743 	.db #0x0F
   364F 0F                 1744 	.db #0x0F
   3650 0F                 1745 	.db #0x0F
   3651 0F                 1746 	.db #0x0F
   3652 0F                 1747 	.db #0x0F
   3653 0F                 1748 	.db #0x0F
   3654 0F                 1749 	.db #0x0F
   3655 0F                 1750 	.db #0x0F
   3656 0F                 1751 	.db #0x0F
   3657 0C                 1752 	.db #0x0C
   3658 0C                 1753 	.db #0x0C
   3659 0C                 1754 	.db #0x0C
   365A 0F                 1755 	.db #0x0F
   365B 0F                 1756 	.db #0x0F
   365C 0F                 1757 	.db #0x0F
   365D 0F                 1758 	.db #0x0F
   365E 0F                 1759 	.db #0x0F
   365F 0F                 1760 	.db #0x0F
   3660 0F                 1761 	.db #0x0F
   3661 0F                 1762 	.db #0x0F
   3662 0F                 1763 	.db #0x0F
   3663 0F                 1764 	.db #0x0F
   3664 0F                 1765 	.db #0x0F
   3665 0F                 1766 	.db #0x0F
   3666                    1767 __xinit__underworld_melody:
   3666 FB 00              1768 	.byte #0xFB,#0x00
   3668 7D 00              1769 	.byte #0x7D,#0x00
   366A 2A 01              1770 	.byte #0x2A,#0x01
   366C 95 00              1771 	.byte #0x95,#0x00
   366E 1A 01              1772 	.byte #0x1A,#0x01
   3670 8D 00              1773 	.byte #0x8D,#0x00
   3672 00 00              1774 	.byte #0x00,#0x00
   3674 00 00              1775 	.byte #0x00,#0x00
   3676 FB 00              1776 	.byte #0xFB,#0x00
   3678 7D 00              1777 	.byte #0x7D,#0x00
   367A 2A 01              1778 	.byte #0x2A,#0x01
   367C 95 00              1779 	.byte #0x95,#0x00
   367E 1A 01              1780 	.byte #0x1A,#0x01
   3680 8D 00              1781 	.byte #0x8D,#0x00
   3682 00 00              1782 	.byte #0x00,#0x00
   3684 00 00              1783 	.byte #0x00,#0x00
   3686 78 01              1784 	.byte #0x78,#0x01
   3688 BC 00              1785 	.byte #0xBC,#0x00
   368A BF 01              1786 	.byte #0xBF,#0x01
   368C DF 00              1787 	.byte #0xDF,#0x00
   368E A6 01              1788 	.byte #0xA6,#0x01
   3690 D3 00              1789 	.byte #0xD3,#0x00
   3692 00 00              1790 	.byte #0x00,#0x00
   3694 00 00              1791 	.byte #0x00,#0x00
   3696 78 01              1792 	.byte #0x78,#0x01
   3698 BC 00              1793 	.byte #0xBC,#0x00
   369A BF 01              1794 	.byte #0xBF,#0x01
   369C DF 00              1795 	.byte #0xDF,#0x00
   369E A6 01              1796 	.byte #0xA6,#0x01
   36A0 D3 00              1797 	.byte #0xD3,#0x00
   36A2 00 00              1798 	.byte #0x00,#0x00
   36A4 00 00              1799 	.byte #0x00,#0x00
   36A6 D3 00              1800 	.byte #0xD3,#0x00
   36A8 ED 00              1801 	.byte #0xED,#0x00
   36AA DF 00              1802 	.byte #0xDF,#0x00
   36AC ED 00              1803 	.byte #0xED,#0x00
   36AE D3 00              1804 	.byte #0xD3,#0x00
   36B0 D3 00              1805 	.byte #0xD3,#0x00
   36B2 3C 01              1806 	.byte #0x3C,#0x01
   36B4 4F 01              1807 	.byte #0x4F,#0x01
   36B6 ED 00              1808 	.byte #0xED,#0x00
   36B8 FB 00              1809 	.byte #0xFB,#0x00
   36BA B1 00              1810 	.byte #0xB1,#0x00
   36BC BC 00              1811 	.byte #0xBC,#0x00
   36BE 8E 01              1812 	.byte #0x8E,#0x01
   36C0 8D 00              1813 	.byte #0x8D,#0x00
   36C2 95 00              1814 	.byte #0x95,#0x00
   36C4 9E 00              1815 	.byte #0x9E,#0x00
   36C6 D3 00              1816 	.byte #0xD3,#0x00
   36C8 0A 01              1817 	.byte #0x0A,#0x01
   36CA 1A 01              1818 	.byte #0x1A,#0x01
   36CC 2A 01              1819 	.byte #0x2A,#0x01
   36CE 3C 01              1820 	.byte #0x3C,#0x01
   36D0 00 00              1821 	.byte #0x00,#0x00
   36D2 00 00              1822 	.byte #0x00,#0x00
   36D4 00 00              1823 	.byte #0x00,#0x00
   36D6                    1824 __xinit__underworld_noteTime:
   36D6 0C                 1825 	.db #0x0C
   36D7 0C                 1826 	.db #0x0C
   36D8 0C                 1827 	.db #0x0C
   36D9 0C                 1828 	.db #0x0C
   36DA 0C                 1829 	.db #0x0C
   36DB 0C                 1830 	.db #0x0C
   36DC 06                 1831 	.db #0x06
   36DD 03                 1832 	.db #0x03
   36DE 0C                 1833 	.db #0x0C
   36DF 0C                 1834 	.db #0x0C
   36E0 0C                 1835 	.db #0x0C
   36E1 0C                 1836 	.db #0x0C
   36E2 0C                 1837 	.db #0x0C
   36E3 0C                 1838 	.db #0x0C
   36E4 06                 1839 	.db #0x06
   36E5 03                 1840 	.db #0x03
   36E6 0C                 1841 	.db #0x0C
   36E7 0C                 1842 	.db #0x0C
   36E8 0C                 1843 	.db #0x0C
   36E9 0C                 1844 	.db #0x0C
   36EA 0C                 1845 	.db #0x0C
   36EB 0C                 1846 	.db #0x0C
   36EC 06                 1847 	.db #0x06
   36ED 03                 1848 	.db #0x03
   36EE 0C                 1849 	.db #0x0C
   36EF 0C                 1850 	.db #0x0C
   36F0 0C                 1851 	.db #0x0C
   36F1 0C                 1852 	.db #0x0C
   36F2 0C                 1853 	.db #0x0C
   36F3 0C                 1854 	.db #0x0C
   36F4 06                 1855 	.db #0x06
   36F5 06                 1856 	.db #0x06
   36F6 12                 1857 	.db #0x12
   36F7 12                 1858 	.db #0x12
   36F8 12                 1859 	.db #0x12
   36F9 06                 1860 	.db #0x06
   36FA 06                 1861 	.db #0x06
   36FB 06                 1862 	.db #0x06
   36FC 06                 1863 	.db #0x06
   36FD 06                 1864 	.db #0x06
   36FE 06                 1865 	.db #0x06
   36FF 12                 1866 	.db #0x12
   3700 12                 1867 	.db #0x12
   3701 12                 1868 	.db #0x12
   3702 12                 1869 	.db #0x12
   3703 12                 1870 	.db #0x12
   3704 12                 1871 	.db #0x12
   3705 0A                 1872 	.db #0x0A
   3706 0A                 1873 	.db #0x0A
   3707 0A                 1874 	.db #0x0A
   3708 0A                 1875 	.db #0x0A
   3709 0A                 1876 	.db #0x0A
   370A 0A                 1877 	.db #0x0A
   370B 03                 1878 	.db #0x03
   370C 03                 1879 	.db #0x03
   370D 03                 1880 	.db #0x03
   370E                    1881 __xinit__adobe_melody:
   370E 85 00              1882 	.byte #0x85,#0x00
   3710 85 00              1883 	.byte #0x85,#0x00
   3712 00 00              1884 	.byte #0x00,#0x00
   3714 85 00              1885 	.byte #0x85,#0x00
   3716 70 00              1886 	.byte #0x70,#0x00
   3718 70 00              1887 	.byte #0x70,#0x00
   371A 00 00              1888 	.byte #0x00,#0x00
   371C 70 00              1889 	.byte #0x70,#0x00
   371E 95 00              1890 	.byte #0x95,#0x00
   3720 95 00              1891 	.byte #0x95,#0x00
   3722 00 00              1892 	.byte #0x00,#0x00
   3724 95 00              1893 	.byte #0x95,#0x00
   3726 85 00              1894 	.byte #0x85,#0x00
   3728 85 00              1895 	.byte #0x85,#0x00
   372A 00 00              1896 	.byte #0x00,#0x00
   372C 00 00              1897 	.byte #0x00,#0x00
   372E                    1898 __xinit__adobe_noteTime:
   372E 06                 1899 	.db #0x06
   372F 06                 1900 	.db #0x06
   3730 06                 1901 	.db #0x06
   3731 06                 1902 	.db #0x06
   3732 06                 1903 	.db #0x06
   3733 06                 1904 	.db #0x06
   3734 06                 1905 	.db #0x06
   3735 06                 1906 	.db #0x06
   3736 06                 1907 	.db #0x06
   3737 06                 1908 	.db #0x06
   3738 06                 1909 	.db #0x06
   3739 06                 1910 	.db #0x06
   373A 06                 1911 	.db #0x06
   373B 06                 1912 	.db #0x06
   373C 06                 1913 	.db #0x06
   373D 06                 1914 	.db #0x06
   373E                    1915 __xinit__beep1_melody:
   373E FB 00              1916 	.byte #0xFB,#0x00
   3740 00 00              1917 	.byte #0x00,#0x00
   3742                    1918 __xinit__beep1_noteTime:
   3742 06                 1919 	.db #0x06
   3743 0C                 1920 	.db #0x0C
   3744                    1921 __xinit__beep2_melody:
   3744 ED 00              1922 	.byte #0xED,#0x00
   3746 00 00              1923 	.byte #0x00,#0x00
   3748                    1924 __xinit__beep2_noteTime:
   3748 06                 1925 	.db #0x06
   3749 0C                 1926 	.db #0x0C
                           1927 	.area CABS    (ABS,CODE)
