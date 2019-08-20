                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Tue Aug 20 11:45:57 2019
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
   0399                     314 _rxMsg:
   0399                     315 	.ds 1
   039A                     316 _mainMario_melody::
   039A                     317 	.ds 156
   0436                     318 _mainMario_noteTime::
   0436                     319 	.ds 78
   0484                     320 _underworld_melody::
   0484                     321 	.ds 112
   04F4                     322 _underworld_noteTime::
   04F4                     323 	.ds 56
   052C                     324 _adobe_melody::
   052C                     325 	.ds 32
   054C                     326 _adobe_noteTime::
   054C                     327 	.ds 16
   055C                     328 _beep1_melody::
   055C                     329 	.ds 4
   0560                     330 _beep1_noteTime::
   0560                     331 	.ds 2
   0562                     332 _beep2_melody::
   0562                     333 	.ds 4
   0566                     334 _beep2_noteTime::
   0566                     335 	.ds 2
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
   000B 02 23 0D            354 	ljmp	_timer
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
   000E 12 06 C5            376 	lcall	_main
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
   0079 12 22 15            417 	lcall	_timerConfig
                            418 ;	main.c:27: LCDconfig();
   007C 12 06 E2            419 	lcall	_LCDconfig
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
   008A 90 03 79            430 	mov	dptr,#_serialConfig_PARM_2
   008D EA                  431 	mov	a,r2
   008E F0                  432 	movx	@dptr,a
   008F A3                  433 	inc	dptr
   0090 EB                  434 	mov	a,r3
   0091 F0                  435 	movx	@dptr,a
   0092 A3                  436 	inc	dptr
   0093 EC                  437 	mov	a,r4
   0094 F0                  438 	movx	@dptr,a
   0095 75 82 01            439 	mov	dpl,#0x01
   0098 02 27 0D            440 	ljmp	_serialConfig
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
   00A1 12 08 3E            456 	lcall	_setMap1CGram
                            457 ;	main.c:37: LCD_putTextAt("MAZE GAME",2,CENTER);
   00A4 90 02 74            458 	mov	dptr,#_LCD_putTextAt_PARM_2
   00A7 74 02               459 	mov	a,#0x02
   00A9 F0                  460 	movx	@dptr,a
   00AA 90 02 75            461 	mov	dptr,#_LCD_putTextAt_PARM_3
   00AD 74 02               462 	mov	a,#0x02
   00AF F0                  463 	movx	@dptr,a
   00B0 90 34 53            464 	mov	dptr,#__str_0
   00B3 75 F0 80            465 	mov	b,#0x80
   00B6 12 1E 7B            466 	lcall	_LCD_putTextAt
                            467 ;	main.c:39: while(control)
   00B9                     468 00101$:
   00B9 90 00 92            469 	mov	dptr,#_setInitialScreen_control_1_1
   00BC E0                  470 	movx	a,@dptr
   00BD FA                  471 	mov	r2,a
   00BE 60 20               472 	jz	00103$
                            473 ;	main.c:40: control = LCD_putText(" aperte ESPACO para iniciar",3, 250);
   00C0 90 02 8B            474 	mov	dptr,#_LCD_putText_PARM_2
   00C3 74 03               475 	mov	a,#0x03
   00C5 F0                  476 	movx	@dptr,a
   00C6 90 02 8C            477 	mov	dptr,#_LCD_putText_PARM_3
   00C9 74 FA               478 	mov	a,#0xFA
   00CB F0                  479 	movx	@dptr,a
   00CC E4                  480 	clr	a
   00CD A3                  481 	inc	dptr
   00CE F0                  482 	movx	@dptr,a
   00CF 90 34 5D            483 	mov	dptr,#__str_1
   00D2 75 F0 80            484 	mov	b,#0x80
   00D5 12 1F 8D            485 	lcall	_LCD_putText
   00D8 E5 82               486 	mov	a,dpl
   00DA 90 00 92            487 	mov	dptr,#_setInitialScreen_control_1_1
   00DD F0                  488 	movx	@dptr,a
   00DE 80 D9               489 	sjmp	00101$
   00E0                     490 00103$:
                            491 ;	main.c:42: clearLCD();
   00E0 02 1E 37            492 	ljmp	_clearLCD
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
   00E3 90 02 74            503 	mov	dptr,#_LCD_putTextAt_PARM_2
   00E6 74 01               504 	mov	a,#0x01
   00E8 F0                  505 	movx	@dptr,a
   00E9 90 02 75            506 	mov	dptr,#_LCD_putTextAt_PARM_3
   00EC 74 02               507 	mov	a,#0x02
   00EE F0                  508 	movx	@dptr,a
   00EF 90 34 79            509 	mov	dptr,#__str_2
   00F2 75 F0 80            510 	mov	b,#0x80
   00F5 12 1E 7B            511 	lcall	_LCD_putTextAt
                            512 ;	main.c:49: LCD_putTextAt("1) Movimente com",2,LEFT);
   00F8 90 02 74            513 	mov	dptr,#_LCD_putTextAt_PARM_2
   00FB 74 02               514 	mov	a,#0x02
   00FD F0                  515 	movx	@dptr,a
   00FE 90 02 75            516 	mov	dptr,#_LCD_putTextAt_PARM_3
   0101 74 01               517 	mov	a,#0x01
   0103 F0                  518 	movx	@dptr,a
   0104 90 34 84            519 	mov	dptr,#__str_3
   0107 75 F0 80            520 	mov	b,#0x80
   010A 12 1E 7B            521 	lcall	_LCD_putTextAt
                            522 ;	main.c:50: LCD_putTextAt("W,S,A,D ",3,CENTER);
   010D 90 02 74            523 	mov	dptr,#_LCD_putTextAt_PARM_2
   0110 74 03               524 	mov	a,#0x03
   0112 F0                  525 	movx	@dptr,a
   0113 90 02 75            526 	mov	dptr,#_LCD_putTextAt_PARM_3
   0116 74 02               527 	mov	a,#0x02
   0118 F0                  528 	movx	@dptr,a
   0119 90 34 95            529 	mov	dptr,#__str_4
   011C 75 F0 80            530 	mov	b,#0x80
   011F 12 1E 7B            531 	lcall	_LCD_putTextAt
                            532 ;	main.c:51: delay(3500,1);
   0122 90 02 D2            533 	mov	dptr,#_delay_PARM_2
   0125 74 01               534 	mov	a,#0x01
   0127 F0                  535 	movx	@dptr,a
   0128 90 0D AC            536 	mov	dptr,#0x0DAC
   012B 12 22 33            537 	lcall	_delay
                            538 ;	main.c:52: clearLCD();
   012E 12 1E 37            539 	lcall	_clearLCD
                            540 ;	main.c:54: LCD_putTextAt("COMO GANHAR",1,CENTER);
   0131 90 02 74            541 	mov	dptr,#_LCD_putTextAt_PARM_2
   0134 74 01               542 	mov	a,#0x01
   0136 F0                  543 	movx	@dptr,a
   0137 90 02 75            544 	mov	dptr,#_LCD_putTextAt_PARM_3
   013A 74 02               545 	mov	a,#0x02
   013C F0                  546 	movx	@dptr,a
   013D 90 34 9E            547 	mov	dptr,#__str_5
   0140 75 F0 80            548 	mov	b,#0x80
   0143 12 1E 7B            549 	lcall	_LCD_putTextAt
                            550 ;	main.c:55: LCD_putTextAt("Ache uma saida ",2,LEFT);
   0146 90 02 74            551 	mov	dptr,#_LCD_putTextAt_PARM_2
   0149 74 02               552 	mov	a,#0x02
   014B F0                  553 	movx	@dptr,a
   014C 90 02 75            554 	mov	dptr,#_LCD_putTextAt_PARM_3
   014F 74 01               555 	mov	a,#0x01
   0151 F0                  556 	movx	@dptr,a
   0152 90 34 AA            557 	mov	dptr,#__str_6
   0155 75 F0 80            558 	mov	b,#0x80
   0158 12 1E 7B            559 	lcall	_LCD_putTextAt
                            560 ;	main.c:56: LCD_putTextAt("para CIMA,DIREI-",3,LEFT);
   015B 90 02 74            561 	mov	dptr,#_LCD_putTextAt_PARM_2
   015E 74 03               562 	mov	a,#0x03
   0160 F0                  563 	movx	@dptr,a
   0161 90 02 75            564 	mov	dptr,#_LCD_putTextAt_PARM_3
   0164 74 01               565 	mov	a,#0x01
   0166 F0                  566 	movx	@dptr,a
   0167 90 34 BA            567 	mov	dptr,#__str_7
   016A 75 F0 80            568 	mov	b,#0x80
   016D 12 1E 7B            569 	lcall	_LCD_putTextAt
                            570 ;	main.c:57: LCD_putTextAt("TA ou ESQUERDA",4,LEFT);
   0170 90 02 74            571 	mov	dptr,#_LCD_putTextAt_PARM_2
   0173 74 04               572 	mov	a,#0x04
   0175 F0                  573 	movx	@dptr,a
   0176 90 02 75            574 	mov	dptr,#_LCD_putTextAt_PARM_3
   0179 74 01               575 	mov	a,#0x01
   017B F0                  576 	movx	@dptr,a
   017C 90 34 CB            577 	mov	dptr,#__str_8
   017F 75 F0 80            578 	mov	b,#0x80
   0182 12 1E 7B            579 	lcall	_LCD_putTextAt
                            580 ;	main.c:58: delay(3500,1);
   0185 90 02 D2            581 	mov	dptr,#_delay_PARM_2
   0188 74 01               582 	mov	a,#0x01
   018A F0                  583 	movx	@dptr,a
   018B 90 0D AC            584 	mov	dptr,#0x0DAC
   018E 12 22 33            585 	lcall	_delay
                            586 ;	main.c:59: clearLCD();
   0191 02 1E 37            587 	ljmp	_clearLCD
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
   019A 90 02 74            603 	mov	dptr,#_LCD_putTextAt_PARM_2
   019D 74 02               604 	mov	a,#0x02
   019F F0                  605 	movx	@dptr,a
   01A0 90 02 75            606 	mov	dptr,#_LCD_putTextAt_PARM_3
   01A3 74 02               607 	mov	a,#0x02
   01A5 F0                  608 	movx	@dptr,a
   01A6 90 34 DA            609 	mov	dptr,#__str_9
   01A9 75 F0 80            610 	mov	b,#0x80
   01AC 12 1E 7B            611 	lcall	_LCD_putTextAt
                            612 ;	main.c:68: LCD_putTextAt("1",3,CENTER);
   01AF 90 02 74            613 	mov	dptr,#_LCD_putTextAt_PARM_2
   01B2 74 03               614 	mov	a,#0x03
   01B4 F0                  615 	movx	@dptr,a
   01B5 90 02 75            616 	mov	dptr,#_LCD_putTextAt_PARM_3
   01B8 74 02               617 	mov	a,#0x02
   01BA F0                  618 	movx	@dptr,a
   01BB 90 34 E0            619 	mov	dptr,#__str_10
   01BE 75 F0 80            620 	mov	b,#0x80
   01C1 12 1E 7B            621 	lcall	_LCD_putTextAt
                            622 ;	main.c:69: delay(3000,1);
   01C4 90 02 D2            623 	mov	dptr,#_delay_PARM_2
   01C7 74 01               624 	mov	a,#0x01
   01C9 F0                  625 	movx	@dptr,a
   01CA 90 0B B8            626 	mov	dptr,#0x0BB8
   01CD 12 22 33            627 	lcall	_delay
                            628 ;	main.c:70: clearLCD();
   01D0 12 1E 37            629 	lcall	_clearLCD
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
   01E6 12 32 D5            644 	lcall	__gptrput
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
   0201 12 32 D5            663 	lcall	__gptrput
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
   021E 12 32 D5            684 	lcall	__gptrput
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
   023B 12 32 D5            705 	lcall	__gptrput
                            706 ;	main.c:77: printMap();
   023E 12 07 D5            707 	lcall	_printMap
                            708 ;	main.c:79: while(control)
   0241                     709 00101$:
   0241 90 00 93            710 	mov	dptr,#_setLevel1_control_1_1
   0244 E0                  711 	movx	a,@dptr
   0245 FA                  712 	mov	r2,a
   0246 60 48               713 	jz	00103$
                            714 ;	main.c:80: control = configMap(player->line, player->col);
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
   0260 12 34 33            733 	lcall	__gptrget
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
   027C 12 34 33            753 	lcall	__gptrget
   027F 90 02 6D            754 	mov	dptr,#_configMap_PARM_2
   0282 F0                  755 	movx	@dptr,a
   0283 8A 82               756 	mov	dpl,r2
   0285 12 1C BA            757 	lcall	_configMap
   0288 E5 82               758 	mov	a,dpl
   028A 90 00 93            759 	mov	dptr,#_setLevel1_control_1_1
   028D F0                  760 	movx	@dptr,a
   028E 80 B1               761 	sjmp	00101$
   0290                     762 00103$:
                            763 ;	main.c:82: clearLCD();
   0290 02 1E 37            764 	ljmp	_clearLCD
                            765 ;------------------------------------------------------------
                            766 ;Allocation info for local variables in function 'setLevel2'
                            767 ;------------------------------------------------------------
                            768 ;control                   Allocated with name '_setLevel2_control_1_1'
                            769 ;------------------------------------------------------------
                            770 ;	main.c:85: void setLevel2(){
                            771 ;	-----------------------------------------
                            772 ;	 function setLevel2
                            773 ;	-----------------------------------------
   0293                     774 _setLevel2:
                            775 ;	main.c:86: unsigned char control = 1;
   0293 90 00 94            776 	mov	dptr,#_setLevel2_control_1_1
   0296 74 01               777 	mov	a,#0x01
   0298 F0                  778 	movx	@dptr,a
                            779 ;	main.c:88: LCD_putTextAt("NIVEL",2,CENTER);
   0299 90 02 74            780 	mov	dptr,#_LCD_putTextAt_PARM_2
   029C 74 02               781 	mov	a,#0x02
   029E F0                  782 	movx	@dptr,a
   029F 90 02 75            783 	mov	dptr,#_LCD_putTextAt_PARM_3
   02A2 74 02               784 	mov	a,#0x02
   02A4 F0                  785 	movx	@dptr,a
   02A5 90 34 DA            786 	mov	dptr,#__str_9
   02A8 75 F0 80            787 	mov	b,#0x80
   02AB 12 1E 7B            788 	lcall	_LCD_putTextAt
                            789 ;	main.c:89: LCD_putTextAt("2",3,CENTER);
   02AE 90 02 74            790 	mov	dptr,#_LCD_putTextAt_PARM_2
   02B1 74 03               791 	mov	a,#0x03
   02B3 F0                  792 	movx	@dptr,a
   02B4 90 02 75            793 	mov	dptr,#_LCD_putTextAt_PARM_3
   02B7 74 02               794 	mov	a,#0x02
   02B9 F0                  795 	movx	@dptr,a
   02BA 90 34 E2            796 	mov	dptr,#__str_11
   02BD 75 F0 80            797 	mov	b,#0x80
   02C0 12 1E 7B            798 	lcall	_LCD_putTextAt
                            799 ;	main.c:90: delay(3000,1);
   02C3 90 02 D2            800 	mov	dptr,#_delay_PARM_2
   02C6 74 01               801 	mov	a,#0x01
   02C8 F0                  802 	movx	@dptr,a
   02C9 90 0B B8            803 	mov	dptr,#0x0BB8
   02CC 12 22 33            804 	lcall	_delay
                            805 ;	main.c:91: clearLCD();
   02CF 12 1E 37            806 	lcall	_clearLCD
                            807 ;	main.c:93: setMap2CGram();
   02D2 12 0C 58            808 	lcall	_setMap2CGram
                            809 ;	main.c:95: player->sline = 7;
   02D5 90 00 8F            810 	mov	dptr,#_player
   02D8 E0                  811 	movx	a,@dptr
   02D9 FA                  812 	mov	r2,a
   02DA A3                  813 	inc	dptr
   02DB E0                  814 	movx	a,@dptr
   02DC FB                  815 	mov	r3,a
   02DD A3                  816 	inc	dptr
   02DE E0                  817 	movx	a,@dptr
   02DF FC                  818 	mov	r4,a
   02E0 8A 82               819 	mov	dpl,r2
   02E2 8B 83               820 	mov	dph,r3
   02E4 8C F0               821 	mov	b,r4
   02E6 74 07               822 	mov	a,#0x07
   02E8 12 32 D5            823 	lcall	__gptrput
                            824 ;	main.c:96: player->scol = 2;
   02EB 90 00 8F            825 	mov	dptr,#_player
   02EE E0                  826 	movx	a,@dptr
   02EF FA                  827 	mov	r2,a
   02F0 A3                  828 	inc	dptr
   02F1 E0                  829 	movx	a,@dptr
   02F2 FB                  830 	mov	r3,a
   02F3 A3                  831 	inc	dptr
   02F4 E0                  832 	movx	a,@dptr
   02F5 FC                  833 	mov	r4,a
   02F6 0A                  834 	inc	r2
   02F7 BA 00 01            835 	cjne	r2,#0x00,00108$
   02FA 0B                  836 	inc	r3
   02FB                     837 00108$:
   02FB 8A 82               838 	mov	dpl,r2
   02FD 8B 83               839 	mov	dph,r3
   02FF 8C F0               840 	mov	b,r4
   0301 74 02               841 	mov	a,#0x02
   0303 12 32 D5            842 	lcall	__gptrput
                            843 ;	main.c:97: player->line = 4;
   0306 90 00 8F            844 	mov	dptr,#_player
   0309 E0                  845 	movx	a,@dptr
   030A FA                  846 	mov	r2,a
   030B A3                  847 	inc	dptr
   030C E0                  848 	movx	a,@dptr
   030D FB                  849 	mov	r3,a
   030E A3                  850 	inc	dptr
   030F E0                  851 	movx	a,@dptr
   0310 FC                  852 	mov	r4,a
   0311 74 02               853 	mov	a,#0x02
   0313 2A                  854 	add	a,r2
   0314 FA                  855 	mov	r2,a
   0315 E4                  856 	clr	a
   0316 3B                  857 	addc	a,r3
   0317 FB                  858 	mov	r3,a
   0318 8A 82               859 	mov	dpl,r2
   031A 8B 83               860 	mov	dph,r3
   031C 8C F0               861 	mov	b,r4
   031E 74 04               862 	mov	a,#0x04
   0320 12 32 D5            863 	lcall	__gptrput
                            864 ;	main.c:98: player->col = 2;
   0323 90 00 8F            865 	mov	dptr,#_player
   0326 E0                  866 	movx	a,@dptr
   0327 FA                  867 	mov	r2,a
   0328 A3                  868 	inc	dptr
   0329 E0                  869 	movx	a,@dptr
   032A FB                  870 	mov	r3,a
   032B A3                  871 	inc	dptr
   032C E0                  872 	movx	a,@dptr
   032D FC                  873 	mov	r4,a
   032E 74 03               874 	mov	a,#0x03
   0330 2A                  875 	add	a,r2
   0331 FA                  876 	mov	r2,a
   0332 E4                  877 	clr	a
   0333 3B                  878 	addc	a,r3
   0334 FB                  879 	mov	r3,a
   0335 8A 82               880 	mov	dpl,r2
   0337 8B 83               881 	mov	dph,r3
   0339 8C F0               882 	mov	b,r4
   033B 74 02               883 	mov	a,#0x02
   033D 12 32 D5            884 	lcall	__gptrput
                            885 ;	main.c:100: while(control)
   0340                     886 00101$:
   0340 90 00 94            887 	mov	dptr,#_setLevel2_control_1_1
   0343 E0                  888 	movx	a,@dptr
   0344 FA                  889 	mov	r2,a
   0345 60 48               890 	jz	00103$
                            891 ;	main.c:101: control = configMap(player->line, player->col);
   0347 90 00 8F            892 	mov	dptr,#_player
   034A E0                  893 	movx	a,@dptr
   034B FA                  894 	mov	r2,a
   034C A3                  895 	inc	dptr
   034D E0                  896 	movx	a,@dptr
   034E FB                  897 	mov	r3,a
   034F A3                  898 	inc	dptr
   0350 E0                  899 	movx	a,@dptr
   0351 FC                  900 	mov	r4,a
   0352 74 02               901 	mov	a,#0x02
   0354 2A                  902 	add	a,r2
   0355 FA                  903 	mov	r2,a
   0356 E4                  904 	clr	a
   0357 3B                  905 	addc	a,r3
   0358 FB                  906 	mov	r3,a
   0359 8A 82               907 	mov	dpl,r2
   035B 8B 83               908 	mov	dph,r3
   035D 8C F0               909 	mov	b,r4
   035F 12 34 33            910 	lcall	__gptrget
   0362 FA                  911 	mov	r2,a
   0363 90 00 8F            912 	mov	dptr,#_player
   0366 E0                  913 	movx	a,@dptr
   0367 FB                  914 	mov	r3,a
   0368 A3                  915 	inc	dptr
   0369 E0                  916 	movx	a,@dptr
   036A FC                  917 	mov	r4,a
   036B A3                  918 	inc	dptr
   036C E0                  919 	movx	a,@dptr
   036D FD                  920 	mov	r5,a
   036E 74 03               921 	mov	a,#0x03
   0370 2B                  922 	add	a,r3
   0371 FB                  923 	mov	r3,a
   0372 E4                  924 	clr	a
   0373 3C                  925 	addc	a,r4
   0374 FC                  926 	mov	r4,a
   0375 8B 82               927 	mov	dpl,r3
   0377 8C 83               928 	mov	dph,r4
   0379 8D F0               929 	mov	b,r5
   037B 12 34 33            930 	lcall	__gptrget
   037E 90 02 6D            931 	mov	dptr,#_configMap_PARM_2
   0381 F0                  932 	movx	@dptr,a
   0382 8A 82               933 	mov	dpl,r2
   0384 12 1C BA            934 	lcall	_configMap
   0387 E5 82               935 	mov	a,dpl
   0389 90 00 94            936 	mov	dptr,#_setLevel2_control_1_1
   038C F0                  937 	movx	@dptr,a
   038D 80 B1               938 	sjmp	00101$
   038F                     939 00103$:
                            940 ;	main.c:103: clearLCD();
   038F 02 1E 37            941 	ljmp	_clearLCD
                            942 ;------------------------------------------------------------
                            943 ;Allocation info for local variables in function 'setLevel3'
                            944 ;------------------------------------------------------------
                            945 ;control                   Allocated with name '_setLevel3_control_1_1'
                            946 ;------------------------------------------------------------
                            947 ;	main.c:106: void setLevel3(){
                            948 ;	-----------------------------------------
                            949 ;	 function setLevel3
                            950 ;	-----------------------------------------
   0392                     951 _setLevel3:
                            952 ;	main.c:107: unsigned char control = 1;
   0392 90 00 95            953 	mov	dptr,#_setLevel3_control_1_1
   0395 74 01               954 	mov	a,#0x01
   0397 F0                  955 	movx	@dptr,a
                            956 ;	main.c:109: LCD_putTextAt("NIVEL",2,CENTER);
   0398 90 02 74            957 	mov	dptr,#_LCD_putTextAt_PARM_2
   039B 74 02               958 	mov	a,#0x02
   039D F0                  959 	movx	@dptr,a
   039E 90 02 75            960 	mov	dptr,#_LCD_putTextAt_PARM_3
   03A1 74 02               961 	mov	a,#0x02
   03A3 F0                  962 	movx	@dptr,a
   03A4 90 34 DA            963 	mov	dptr,#__str_9
   03A7 75 F0 80            964 	mov	b,#0x80
   03AA 12 1E 7B            965 	lcall	_LCD_putTextAt
                            966 ;	main.c:110: LCD_putTextAt("3",3,CENTER);
   03AD 90 02 74            967 	mov	dptr,#_LCD_putTextAt_PARM_2
   03B0 74 03               968 	mov	a,#0x03
   03B2 F0                  969 	movx	@dptr,a
   03B3 90 02 75            970 	mov	dptr,#_LCD_putTextAt_PARM_3
   03B6 74 02               971 	mov	a,#0x02
   03B8 F0                  972 	movx	@dptr,a
   03B9 90 34 E4            973 	mov	dptr,#__str_12
   03BC 75 F0 80            974 	mov	b,#0x80
   03BF 12 1E 7B            975 	lcall	_LCD_putTextAt
                            976 ;	main.c:111: delay(3000,1);
   03C2 90 02 D2            977 	mov	dptr,#_delay_PARM_2
   03C5 74 01               978 	mov	a,#0x01
   03C7 F0                  979 	movx	@dptr,a
   03C8 90 0B B8            980 	mov	dptr,#0x0BB8
   03CB 12 22 33            981 	lcall	_delay
                            982 ;	main.c:112: clearLCD();
   03CE 12 1E 37            983 	lcall	_clearLCD
                            984 ;	main.c:114: setMap3CGram();
   03D1 12 10 70            985 	lcall	_setMap3CGram
                            986 ;	main.c:116: player->sline = 5;
   03D4 90 00 8F            987 	mov	dptr,#_player
   03D7 E0                  988 	movx	a,@dptr
   03D8 FA                  989 	mov	r2,a
   03D9 A3                  990 	inc	dptr
   03DA E0                  991 	movx	a,@dptr
   03DB FB                  992 	mov	r3,a
   03DC A3                  993 	inc	dptr
   03DD E0                  994 	movx	a,@dptr
   03DE FC                  995 	mov	r4,a
   03DF 8A 82               996 	mov	dpl,r2
   03E1 8B 83               997 	mov	dph,r3
   03E3 8C F0               998 	mov	b,r4
   03E5 74 05               999 	mov	a,#0x05
   03E7 12 32 D5           1000 	lcall	__gptrput
                           1001 ;	main.c:117: player->scol = 5;
   03EA 90 00 8F           1002 	mov	dptr,#_player
   03ED E0                 1003 	movx	a,@dptr
   03EE FA                 1004 	mov	r2,a
   03EF A3                 1005 	inc	dptr
   03F0 E0                 1006 	movx	a,@dptr
   03F1 FB                 1007 	mov	r3,a
   03F2 A3                 1008 	inc	dptr
   03F3 E0                 1009 	movx	a,@dptr
   03F4 FC                 1010 	mov	r4,a
   03F5 0A                 1011 	inc	r2
   03F6 BA 00 01           1012 	cjne	r2,#0x00,00108$
   03F9 0B                 1013 	inc	r3
   03FA                    1014 00108$:
   03FA 8A 82              1015 	mov	dpl,r2
   03FC 8B 83              1016 	mov	dph,r3
   03FE 8C F0              1017 	mov	b,r4
   0400 74 05              1018 	mov	a,#0x05
   0402 12 32 D5           1019 	lcall	__gptrput
                           1020 ;	main.c:118: player->line = 4;
   0405 90 00 8F           1021 	mov	dptr,#_player
   0408 E0                 1022 	movx	a,@dptr
   0409 FA                 1023 	mov	r2,a
   040A A3                 1024 	inc	dptr
   040B E0                 1025 	movx	a,@dptr
   040C FB                 1026 	mov	r3,a
   040D A3                 1027 	inc	dptr
   040E E0                 1028 	movx	a,@dptr
   040F FC                 1029 	mov	r4,a
   0410 74 02              1030 	mov	a,#0x02
   0412 2A                 1031 	add	a,r2
   0413 FA                 1032 	mov	r2,a
   0414 E4                 1033 	clr	a
   0415 3B                 1034 	addc	a,r3
   0416 FB                 1035 	mov	r3,a
   0417 8A 82              1036 	mov	dpl,r2
   0419 8B 83              1037 	mov	dph,r3
   041B 8C F0              1038 	mov	b,r4
   041D 74 04              1039 	mov	a,#0x04
   041F 12 32 D5           1040 	lcall	__gptrput
                           1041 ;	main.c:119: player->col = 10;
   0422 90 00 8F           1042 	mov	dptr,#_player
   0425 E0                 1043 	movx	a,@dptr
   0426 FA                 1044 	mov	r2,a
   0427 A3                 1045 	inc	dptr
   0428 E0                 1046 	movx	a,@dptr
   0429 FB                 1047 	mov	r3,a
   042A A3                 1048 	inc	dptr
   042B E0                 1049 	movx	a,@dptr
   042C FC                 1050 	mov	r4,a
   042D 74 03              1051 	mov	a,#0x03
   042F 2A                 1052 	add	a,r2
   0430 FA                 1053 	mov	r2,a
   0431 E4                 1054 	clr	a
   0432 3B                 1055 	addc	a,r3
   0433 FB                 1056 	mov	r3,a
   0434 8A 82              1057 	mov	dpl,r2
   0436 8B 83              1058 	mov	dph,r3
   0438 8C F0              1059 	mov	b,r4
   043A 74 0A              1060 	mov	a,#0x0A
   043C 12 32 D5           1061 	lcall	__gptrput
                           1062 ;	main.c:121: while(control)
   043F                    1063 00101$:
   043F 90 00 95           1064 	mov	dptr,#_setLevel3_control_1_1
   0442 E0                 1065 	movx	a,@dptr
   0443 FA                 1066 	mov	r2,a
   0444 60 48              1067 	jz	00103$
                           1068 ;	main.c:122: control = configMap(player->line, player->col);
   0446 90 00 8F           1069 	mov	dptr,#_player
   0449 E0                 1070 	movx	a,@dptr
   044A FA                 1071 	mov	r2,a
   044B A3                 1072 	inc	dptr
   044C E0                 1073 	movx	a,@dptr
   044D FB                 1074 	mov	r3,a
   044E A3                 1075 	inc	dptr
   044F E0                 1076 	movx	a,@dptr
   0450 FC                 1077 	mov	r4,a
   0451 74 02              1078 	mov	a,#0x02
   0453 2A                 1079 	add	a,r2
   0454 FA                 1080 	mov	r2,a
   0455 E4                 1081 	clr	a
   0456 3B                 1082 	addc	a,r3
   0457 FB                 1083 	mov	r3,a
   0458 8A 82              1084 	mov	dpl,r2
   045A 8B 83              1085 	mov	dph,r3
   045C 8C F0              1086 	mov	b,r4
   045E 12 34 33           1087 	lcall	__gptrget
   0461 FA                 1088 	mov	r2,a
   0462 90 00 8F           1089 	mov	dptr,#_player
   0465 E0                 1090 	movx	a,@dptr
   0466 FB                 1091 	mov	r3,a
   0467 A3                 1092 	inc	dptr
   0468 E0                 1093 	movx	a,@dptr
   0469 FC                 1094 	mov	r4,a
   046A A3                 1095 	inc	dptr
   046B E0                 1096 	movx	a,@dptr
   046C FD                 1097 	mov	r5,a
   046D 74 03              1098 	mov	a,#0x03
   046F 2B                 1099 	add	a,r3
   0470 FB                 1100 	mov	r3,a
   0471 E4                 1101 	clr	a
   0472 3C                 1102 	addc	a,r4
   0473 FC                 1103 	mov	r4,a
   0474 8B 82              1104 	mov	dpl,r3
   0476 8C 83              1105 	mov	dph,r4
   0478 8D F0              1106 	mov	b,r5
   047A 12 34 33           1107 	lcall	__gptrget
   047D 90 02 6D           1108 	mov	dptr,#_configMap_PARM_2
   0480 F0                 1109 	movx	@dptr,a
   0481 8A 82              1110 	mov	dpl,r2
   0483 12 1C BA           1111 	lcall	_configMap
   0486 E5 82              1112 	mov	a,dpl
   0488 90 00 95           1113 	mov	dptr,#_setLevel3_control_1_1
   048B F0                 1114 	movx	@dptr,a
   048C 80 B1              1115 	sjmp	00101$
   048E                    1116 00103$:
                           1117 ;	main.c:124: clearLCD();
   048E 02 1E 37           1118 	ljmp	_clearLCD
                           1119 ;------------------------------------------------------------
                           1120 ;Allocation info for local variables in function 'setLevel4'
                           1121 ;------------------------------------------------------------
                           1122 ;control                   Allocated with name '_setLevel4_control_1_1'
                           1123 ;------------------------------------------------------------
                           1124 ;	main.c:127: void setLevel4(){
                           1125 ;	-----------------------------------------
                           1126 ;	 function setLevel4
                           1127 ;	-----------------------------------------
   0491                    1128 _setLevel4:
                           1129 ;	main.c:128: unsigned char control = 1;
   0491 90 00 96           1130 	mov	dptr,#_setLevel4_control_1_1
   0494 74 01              1131 	mov	a,#0x01
   0496 F0                 1132 	movx	@dptr,a
                           1133 ;	main.c:130: LCD_putTextAt("NIVEL",2,CENTER);
   0497 90 02 74           1134 	mov	dptr,#_LCD_putTextAt_PARM_2
   049A 74 02              1135 	mov	a,#0x02
   049C F0                 1136 	movx	@dptr,a
   049D 90 02 75           1137 	mov	dptr,#_LCD_putTextAt_PARM_3
   04A0 74 02              1138 	mov	a,#0x02
   04A2 F0                 1139 	movx	@dptr,a
   04A3 90 34 DA           1140 	mov	dptr,#__str_9
   04A6 75 F0 80           1141 	mov	b,#0x80
   04A9 12 1E 7B           1142 	lcall	_LCD_putTextAt
                           1143 ;	main.c:131: LCD_putTextAt("4",3,CENTER);
   04AC 90 02 74           1144 	mov	dptr,#_LCD_putTextAt_PARM_2
   04AF 74 03              1145 	mov	a,#0x03
   04B1 F0                 1146 	movx	@dptr,a
   04B2 90 02 75           1147 	mov	dptr,#_LCD_putTextAt_PARM_3
   04B5 74 02              1148 	mov	a,#0x02
   04B7 F0                 1149 	movx	@dptr,a
   04B8 90 34 E6           1150 	mov	dptr,#__str_13
   04BB 75 F0 80           1151 	mov	b,#0x80
   04BE 12 1E 7B           1152 	lcall	_LCD_putTextAt
                           1153 ;	main.c:132: delay(3000,1);
   04C1 90 02 D2           1154 	mov	dptr,#_delay_PARM_2
   04C4 74 01              1155 	mov	a,#0x01
   04C6 F0                 1156 	movx	@dptr,a
   04C7 90 0B B8           1157 	mov	dptr,#0x0BB8
   04CA 12 22 33           1158 	lcall	_delay
                           1159 ;	main.c:133: clearLCD();
   04CD 12 1E 37           1160 	lcall	_clearLCD
                           1161 ;	main.c:135: setMap4CGram();
   04D0 12 14 88           1162 	lcall	_setMap4CGram
                           1163 ;	main.c:137: player->sline = 3;
   04D3 90 00 8F           1164 	mov	dptr,#_player
   04D6 E0                 1165 	movx	a,@dptr
   04D7 FA                 1166 	mov	r2,a
   04D8 A3                 1167 	inc	dptr
   04D9 E0                 1168 	movx	a,@dptr
   04DA FB                 1169 	mov	r3,a
   04DB A3                 1170 	inc	dptr
   04DC E0                 1171 	movx	a,@dptr
   04DD FC                 1172 	mov	r4,a
   04DE 8A 82              1173 	mov	dpl,r2
   04E0 8B 83              1174 	mov	dph,r3
   04E2 8C F0              1175 	mov	b,r4
   04E4 74 03              1176 	mov	a,#0x03
   04E6 12 32 D5           1177 	lcall	__gptrput
                           1178 ;	main.c:138: player->scol = 4;
   04E9 90 00 8F           1179 	mov	dptr,#_player
   04EC E0                 1180 	movx	a,@dptr
   04ED FA                 1181 	mov	r2,a
   04EE A3                 1182 	inc	dptr
   04EF E0                 1183 	movx	a,@dptr
   04F0 FB                 1184 	mov	r3,a
   04F1 A3                 1185 	inc	dptr
   04F2 E0                 1186 	movx	a,@dptr
   04F3 FC                 1187 	mov	r4,a
   04F4 0A                 1188 	inc	r2
   04F5 BA 00 01           1189 	cjne	r2,#0x00,00108$
   04F8 0B                 1190 	inc	r3
   04F9                    1191 00108$:
   04F9 8A 82              1192 	mov	dpl,r2
   04FB 8B 83              1193 	mov	dph,r3
   04FD 8C F0              1194 	mov	b,r4
   04FF 74 04              1195 	mov	a,#0x04
   0501 12 32 D5           1196 	lcall	__gptrput
                           1197 ;	main.c:139: player->line = 4;
   0504 90 00 8F           1198 	mov	dptr,#_player
   0507 E0                 1199 	movx	a,@dptr
   0508 FA                 1200 	mov	r2,a
   0509 A3                 1201 	inc	dptr
   050A E0                 1202 	movx	a,@dptr
   050B FB                 1203 	mov	r3,a
   050C A3                 1204 	inc	dptr
   050D E0                 1205 	movx	a,@dptr
   050E FC                 1206 	mov	r4,a
   050F 74 02              1207 	mov	a,#0x02
   0511 2A                 1208 	add	a,r2
   0512 FA                 1209 	mov	r2,a
   0513 E4                 1210 	clr	a
   0514 3B                 1211 	addc	a,r3
   0515 FB                 1212 	mov	r3,a
   0516 8A 82              1213 	mov	dpl,r2
   0518 8B 83              1214 	mov	dph,r3
   051A 8C F0              1215 	mov	b,r4
   051C 74 04              1216 	mov	a,#0x04
   051E 12 32 D5           1217 	lcall	__gptrput
                           1218 ;	main.c:140: player->col = 16;
   0521 90 00 8F           1219 	mov	dptr,#_player
   0524 E0                 1220 	movx	a,@dptr
   0525 FA                 1221 	mov	r2,a
   0526 A3                 1222 	inc	dptr
   0527 E0                 1223 	movx	a,@dptr
   0528 FB                 1224 	mov	r3,a
   0529 A3                 1225 	inc	dptr
   052A E0                 1226 	movx	a,@dptr
   052B FC                 1227 	mov	r4,a
   052C 74 03              1228 	mov	a,#0x03
   052E 2A                 1229 	add	a,r2
   052F FA                 1230 	mov	r2,a
   0530 E4                 1231 	clr	a
   0531 3B                 1232 	addc	a,r3
   0532 FB                 1233 	mov	r3,a
   0533 8A 82              1234 	mov	dpl,r2
   0535 8B 83              1235 	mov	dph,r3
   0537 8C F0              1236 	mov	b,r4
   0539 74 10              1237 	mov	a,#0x10
   053B 12 32 D5           1238 	lcall	__gptrput
                           1239 ;	main.c:142: while(control)
   053E                    1240 00101$:
   053E 90 00 96           1241 	mov	dptr,#_setLevel4_control_1_1
   0541 E0                 1242 	movx	a,@dptr
   0542 FA                 1243 	mov	r2,a
   0543 60 48              1244 	jz	00103$
                           1245 ;	main.c:143: control = configMap(player->line, player->col);
   0545 90 00 8F           1246 	mov	dptr,#_player
   0548 E0                 1247 	movx	a,@dptr
   0549 FA                 1248 	mov	r2,a
   054A A3                 1249 	inc	dptr
   054B E0                 1250 	movx	a,@dptr
   054C FB                 1251 	mov	r3,a
   054D A3                 1252 	inc	dptr
   054E E0                 1253 	movx	a,@dptr
   054F FC                 1254 	mov	r4,a
   0550 74 02              1255 	mov	a,#0x02
   0552 2A                 1256 	add	a,r2
   0553 FA                 1257 	mov	r2,a
   0554 E4                 1258 	clr	a
   0555 3B                 1259 	addc	a,r3
   0556 FB                 1260 	mov	r3,a
   0557 8A 82              1261 	mov	dpl,r2
   0559 8B 83              1262 	mov	dph,r3
   055B 8C F0              1263 	mov	b,r4
   055D 12 34 33           1264 	lcall	__gptrget
   0560 FA                 1265 	mov	r2,a
   0561 90 00 8F           1266 	mov	dptr,#_player
   0564 E0                 1267 	movx	a,@dptr
   0565 FB                 1268 	mov	r3,a
   0566 A3                 1269 	inc	dptr
   0567 E0                 1270 	movx	a,@dptr
   0568 FC                 1271 	mov	r4,a
   0569 A3                 1272 	inc	dptr
   056A E0                 1273 	movx	a,@dptr
   056B FD                 1274 	mov	r5,a
   056C 74 03              1275 	mov	a,#0x03
   056E 2B                 1276 	add	a,r3
   056F FB                 1277 	mov	r3,a
   0570 E4                 1278 	clr	a
   0571 3C                 1279 	addc	a,r4
   0572 FC                 1280 	mov	r4,a
   0573 8B 82              1281 	mov	dpl,r3
   0575 8C 83              1282 	mov	dph,r4
   0577 8D F0              1283 	mov	b,r5
   0579 12 34 33           1284 	lcall	__gptrget
   057C 90 02 6D           1285 	mov	dptr,#_configMap_PARM_2
   057F F0                 1286 	movx	@dptr,a
   0580 8A 82              1287 	mov	dpl,r2
   0582 12 1C BA           1288 	lcall	_configMap
   0585 E5 82              1289 	mov	a,dpl
   0587 90 00 96           1290 	mov	dptr,#_setLevel4_control_1_1
   058A F0                 1291 	movx	@dptr,a
   058B 80 B1              1292 	sjmp	00101$
   058D                    1293 00103$:
                           1294 ;	main.c:145: clearLCD();
   058D 02 1E 37           1295 	ljmp	_clearLCD
                           1296 ;------------------------------------------------------------
                           1297 ;Allocation info for local variables in function 'setLevel5'
                           1298 ;------------------------------------------------------------
                           1299 ;control                   Allocated with name '_setLevel5_control_1_1'
                           1300 ;------------------------------------------------------------
                           1301 ;	main.c:148: void setLevel5(){
                           1302 ;	-----------------------------------------
                           1303 ;	 function setLevel5
                           1304 ;	-----------------------------------------
   0590                    1305 _setLevel5:
                           1306 ;	main.c:149: unsigned char control = 1;
   0590 90 00 97           1307 	mov	dptr,#_setLevel5_control_1_1
   0593 74 01              1308 	mov	a,#0x01
   0595 F0                 1309 	movx	@dptr,a
                           1310 ;	main.c:151: LCD_putTextAt("NIVEL",2,CENTER);
   0596 90 02 74           1311 	mov	dptr,#_LCD_putTextAt_PARM_2
   0599 74 02              1312 	mov	a,#0x02
   059B F0                 1313 	movx	@dptr,a
   059C 90 02 75           1314 	mov	dptr,#_LCD_putTextAt_PARM_3
   059F 74 02              1315 	mov	a,#0x02
   05A1 F0                 1316 	movx	@dptr,a
   05A2 90 34 DA           1317 	mov	dptr,#__str_9
   05A5 75 F0 80           1318 	mov	b,#0x80
   05A8 12 1E 7B           1319 	lcall	_LCD_putTextAt
                           1320 ;	main.c:152: LCD_putTextAt("5",3,CENTER);
   05AB 90 02 74           1321 	mov	dptr,#_LCD_putTextAt_PARM_2
   05AE 74 03              1322 	mov	a,#0x03
   05B0 F0                 1323 	movx	@dptr,a
   05B1 90 02 75           1324 	mov	dptr,#_LCD_putTextAt_PARM_3
   05B4 74 02              1325 	mov	a,#0x02
   05B6 F0                 1326 	movx	@dptr,a
   05B7 90 34 E8           1327 	mov	dptr,#__str_14
   05BA 75 F0 80           1328 	mov	b,#0x80
   05BD 12 1E 7B           1329 	lcall	_LCD_putTextAt
                           1330 ;	main.c:153: delay(3000,1);
   05C0 90 02 D2           1331 	mov	dptr,#_delay_PARM_2
   05C3 74 01              1332 	mov	a,#0x01
   05C5 F0                 1333 	movx	@dptr,a
   05C6 90 0B B8           1334 	mov	dptr,#0x0BB8
   05C9 12 22 33           1335 	lcall	_delay
                           1336 ;	main.c:154: clearLCD();
   05CC 12 1E 37           1337 	lcall	_clearLCD
                           1338 ;	main.c:156: setMap5CGram();
   05CF 12 18 A1           1339 	lcall	_setMap5CGram
                           1340 ;	main.c:158: player->sline = 7;
   05D2 90 00 8F           1341 	mov	dptr,#_player
   05D5 E0                 1342 	movx	a,@dptr
   05D6 FA                 1343 	mov	r2,a
   05D7 A3                 1344 	inc	dptr
   05D8 E0                 1345 	movx	a,@dptr
   05D9 FB                 1346 	mov	r3,a
   05DA A3                 1347 	inc	dptr
   05DB E0                 1348 	movx	a,@dptr
   05DC FC                 1349 	mov	r4,a
   05DD 8A 82              1350 	mov	dpl,r2
   05DF 8B 83              1351 	mov	dph,r3
   05E1 8C F0              1352 	mov	b,r4
   05E3 74 07              1353 	mov	a,#0x07
   05E5 12 32 D5           1354 	lcall	__gptrput
                           1355 ;	main.c:159: player->scol = 5;
   05E8 90 00 8F           1356 	mov	dptr,#_player
   05EB E0                 1357 	movx	a,@dptr
   05EC FA                 1358 	mov	r2,a
   05ED A3                 1359 	inc	dptr
   05EE E0                 1360 	movx	a,@dptr
   05EF FB                 1361 	mov	r3,a
   05F0 A3                 1362 	inc	dptr
   05F1 E0                 1363 	movx	a,@dptr
   05F2 FC                 1364 	mov	r4,a
   05F3 0A                 1365 	inc	r2
   05F4 BA 00 01           1366 	cjne	r2,#0x00,00108$
   05F7 0B                 1367 	inc	r3
   05F8                    1368 00108$:
   05F8 8A 82              1369 	mov	dpl,r2
   05FA 8B 83              1370 	mov	dph,r3
   05FC 8C F0              1371 	mov	b,r4
   05FE 74 05              1372 	mov	a,#0x05
   0600 12 32 D5           1373 	lcall	__gptrput
                           1374 ;	main.c:160: player->line = 4;
   0603 90 00 8F           1375 	mov	dptr,#_player
   0606 E0                 1376 	movx	a,@dptr
   0607 FA                 1377 	mov	r2,a
   0608 A3                 1378 	inc	dptr
   0609 E0                 1379 	movx	a,@dptr
   060A FB                 1380 	mov	r3,a
   060B A3                 1381 	inc	dptr
   060C E0                 1382 	movx	a,@dptr
   060D FC                 1383 	mov	r4,a
   060E 74 02              1384 	mov	a,#0x02
   0610 2A                 1385 	add	a,r2
   0611 FA                 1386 	mov	r2,a
   0612 E4                 1387 	clr	a
   0613 3B                 1388 	addc	a,r3
   0614 FB                 1389 	mov	r3,a
   0615 8A 82              1390 	mov	dpl,r2
   0617 8B 83              1391 	mov	dph,r3
   0619 8C F0              1392 	mov	b,r4
   061B 74 04              1393 	mov	a,#0x04
   061D 12 32 D5           1394 	lcall	__gptrput
                           1395 ;	main.c:161: player->col = 1;
   0620 90 00 8F           1396 	mov	dptr,#_player
   0623 E0                 1397 	movx	a,@dptr
   0624 FA                 1398 	mov	r2,a
   0625 A3                 1399 	inc	dptr
   0626 E0                 1400 	movx	a,@dptr
   0627 FB                 1401 	mov	r3,a
   0628 A3                 1402 	inc	dptr
   0629 E0                 1403 	movx	a,@dptr
   062A FC                 1404 	mov	r4,a
   062B 74 03              1405 	mov	a,#0x03
   062D 2A                 1406 	add	a,r2
   062E FA                 1407 	mov	r2,a
   062F E4                 1408 	clr	a
   0630 3B                 1409 	addc	a,r3
   0631 FB                 1410 	mov	r3,a
   0632 8A 82              1411 	mov	dpl,r2
   0634 8B 83              1412 	mov	dph,r3
   0636 8C F0              1413 	mov	b,r4
   0638 74 01              1414 	mov	a,#0x01
   063A 12 32 D5           1415 	lcall	__gptrput
                           1416 ;	main.c:163: while(control)
   063D                    1417 00101$:
   063D 90 00 97           1418 	mov	dptr,#_setLevel5_control_1_1
   0640 E0                 1419 	movx	a,@dptr
   0641 FA                 1420 	mov	r2,a
   0642 60 48              1421 	jz	00103$
                           1422 ;	main.c:164: control = configMap(player->line, player->col);
   0644 90 00 8F           1423 	mov	dptr,#_player
   0647 E0                 1424 	movx	a,@dptr
   0648 FA                 1425 	mov	r2,a
   0649 A3                 1426 	inc	dptr
   064A E0                 1427 	movx	a,@dptr
   064B FB                 1428 	mov	r3,a
   064C A3                 1429 	inc	dptr
   064D E0                 1430 	movx	a,@dptr
   064E FC                 1431 	mov	r4,a
   064F 74 02              1432 	mov	a,#0x02
   0651 2A                 1433 	add	a,r2
   0652 FA                 1434 	mov	r2,a
   0653 E4                 1435 	clr	a
   0654 3B                 1436 	addc	a,r3
   0655 FB                 1437 	mov	r3,a
   0656 8A 82              1438 	mov	dpl,r2
   0658 8B 83              1439 	mov	dph,r3
   065A 8C F0              1440 	mov	b,r4
   065C 12 34 33           1441 	lcall	__gptrget
   065F FA                 1442 	mov	r2,a
   0660 90 00 8F           1443 	mov	dptr,#_player
   0663 E0                 1444 	movx	a,@dptr
   0664 FB                 1445 	mov	r3,a
   0665 A3                 1446 	inc	dptr
   0666 E0                 1447 	movx	a,@dptr
   0667 FC                 1448 	mov	r4,a
   0668 A3                 1449 	inc	dptr
   0669 E0                 1450 	movx	a,@dptr
   066A FD                 1451 	mov	r5,a
   066B 74 03              1452 	mov	a,#0x03
   066D 2B                 1453 	add	a,r3
   066E FB                 1454 	mov	r3,a
   066F E4                 1455 	clr	a
   0670 3C                 1456 	addc	a,r4
   0671 FC                 1457 	mov	r4,a
   0672 8B 82              1458 	mov	dpl,r3
   0674 8C 83              1459 	mov	dph,r4
   0676 8D F0              1460 	mov	b,r5
   0678 12 34 33           1461 	lcall	__gptrget
   067B 90 02 6D           1462 	mov	dptr,#_configMap_PARM_2
   067E F0                 1463 	movx	@dptr,a
   067F 8A 82              1464 	mov	dpl,r2
   0681 12 1C BA           1465 	lcall	_configMap
   0684 E5 82              1466 	mov	a,dpl
   0686 90 00 97           1467 	mov	dptr,#_setLevel5_control_1_1
   0689 F0                 1468 	movx	@dptr,a
   068A 80 B1              1469 	sjmp	00101$
   068C                    1470 00103$:
                           1471 ;	main.c:166: clearLCD();
   068C 02 1E 37           1472 	ljmp	_clearLCD
                           1473 ;------------------------------------------------------------
                           1474 ;Allocation info for local variables in function 'setFinish'
                           1475 ;------------------------------------------------------------
                           1476 ;------------------------------------------------------------
                           1477 ;	main.c:168: void setFinish(){
                           1478 ;	-----------------------------------------
                           1479 ;	 function setFinish
                           1480 ;	-----------------------------------------
   068F                    1481 _setFinish:
                           1482 ;	main.c:169: LCD_putTextAt("VOCE",2,CENTER);
   068F 90 02 74           1483 	mov	dptr,#_LCD_putTextAt_PARM_2
   0692 74 02              1484 	mov	a,#0x02
   0694 F0                 1485 	movx	@dptr,a
   0695 90 02 75           1486 	mov	dptr,#_LCD_putTextAt_PARM_3
   0698 74 02              1487 	mov	a,#0x02
   069A F0                 1488 	movx	@dptr,a
   069B 90 34 EA           1489 	mov	dptr,#__str_15
   069E 75 F0 80           1490 	mov	b,#0x80
   06A1 12 1E 7B           1491 	lcall	_LCD_putTextAt
                           1492 ;	main.c:170: LCD_putTextAt("VENCEU",3,CENTER);
   06A4 90 02 74           1493 	mov	dptr,#_LCD_putTextAt_PARM_2
   06A7 74 03              1494 	mov	a,#0x03
   06A9 F0                 1495 	movx	@dptr,a
   06AA 90 02 75           1496 	mov	dptr,#_LCD_putTextAt_PARM_3
   06AD 74 02              1497 	mov	a,#0x02
   06AF F0                 1498 	movx	@dptr,a
   06B0 90 34 EF           1499 	mov	dptr,#__str_16
   06B3 75 F0 80           1500 	mov	b,#0x80
   06B6 12 1E 7B           1501 	lcall	_LCD_putTextAt
                           1502 ;	main.c:171: delay(3000,1);
   06B9 90 02 D2           1503 	mov	dptr,#_delay_PARM_2
   06BC 74 01              1504 	mov	a,#0x01
   06BE F0                 1505 	movx	@dptr,a
   06BF 90 0B B8           1506 	mov	dptr,#0x0BB8
   06C2 02 22 33           1507 	ljmp	_delay
                           1508 ;------------------------------------------------------------
                           1509 ;Allocation info for local variables in function 'main'
                           1510 ;------------------------------------------------------------
                           1511 ;------------------------------------------------------------
                           1512 ;	main.c:174: void main(void){
                           1513 ;	-----------------------------------------
                           1514 ;	 function main
                           1515 ;	-----------------------------------------
   06C5                    1516 _main:
                           1517 ;	main.c:176: configs();
   06C5 12 00 76           1518 	lcall	_configs
                           1519 ;	main.c:178: while(1){
   06C8                    1520 00102$:
                           1521 ;	main.c:179: setInitialScreen();
   06C8 12 00 9B           1522 	lcall	_setInitialScreen
                           1523 ;	main.c:181: setInstructions();
   06CB 12 00 E3           1524 	lcall	_setInstructions
                           1525 ;	main.c:183: setLevel1();
   06CE 12 01 94           1526 	lcall	_setLevel1
                           1527 ;	main.c:185: setLevel2();
   06D1 12 02 93           1528 	lcall	_setLevel2
                           1529 ;	main.c:187: setLevel3();
   06D4 12 03 92           1530 	lcall	_setLevel3
                           1531 ;	main.c:189: setLevel4();
   06D7 12 04 91           1532 	lcall	_setLevel4
                           1533 ;	main.c:191: setLevel5();
   06DA 12 05 90           1534 	lcall	_setLevel5
                           1535 ;	main.c:193: setFinish();
   06DD 12 06 8F           1536 	lcall	_setFinish
   06E0 80 E6              1537 	sjmp	00102$
                           1538 	.area CSEG    (CODE)
                           1539 	.area CONST   (CODE)
   3453                    1540 __str_0:
   3453 4D 41 5A 45 20 47  1541 	.ascii "MAZE GAME"
        41 4D 45
   345C 00                 1542 	.db 0x00
   345D                    1543 __str_1:
   345D 20 61 70 65 72 74  1544 	.ascii " aperte ESPACO para iniciar"
        65 20 45 53 50 41
        43 4F 20 70 61 72
        61 20 69 6E 69 63
        69 61 72
   3478 00                 1545 	.db 0x00
   3479                    1546 __str_2:
   3479 49 4E 53 54 52 55  1547 	.ascii "INSTRUCOES"
        43 4F 45 53
   3483 00                 1548 	.db 0x00
   3484                    1549 __str_3:
   3484 31 29 20 4D 6F 76  1550 	.ascii "1) Movimente com"
        69 6D 65 6E 74 65
        20 63 6F 6D
   3494 00                 1551 	.db 0x00
   3495                    1552 __str_4:
   3495 57 2C 53 2C 41 2C  1553 	.ascii "W,S,A,D "
        44 20
   349D 00                 1554 	.db 0x00
   349E                    1555 __str_5:
   349E 43 4F 4D 4F 20 47  1556 	.ascii "COMO GANHAR"
        41 4E 48 41 52
   34A9 00                 1557 	.db 0x00
   34AA                    1558 __str_6:
   34AA 41 63 68 65 20 75  1559 	.ascii "Ache uma saida "
        6D 61 20 73 61 69
        64 61 20
   34B9 00                 1560 	.db 0x00
   34BA                    1561 __str_7:
   34BA 70 61 72 61 20 43  1562 	.ascii "para CIMA,DIREI-"
        49 4D 41 2C 44 49
        52 45 49 2D
   34CA 00                 1563 	.db 0x00
   34CB                    1564 __str_8:
   34CB 54 41 20 6F 75 20  1565 	.ascii "TA ou ESQUERDA"
        45 53 51 55 45 52
        44 41
   34D9 00                 1566 	.db 0x00
   34DA                    1567 __str_9:
   34DA 4E 49 56 45 4C     1568 	.ascii "NIVEL"
   34DF 00                 1569 	.db 0x00
   34E0                    1570 __str_10:
   34E0 31                 1571 	.ascii "1"
   34E1 00                 1572 	.db 0x00
   34E2                    1573 __str_11:
   34E2 32                 1574 	.ascii "2"
   34E3 00                 1575 	.db 0x00
   34E4                    1576 __str_12:
   34E4 33                 1577 	.ascii "3"
   34E5 00                 1578 	.db 0x00
   34E6                    1579 __str_13:
   34E6 34                 1580 	.ascii "4"
   34E7 00                 1581 	.db 0x00
   34E8                    1582 __str_14:
   34E8 35                 1583 	.ascii "5"
   34E9 00                 1584 	.db 0x00
   34EA                    1585 __str_15:
   34EA 56 4F 43 45        1586 	.ascii "VOCE"
   34EE 00                 1587 	.db 0x00
   34EF                    1588 __str_16:
   34EF 56 45 4E 43 45 55  1589 	.ascii "VENCEU"
   34F5 00                 1590 	.db 0x00
                           1591 	.area XINIT   (CODE)
   34F6                    1592 __xinit__rxMsg:
   34F6 00                 1593 	.db #0x00
   34F7                    1594 __xinit__mainMario_melody:
   34F7 63 00              1595 	.byte #0x63,#0x00
   34F9 63 00              1596 	.byte #0x63,#0x00
   34FB 00 00              1597 	.byte #0x00,#0x00
   34FD 63 00              1598 	.byte #0x63,#0x00
   34FF 00 00              1599 	.byte #0x00,#0x00
   3501 7D 00              1600 	.byte #0x7D,#0x00
   3503 63 00              1601 	.byte #0x63,#0x00
   3505 00 00              1602 	.byte #0x00,#0x00
   3507 54 00              1603 	.byte #0x54,#0x00
   3509 00 00              1604 	.byte #0x00,#0x00
   350B 00 00              1605 	.byte #0x00,#0x00
   350D 00 00              1606 	.byte #0x00,#0x00
   350F A7 00              1607 	.byte #0xA7,#0x00
   3511 00 00              1608 	.byte #0x00,#0x00
   3513 00 00              1609 	.byte #0x00,#0x00
   3515 00 00              1610 	.byte #0x00,#0x00
   3517 7D 00              1611 	.byte #0x7D,#0x00
   3519 00 00              1612 	.byte #0x00,#0x00
   351B 00 00              1613 	.byte #0x00,#0x00
   351D A7 00              1614 	.byte #0xA7,#0x00
   351F 00 00              1615 	.byte #0x00,#0x00
   3521 00 00              1616 	.byte #0x00,#0x00
   3523 C7 00              1617 	.byte #0xC7,#0x00
   3525 00 00              1618 	.byte #0x00,#0x00
   3527 00 00              1619 	.byte #0x00,#0x00
   3529 95 00              1620 	.byte #0x95,#0x00
   352B 00 00              1621 	.byte #0x00,#0x00
   352D 85 00              1622 	.byte #0x85,#0x00
   352F 00 00              1623 	.byte #0x00,#0x00
   3531 8D 00              1624 	.byte #0x8D,#0x00
   3533 95 00              1625 	.byte #0x95,#0x00
   3535 00 00              1626 	.byte #0x00,#0x00
   3537 A7 00              1627 	.byte #0xA7,#0x00
   3539 63 00              1628 	.byte #0x63,#0x00
   353B 54 00              1629 	.byte #0x54,#0x00
   353D 4B 00              1630 	.byte #0x4B,#0x00
   353F 00 00              1631 	.byte #0x00,#0x00
   3541 5E 00              1632 	.byte #0x5E,#0x00
   3543 54 00              1633 	.byte #0x54,#0x00
   3545 00 00              1634 	.byte #0x00,#0x00
   3547 63 00              1635 	.byte #0x63,#0x00
   3549 00 00              1636 	.byte #0x00,#0x00
   354B 7D 00              1637 	.byte #0x7D,#0x00
   354D 70 00              1638 	.byte #0x70,#0x00
   354F 85 00              1639 	.byte #0x85,#0x00
   3551 00 00              1640 	.byte #0x00,#0x00
   3553 00 00              1641 	.byte #0x00,#0x00
   3555 7D 00              1642 	.byte #0x7D,#0x00
   3557 00 00              1643 	.byte #0x00,#0x00
   3559 00 00              1644 	.byte #0x00,#0x00
   355B A7 00              1645 	.byte #0xA7,#0x00
   355D 00 00              1646 	.byte #0x00,#0x00
   355F 00 00              1647 	.byte #0x00,#0x00
   3561 C7 00              1648 	.byte #0xC7,#0x00
   3563 00 00              1649 	.byte #0x00,#0x00
   3565 00 00              1650 	.byte #0x00,#0x00
   3567 95 00              1651 	.byte #0x95,#0x00
   3569 00 00              1652 	.byte #0x00,#0x00
   356B 85 00              1653 	.byte #0x85,#0x00
   356D 00 00              1654 	.byte #0x00,#0x00
   356F 8D 00              1655 	.byte #0x8D,#0x00
   3571 95 00              1656 	.byte #0x95,#0x00
   3573 00 00              1657 	.byte #0x00,#0x00
   3575 A7 00              1658 	.byte #0xA7,#0x00
   3577 63 00              1659 	.byte #0x63,#0x00
   3579 54 00              1660 	.byte #0x54,#0x00
   357B 4B 00              1661 	.byte #0x4B,#0x00
   357D 00 00              1662 	.byte #0x00,#0x00
   357F 5E 00              1663 	.byte #0x5E,#0x00
   3581 54 00              1664 	.byte #0x54,#0x00
   3583 00 00              1665 	.byte #0x00,#0x00
   3585 63 00              1666 	.byte #0x63,#0x00
   3587 00 00              1667 	.byte #0x00,#0x00
   3589 7D 00              1668 	.byte #0x7D,#0x00
   358B 70 00              1669 	.byte #0x70,#0x00
   358D 85 00              1670 	.byte #0x85,#0x00
   358F 00 00              1671 	.byte #0x00,#0x00
   3591 00 00              1672 	.byte #0x00,#0x00
   3593                    1673 __xinit__mainMario_noteTime:
   3593 0F                 1674 	.db #0x0F
   3594 0F                 1675 	.db #0x0F
   3595 0F                 1676 	.db #0x0F
   3596 0F                 1677 	.db #0x0F
   3597 0F                 1678 	.db #0x0F
   3598 0F                 1679 	.db #0x0F
   3599 0F                 1680 	.db #0x0F
   359A 0F                 1681 	.db #0x0F
   359B 0F                 1682 	.db #0x0F
   359C 0F                 1683 	.db #0x0F
   359D 0F                 1684 	.db #0x0F
   359E 0F                 1685 	.db #0x0F
   359F 0F                 1686 	.db #0x0F
   35A0 0F                 1687 	.db #0x0F
   35A1 0F                 1688 	.db #0x0F
   35A2 0F                 1689 	.db #0x0F
   35A3 0F                 1690 	.db #0x0F
   35A4 0F                 1691 	.db #0x0F
   35A5 0F                 1692 	.db #0x0F
   35A6 0F                 1693 	.db #0x0F
   35A7 0F                 1694 	.db #0x0F
   35A8 0F                 1695 	.db #0x0F
   35A9 0F                 1696 	.db #0x0F
   35AA 0F                 1697 	.db #0x0F
   35AB 0F                 1698 	.db #0x0F
   35AC 0F                 1699 	.db #0x0F
   35AD 0F                 1700 	.db #0x0F
   35AE 0F                 1701 	.db #0x0F
   35AF 0F                 1702 	.db #0x0F
   35B0 0F                 1703 	.db #0x0F
   35B1 0F                 1704 	.db #0x0F
   35B2 0F                 1705 	.db #0x0F
   35B3 0C                 1706 	.db #0x0C
   35B4 0C                 1707 	.db #0x0C
   35B5 0C                 1708 	.db #0x0C
   35B6 0F                 1709 	.db #0x0F
   35B7 0F                 1710 	.db #0x0F
   35B8 0F                 1711 	.db #0x0F
   35B9 0F                 1712 	.db #0x0F
   35BA 0F                 1713 	.db #0x0F
   35BB 0F                 1714 	.db #0x0F
   35BC 0F                 1715 	.db #0x0F
   35BD 0F                 1716 	.db #0x0F
   35BE 0F                 1717 	.db #0x0F
   35BF 0F                 1718 	.db #0x0F
   35C0 0F                 1719 	.db #0x0F
   35C1 0F                 1720 	.db #0x0F
   35C2 0F                 1721 	.db #0x0F
   35C3 0F                 1722 	.db #0x0F
   35C4 0F                 1723 	.db #0x0F
   35C5 0F                 1724 	.db #0x0F
   35C6 0F                 1725 	.db #0x0F
   35C7 0F                 1726 	.db #0x0F
   35C8 0F                 1727 	.db #0x0F
   35C9 0F                 1728 	.db #0x0F
   35CA 0F                 1729 	.db #0x0F
   35CB 0F                 1730 	.db #0x0F
   35CC 0F                 1731 	.db #0x0F
   35CD 0F                 1732 	.db #0x0F
   35CE 0F                 1733 	.db #0x0F
   35CF 0F                 1734 	.db #0x0F
   35D0 0F                 1735 	.db #0x0F
   35D1 0F                 1736 	.db #0x0F
   35D2 0C                 1737 	.db #0x0C
   35D3 0C                 1738 	.db #0x0C
   35D4 0C                 1739 	.db #0x0C
   35D5 0F                 1740 	.db #0x0F
   35D6 0F                 1741 	.db #0x0F
   35D7 0F                 1742 	.db #0x0F
   35D8 0F                 1743 	.db #0x0F
   35D9 0F                 1744 	.db #0x0F
   35DA 0F                 1745 	.db #0x0F
   35DB 0F                 1746 	.db #0x0F
   35DC 0F                 1747 	.db #0x0F
   35DD 0F                 1748 	.db #0x0F
   35DE 0F                 1749 	.db #0x0F
   35DF 0F                 1750 	.db #0x0F
   35E0 0F                 1751 	.db #0x0F
   35E1                    1752 __xinit__underworld_melody:
   35E1 FB 00              1753 	.byte #0xFB,#0x00
   35E3 7D 00              1754 	.byte #0x7D,#0x00
   35E5 2A 01              1755 	.byte #0x2A,#0x01
   35E7 95 00              1756 	.byte #0x95,#0x00
   35E9 1A 01              1757 	.byte #0x1A,#0x01
   35EB 8D 00              1758 	.byte #0x8D,#0x00
   35ED 00 00              1759 	.byte #0x00,#0x00
   35EF 00 00              1760 	.byte #0x00,#0x00
   35F1 FB 00              1761 	.byte #0xFB,#0x00
   35F3 7D 00              1762 	.byte #0x7D,#0x00
   35F5 2A 01              1763 	.byte #0x2A,#0x01
   35F7 95 00              1764 	.byte #0x95,#0x00
   35F9 1A 01              1765 	.byte #0x1A,#0x01
   35FB 8D 00              1766 	.byte #0x8D,#0x00
   35FD 00 00              1767 	.byte #0x00,#0x00
   35FF 00 00              1768 	.byte #0x00,#0x00
   3601 78 01              1769 	.byte #0x78,#0x01
   3603 BC 00              1770 	.byte #0xBC,#0x00
   3605 BF 01              1771 	.byte #0xBF,#0x01
   3607 DF 00              1772 	.byte #0xDF,#0x00
   3609 A6 01              1773 	.byte #0xA6,#0x01
   360B D3 00              1774 	.byte #0xD3,#0x00
   360D 00 00              1775 	.byte #0x00,#0x00
   360F 00 00              1776 	.byte #0x00,#0x00
   3611 78 01              1777 	.byte #0x78,#0x01
   3613 BC 00              1778 	.byte #0xBC,#0x00
   3615 BF 01              1779 	.byte #0xBF,#0x01
   3617 DF 00              1780 	.byte #0xDF,#0x00
   3619 A6 01              1781 	.byte #0xA6,#0x01
   361B D3 00              1782 	.byte #0xD3,#0x00
   361D 00 00              1783 	.byte #0x00,#0x00
   361F 00 00              1784 	.byte #0x00,#0x00
   3621 D3 00              1785 	.byte #0xD3,#0x00
   3623 ED 00              1786 	.byte #0xED,#0x00
   3625 DF 00              1787 	.byte #0xDF,#0x00
   3627 ED 00              1788 	.byte #0xED,#0x00
   3629 D3 00              1789 	.byte #0xD3,#0x00
   362B D3 00              1790 	.byte #0xD3,#0x00
   362D 3C 01              1791 	.byte #0x3C,#0x01
   362F 4F 01              1792 	.byte #0x4F,#0x01
   3631 ED 00              1793 	.byte #0xED,#0x00
   3633 FB 00              1794 	.byte #0xFB,#0x00
   3635 B1 00              1795 	.byte #0xB1,#0x00
   3637 BC 00              1796 	.byte #0xBC,#0x00
   3639 8E 01              1797 	.byte #0x8E,#0x01
   363B 8D 00              1798 	.byte #0x8D,#0x00
   363D 95 00              1799 	.byte #0x95,#0x00
   363F 9E 00              1800 	.byte #0x9E,#0x00
   3641 D3 00              1801 	.byte #0xD3,#0x00
   3643 0A 01              1802 	.byte #0x0A,#0x01
   3645 1A 01              1803 	.byte #0x1A,#0x01
   3647 2A 01              1804 	.byte #0x2A,#0x01
   3649 3C 01              1805 	.byte #0x3C,#0x01
   364B 00 00              1806 	.byte #0x00,#0x00
   364D 00 00              1807 	.byte #0x00,#0x00
   364F 00 00              1808 	.byte #0x00,#0x00
   3651                    1809 __xinit__underworld_noteTime:
   3651 0C                 1810 	.db #0x0C
   3652 0C                 1811 	.db #0x0C
   3653 0C                 1812 	.db #0x0C
   3654 0C                 1813 	.db #0x0C
   3655 0C                 1814 	.db #0x0C
   3656 0C                 1815 	.db #0x0C
   3657 06                 1816 	.db #0x06
   3658 03                 1817 	.db #0x03
   3659 0C                 1818 	.db #0x0C
   365A 0C                 1819 	.db #0x0C
   365B 0C                 1820 	.db #0x0C
   365C 0C                 1821 	.db #0x0C
   365D 0C                 1822 	.db #0x0C
   365E 0C                 1823 	.db #0x0C
   365F 06                 1824 	.db #0x06
   3660 03                 1825 	.db #0x03
   3661 0C                 1826 	.db #0x0C
   3662 0C                 1827 	.db #0x0C
   3663 0C                 1828 	.db #0x0C
   3664 0C                 1829 	.db #0x0C
   3665 0C                 1830 	.db #0x0C
   3666 0C                 1831 	.db #0x0C
   3667 06                 1832 	.db #0x06
   3668 03                 1833 	.db #0x03
   3669 0C                 1834 	.db #0x0C
   366A 0C                 1835 	.db #0x0C
   366B 0C                 1836 	.db #0x0C
   366C 0C                 1837 	.db #0x0C
   366D 0C                 1838 	.db #0x0C
   366E 0C                 1839 	.db #0x0C
   366F 06                 1840 	.db #0x06
   3670 06                 1841 	.db #0x06
   3671 12                 1842 	.db #0x12
   3672 12                 1843 	.db #0x12
   3673 12                 1844 	.db #0x12
   3674 06                 1845 	.db #0x06
   3675 06                 1846 	.db #0x06
   3676 06                 1847 	.db #0x06
   3677 06                 1848 	.db #0x06
   3678 06                 1849 	.db #0x06
   3679 06                 1850 	.db #0x06
   367A 12                 1851 	.db #0x12
   367B 12                 1852 	.db #0x12
   367C 12                 1853 	.db #0x12
   367D 12                 1854 	.db #0x12
   367E 12                 1855 	.db #0x12
   367F 12                 1856 	.db #0x12
   3680 0A                 1857 	.db #0x0A
   3681 0A                 1858 	.db #0x0A
   3682 0A                 1859 	.db #0x0A
   3683 0A                 1860 	.db #0x0A
   3684 0A                 1861 	.db #0x0A
   3685 0A                 1862 	.db #0x0A
   3686 03                 1863 	.db #0x03
   3687 03                 1864 	.db #0x03
   3688 03                 1865 	.db #0x03
   3689                    1866 __xinit__adobe_melody:
   3689 85 00              1867 	.byte #0x85,#0x00
   368B 85 00              1868 	.byte #0x85,#0x00
   368D 00 00              1869 	.byte #0x00,#0x00
   368F 85 00              1870 	.byte #0x85,#0x00
   3691 70 00              1871 	.byte #0x70,#0x00
   3693 70 00              1872 	.byte #0x70,#0x00
   3695 00 00              1873 	.byte #0x00,#0x00
   3697 70 00              1874 	.byte #0x70,#0x00
   3699 95 00              1875 	.byte #0x95,#0x00
   369B 95 00              1876 	.byte #0x95,#0x00
   369D 00 00              1877 	.byte #0x00,#0x00
   369F 95 00              1878 	.byte #0x95,#0x00
   36A1 85 00              1879 	.byte #0x85,#0x00
   36A3 85 00              1880 	.byte #0x85,#0x00
   36A5 00 00              1881 	.byte #0x00,#0x00
   36A7 00 00              1882 	.byte #0x00,#0x00
   36A9                    1883 __xinit__adobe_noteTime:
   36A9 06                 1884 	.db #0x06
   36AA 06                 1885 	.db #0x06
   36AB 06                 1886 	.db #0x06
   36AC 06                 1887 	.db #0x06
   36AD 06                 1888 	.db #0x06
   36AE 06                 1889 	.db #0x06
   36AF 06                 1890 	.db #0x06
   36B0 06                 1891 	.db #0x06
   36B1 06                 1892 	.db #0x06
   36B2 06                 1893 	.db #0x06
   36B3 06                 1894 	.db #0x06
   36B4 06                 1895 	.db #0x06
   36B5 06                 1896 	.db #0x06
   36B6 06                 1897 	.db #0x06
   36B7 06                 1898 	.db #0x06
   36B8 06                 1899 	.db #0x06
   36B9                    1900 __xinit__beep1_melody:
   36B9 FB 00              1901 	.byte #0xFB,#0x00
   36BB 00 00              1902 	.byte #0x00,#0x00
   36BD                    1903 __xinit__beep1_noteTime:
   36BD 06                 1904 	.db #0x06
   36BE 0C                 1905 	.db #0x0C
   36BF                    1906 __xinit__beep2_melody:
   36BF ED 00              1907 	.byte #0xED,#0x00
   36C1 00 00              1908 	.byte #0x00,#0x00
   36C3                    1909 __xinit__beep2_noteTime:
   36C3 06                 1910 	.db #0x06
   36C4 0C                 1911 	.db #0x0C
                           1912 	.area CABS    (ABS,CODE)
