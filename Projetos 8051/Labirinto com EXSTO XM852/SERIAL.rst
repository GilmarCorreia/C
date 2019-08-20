                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Mon Aug 19 17:53:44 2019
                              5 ;--------------------------------------------------------
                              6 	.module SERIAL
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _receivedChar
                             13 	.globl _transNumber
                             14 	.globl _CY
                             15 	.globl _AC
                             16 	.globl _F0
                             17 	.globl _RS1
                             18 	.globl _RS0
                             19 	.globl _OV
                             20 	.globl _F1
                             21 	.globl _P
                             22 	.globl _PS
                             23 	.globl _PT1
                             24 	.globl _PX1
                             25 	.globl _PT0
                             26 	.globl _PX0
                             27 	.globl _RD
                             28 	.globl _WR
                             29 	.globl _T1
                             30 	.globl _T0
                             31 	.globl _INT1
                             32 	.globl _INT0
                             33 	.globl _TXD
                             34 	.globl _RXD
                             35 	.globl _P3_7
                             36 	.globl _P3_6
                             37 	.globl _P3_5
                             38 	.globl _P3_4
                             39 	.globl _P3_3
                             40 	.globl _P3_2
                             41 	.globl _P3_1
                             42 	.globl _P3_0
                             43 	.globl _EA
                             44 	.globl _ES
                             45 	.globl _ET1
                             46 	.globl _EX1
                             47 	.globl _ET0
                             48 	.globl _EX0
                             49 	.globl _P2_7
                             50 	.globl _P2_6
                             51 	.globl _P2_5
                             52 	.globl _P2_4
                             53 	.globl _P2_3
                             54 	.globl _P2_2
                             55 	.globl _P2_1
                             56 	.globl _P2_0
                             57 	.globl _SM0
                             58 	.globl _SM1
                             59 	.globl _SM2
                             60 	.globl _REN
                             61 	.globl _TB8
                             62 	.globl _RB8
                             63 	.globl _TI
                             64 	.globl _RI
                             65 	.globl _P1_7
                             66 	.globl _P1_6
                             67 	.globl _P1_5
                             68 	.globl _P1_4
                             69 	.globl _P1_3
                             70 	.globl _P1_2
                             71 	.globl _P1_1
                             72 	.globl _P1_0
                             73 	.globl _TF1
                             74 	.globl _TR1
                             75 	.globl _TF0
                             76 	.globl _TR0
                             77 	.globl _IE1
                             78 	.globl _IT1
                             79 	.globl _IE0
                             80 	.globl _IT0
                             81 	.globl _P0_7
                             82 	.globl _P0_6
                             83 	.globl _P0_5
                             84 	.globl _P0_4
                             85 	.globl _P0_3
                             86 	.globl _P0_2
                             87 	.globl _P0_1
                             88 	.globl _P0_0
                             89 	.globl _B
                             90 	.globl _ACC
                             91 	.globl _PSW
                             92 	.globl _IP
                             93 	.globl _P3
                             94 	.globl _IE
                             95 	.globl _P2
                             96 	.globl _SBUF
                             97 	.globl _SCON
                             98 	.globl _P1
                             99 	.globl _TH1
                            100 	.globl _TH0
                            101 	.globl _TL1
                            102 	.globl _TL0
                            103 	.globl _TMOD
                            104 	.globl _TCON
                            105 	.globl _PCON
                            106 	.globl _DPH
                            107 	.globl _DPL
                            108 	.globl _SP
                            109 	.globl _P0
                            110 	.globl _serialControl_PARM_2
                            111 	.globl _serialConfig_PARM_2
                            112 	.globl _player
                            113 	.globl _Timer0
                            114 	.globl _map
                            115 	.globl _SCmap
                            116 	.globl _transmitter
                            117 	.globl _receiver
                            118 	.globl _serialConfig
                            119 	.globl _serialBegin
                            120 	.globl _serialControl
                            121 ;--------------------------------------------------------
                            122 ; special function registers
                            123 ;--------------------------------------------------------
                            124 	.area RSEG    (DATA)
                    0080    125 _P0	=	0x0080
                    0081    126 _SP	=	0x0081
                    0082    127 _DPL	=	0x0082
                    0083    128 _DPH	=	0x0083
                    0087    129 _PCON	=	0x0087
                    0088    130 _TCON	=	0x0088
                    0089    131 _TMOD	=	0x0089
                    008A    132 _TL0	=	0x008a
                    008B    133 _TL1	=	0x008b
                    008C    134 _TH0	=	0x008c
                    008D    135 _TH1	=	0x008d
                    0090    136 _P1	=	0x0090
                    0098    137 _SCON	=	0x0098
                    0099    138 _SBUF	=	0x0099
                    00A0    139 _P2	=	0x00a0
                    00A8    140 _IE	=	0x00a8
                    00B0    141 _P3	=	0x00b0
                    00B8    142 _IP	=	0x00b8
                    00D0    143 _PSW	=	0x00d0
                    00E0    144 _ACC	=	0x00e0
                    00F0    145 _B	=	0x00f0
                            146 ;--------------------------------------------------------
                            147 ; special function bits
                            148 ;--------------------------------------------------------
                            149 	.area RSEG    (DATA)
                    0080    150 _P0_0	=	0x0080
                    0081    151 _P0_1	=	0x0081
                    0082    152 _P0_2	=	0x0082
                    0083    153 _P0_3	=	0x0083
                    0084    154 _P0_4	=	0x0084
                    0085    155 _P0_5	=	0x0085
                    0086    156 _P0_6	=	0x0086
                    0087    157 _P0_7	=	0x0087
                    0088    158 _IT0	=	0x0088
                    0089    159 _IE0	=	0x0089
                    008A    160 _IT1	=	0x008a
                    008B    161 _IE1	=	0x008b
                    008C    162 _TR0	=	0x008c
                    008D    163 _TF0	=	0x008d
                    008E    164 _TR1	=	0x008e
                    008F    165 _TF1	=	0x008f
                    0090    166 _P1_0	=	0x0090
                    0091    167 _P1_1	=	0x0091
                    0092    168 _P1_2	=	0x0092
                    0093    169 _P1_3	=	0x0093
                    0094    170 _P1_4	=	0x0094
                    0095    171 _P1_5	=	0x0095
                    0096    172 _P1_6	=	0x0096
                    0097    173 _P1_7	=	0x0097
                    0098    174 _RI	=	0x0098
                    0099    175 _TI	=	0x0099
                    009A    176 _RB8	=	0x009a
                    009B    177 _TB8	=	0x009b
                    009C    178 _REN	=	0x009c
                    009D    179 _SM2	=	0x009d
                    009E    180 _SM1	=	0x009e
                    009F    181 _SM0	=	0x009f
                    00A0    182 _P2_0	=	0x00a0
                    00A1    183 _P2_1	=	0x00a1
                    00A2    184 _P2_2	=	0x00a2
                    00A3    185 _P2_3	=	0x00a3
                    00A4    186 _P2_4	=	0x00a4
                    00A5    187 _P2_5	=	0x00a5
                    00A6    188 _P2_6	=	0x00a6
                    00A7    189 _P2_7	=	0x00a7
                    00A8    190 _EX0	=	0x00a8
                    00A9    191 _ET0	=	0x00a9
                    00AA    192 _EX1	=	0x00aa
                    00AB    193 _ET1	=	0x00ab
                    00AC    194 _ES	=	0x00ac
                    00AF    195 _EA	=	0x00af
                    00B0    196 _P3_0	=	0x00b0
                    00B1    197 _P3_1	=	0x00b1
                    00B2    198 _P3_2	=	0x00b2
                    00B3    199 _P3_3	=	0x00b3
                    00B4    200 _P3_4	=	0x00b4
                    00B5    201 _P3_5	=	0x00b5
                    00B6    202 _P3_6	=	0x00b6
                    00B7    203 _P3_7	=	0x00b7
                    00B0    204 _RXD	=	0x00b0
                    00B1    205 _TXD	=	0x00b1
                    00B2    206 _INT0	=	0x00b2
                    00B3    207 _INT1	=	0x00b3
                    00B4    208 _T0	=	0x00b4
                    00B5    209 _T1	=	0x00b5
                    00B6    210 _WR	=	0x00b6
                    00B7    211 _RD	=	0x00b7
                    00B8    212 _PX0	=	0x00b8
                    00B9    213 _PT0	=	0x00b9
                    00BA    214 _PX1	=	0x00ba
                    00BB    215 _PT1	=	0x00bb
                    00BC    216 _PS	=	0x00bc
                    00D0    217 _P	=	0x00d0
                    00D1    218 _F1	=	0x00d1
                    00D2    219 _OV	=	0x00d2
                    00D3    220 _RS0	=	0x00d3
                    00D4    221 _RS1	=	0x00d4
                    00D5    222 _F0	=	0x00d5
                    00D6    223 _AC	=	0x00d6
                    00D7    224 _CY	=	0x00d7
                            225 ;--------------------------------------------------------
                            226 ; overlayable register banks
                            227 ;--------------------------------------------------------
                            228 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     229 	.ds 8
                            230 ;--------------------------------------------------------
                            231 ; internal ram data
                            232 ;--------------------------------------------------------
                            233 	.area DSEG    (DATA)
   0010                     234 _serialControl_sloc0_1_0:
   0010                     235 	.ds 2
   0012                     236 _serialControl_sloc1_1_0:
   0012                     237 	.ds 3
   0015                     238 _serialControl_sloc2_1_0:
   0015                     239 	.ds 3
   0018                     240 _serialControl_sloc3_1_0:
   0018                     241 	.ds 3
                            242 ;--------------------------------------------------------
                            243 ; overlayable items in internal ram 
                            244 ;--------------------------------------------------------
                            245 	.area OSEG    (OVR,DATA)
                            246 ;--------------------------------------------------------
                            247 ; indirectly addressable internal ram data
                            248 ;--------------------------------------------------------
                            249 	.area ISEG    (DATA)
                            250 ;--------------------------------------------------------
                            251 ; absolute internal ram data
                            252 ;--------------------------------------------------------
                            253 	.area IABS    (ABS,DATA)
                            254 	.area IABS    (ABS,DATA)
                            255 ;--------------------------------------------------------
                            256 ; bit data
                            257 ;--------------------------------------------------------
                            258 	.area BSEG    (BIT)
                            259 ;--------------------------------------------------------
                            260 ; paged external ram data
                            261 ;--------------------------------------------------------
                            262 	.area PSEG    (PAG,XDATA)
                            263 ;--------------------------------------------------------
                            264 ; external ram data
                            265 ;--------------------------------------------------------
                            266 	.area XSEG    (XDATA)
                    FFC2    267 _winstLCD	=	0xffc2
                    FFD2    268 _wdataLCD	=	0xffd2
                    FFE2    269 _rinstLCD	=	0xffe2
                    FFF2    270 _rdataLCD	=	0xfff2
   02E5                     271 _point:
   02E5                     272 	.ds 8
   02ED                     273 _SCmap::
   02ED                     274 	.ds 64
   032D                     275 _map::
   032D                     276 	.ds 64
   036D                     277 _Timer0::
   036D                     278 	.ds 7
   0374                     279 _player::
   0374                     280 	.ds 3
   0377                     281 _transmitter_message_1_1:
   0377                     282 	.ds 1
   0378                     283 _transNumber_number_1_1:
   0378                     284 	.ds 1
   0379                     285 _serialConfig_PARM_2:
   0379                     286 	.ds 3
   037C                     287 _serialConfig_read_1_1:
   037C                     288 	.ds 1
   037D                     289 _serialControl_PARM_2:
   037D                     290 	.ds 3
   0380                     291 _serialControl_scmap_1_1:
   0380                     292 	.ds 3
   0383                     293 _serialControl_logic_op_1_1:
   0383                     294 	.ds 1
                            295 ;--------------------------------------------------------
                            296 ; absolute external ram data
                            297 ;--------------------------------------------------------
                            298 	.area XABS    (ABS,XDATA)
                            299 ;--------------------------------------------------------
                            300 ; external initialized ram data
                            301 ;--------------------------------------------------------
                            302 	.area XISEG   (XDATA)
   0907                     303 _rxMsg:
   0907                     304 	.ds 1
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
                            316 ; global & static initialisations
                            317 ;--------------------------------------------------------
                            318 	.area HOME    (CODE)
                            319 	.area GSINIT  (CODE)
                            320 	.area GSFINAL (CODE)
                            321 	.area GSINIT  (CODE)
                            322 ;--------------------------------------------------------
                            323 ; Home
                            324 ;--------------------------------------------------------
                            325 	.area HOME    (CODE)
                            326 	.area HOME    (CODE)
                            327 ;--------------------------------------------------------
                            328 ; code
                            329 ;--------------------------------------------------------
                            330 	.area CSEG    (CODE)
                            331 ;------------------------------------------------------------
                            332 ;Allocation info for local variables in function 'transmitter'
                            333 ;------------------------------------------------------------
                            334 ;message                   Allocated with name '_transmitter_message_1_1'
                            335 ;------------------------------------------------------------
                            336 ;	SERIAL.c:9: void transmitter(unsigned char message){
                            337 ;	-----------------------------------------
                            338 ;	 function transmitter
                            339 ;	-----------------------------------------
   26BE                     340 _transmitter:
                    0002    341 	ar2 = 0x02
                    0003    342 	ar3 = 0x03
                    0004    343 	ar4 = 0x04
                    0005    344 	ar5 = 0x05
                    0006    345 	ar6 = 0x06
                    0007    346 	ar7 = 0x07
                    0000    347 	ar0 = 0x00
                    0001    348 	ar1 = 0x01
   26BE E5 82               349 	mov	a,dpl
   26C0 90 03 77            350 	mov	dptr,#_transmitter_message_1_1
   26C3 F0                  351 	movx	@dptr,a
                            352 ;	SERIAL.c:10: if(! TI){
   26C4 20 99 0B            353 	jb	_TI,00106$
                            354 ;	SERIAL.c:11: SBUF = message;				// Manda a mensagem para o buffer
   26C7 90 03 77            355 	mov	dptr,#_transmitter_message_1_1
   26CA E0                  356 	movx	a,@dptr
   26CB F5 99               357 	mov	_SBUF,a
                            358 ;	SERIAL.c:13: while(TI == 0);		// Esperando a flag TI parar a transmissão
   26CD                     359 00101$:
                            360 ;	SERIAL.c:14: TI = 0;			// Zerando a flag
   26CD 10 99 02            361 	jbc	_TI,00112$
   26D0 80 FB               362 	sjmp	00101$
   26D2                     363 00112$:
   26D2                     364 00106$:
   26D2 22                  365 	ret
                            366 ;------------------------------------------------------------
                            367 ;Allocation info for local variables in function 'transNumber'
                            368 ;------------------------------------------------------------
                            369 ;number                    Allocated with name '_transNumber_number_1_1'
                            370 ;------------------------------------------------------------
                            371 ;	SERIAL.c:19: void transNumber(unsigned char number){
                            372 ;	-----------------------------------------
                            373 ;	 function transNumber
                            374 ;	-----------------------------------------
   26D3                     375 _transNumber:
   26D3 E5 82               376 	mov	a,dpl
   26D5 90 03 78            377 	mov	dptr,#_transNumber_number_1_1
   26D8 F0                  378 	movx	@dptr,a
                            379 ;	SERIAL.c:21: transmitter(number/10 + '0'); 
   26D9 90 03 78            380 	mov	dptr,#_transNumber_number_1_1
   26DC E0                  381 	movx	a,@dptr
   26DD FA                  382 	mov	r2,a
   26DE 75 F0 0A            383 	mov	b,#0x0A
   26E1 84                  384 	div	ab
   26E2 24 30               385 	add	a,#0x30
   26E4 F5 82               386 	mov	dpl,a
   26E6 C0 02               387 	push	ar2
   26E8 12 26 BE            388 	lcall	_transmitter
   26EB D0 02               389 	pop	ar2
                            390 ;	SERIAL.c:22: transmitter(number%10 + '0'); 
   26ED 75 F0 0A            391 	mov	b,#0x0A
   26F0 EA                  392 	mov	a,r2
   26F1 84                  393 	div	ab
   26F2 E5 F0               394 	mov	a,b
   26F4 24 30               395 	add	a,#0x30
   26F6 F5 82               396 	mov	dpl,a
   26F8 12 26 BE            397 	lcall	_transmitter
                            398 ;	SERIAL.c:23: transmitter('\n'); 
   26FB 75 82 0A            399 	mov	dpl,#0x0A
   26FE 02 26 BE            400 	ljmp	_transmitter
                            401 ;------------------------------------------------------------
                            402 ;Allocation info for local variables in function 'receiver'
                            403 ;------------------------------------------------------------
                            404 ;------------------------------------------------------------
                            405 ;	SERIAL.c:26: char receiver(){
                            406 ;	-----------------------------------------
                            407 ;	 function receiver
                            408 ;	-----------------------------------------
   2701                     409 _receiver:
                            410 ;	SERIAL.c:27: return SBUF;						// Recebe a mensagem do buffer
   2701 AA 99               411 	mov	r2,_SBUF
   2703 8A 82               412 	mov	dpl,r2
   2705 22                  413 	ret
                            414 ;------------------------------------------------------------
                            415 ;Allocation info for local variables in function 'receivedChar'
                            416 ;------------------------------------------------------------
                            417 ;------------------------------------------------------------
                            418 ;	SERIAL.c:30: char receivedChar(){
                            419 ;	-----------------------------------------
                            420 ;	 function receivedChar
                            421 ;	-----------------------------------------
   2706                     422 _receivedChar:
                            423 ;	SERIAL.c:31: return rxMsg;
   2706 90 09 07            424 	mov	dptr,#_rxMsg
   2709 E0                  425 	movx	a,@dptr
   270A F5 82               426 	mov	dpl,a
   270C 22                  427 	ret
                            428 ;------------------------------------------------------------
                            429 ;Allocation info for local variables in function 'serialConfig'
                            430 ;------------------------------------------------------------
                            431 ;gamer                     Allocated with name '_serialConfig_PARM_2'
                            432 ;read                      Allocated with name '_serialConfig_read_1_1'
                            433 ;------------------------------------------------------------
                            434 ;	SERIAL.c:34: void serialConfig(unsigned char read, struct position *gamer){
                            435 ;	-----------------------------------------
                            436 ;	 function serialConfig
                            437 ;	-----------------------------------------
   270D                     438 _serialConfig:
   270D E5 82               439 	mov	a,dpl
   270F 90 03 7C            440 	mov	dptr,#_serialConfig_read_1_1
   2712 F0                  441 	movx	@dptr,a
                            442 ;	SERIAL.c:35: player = gamer;
   2713 90 03 79            443 	mov	dptr,#_serialConfig_PARM_2
   2716 E0                  444 	movx	a,@dptr
   2717 FA                  445 	mov	r2,a
   2718 A3                  446 	inc	dptr
   2719 E0                  447 	movx	a,@dptr
   271A FB                  448 	mov	r3,a
   271B A3                  449 	inc	dptr
   271C E0                  450 	movx	a,@dptr
   271D FC                  451 	mov	r4,a
   271E 90 03 74            452 	mov	dptr,#_player
   2721 EA                  453 	mov	a,r2
   2722 F0                  454 	movx	@dptr,a
   2723 A3                  455 	inc	dptr
   2724 EB                  456 	mov	a,r3
   2725 F0                  457 	movx	@dptr,a
   2726 A3                  458 	inc	dptr
   2727 EC                  459 	mov	a,r4
   2728 F0                  460 	movx	@dptr,a
                            461 ;	SERIAL.c:37: if(read)
   2729 90 03 7C            462 	mov	dptr,#_serialConfig_read_1_1
   272C E0                  463 	movx	a,@dptr
   272D FA                  464 	mov	r2,a
   272E 60 04               465 	jz	00102$
                            466 ;	SERIAL.c:38: SCON = 0x50; 						// Configurando o modo 1 para serial (05 Serial.pdf de sistmicro)
   2730 75 98 50            467 	mov	_SCON,#0x50
                            468 ;	SERIAL.c:40: SCON = 0x40;
   2733 22                  469 	ret
   2734                     470 00102$:
   2734 75 98 40            471 	mov	_SCON,#0x40
   2737 22                  472 	ret
                            473 ;------------------------------------------------------------
                            474 ;Allocation info for local variables in function 'serialBegin'
                            475 ;------------------------------------------------------------
                            476 ;------------------------------------------------------------
                            477 ;	SERIAL.c:44: unsigned char serialBegin(){
                            478 ;	-----------------------------------------
                            479 ;	 function serialBegin
                            480 ;	-----------------------------------------
   2738                     481 _serialBegin:
                            482 ;	SERIAL.c:46: if(RI){
   2738 30 98 11            483 	jnb	_RI,00104$
                            484 ;	SERIAL.c:47: rxMsg = receiver();
   273B 12 27 01            485 	lcall	_receiver
   273E AA 82               486 	mov	r2,dpl
   2740 90 09 07            487 	mov	dptr,#_rxMsg
   2743 EA                  488 	mov	a,r2
   2744 F0                  489 	movx	@dptr,a
                            490 ;	SERIAL.c:49: if(rxMsg == ' ')
   2745 BA 20 04            491 	cjne	r2,#0x20,00104$
                            492 ;	SERIAL.c:50: return 0;
   2748 75 82 00            493 	mov	dpl,#0x00
                            494 ;	SERIAL.c:53: return 1;
   274B 22                  495 	ret
   274C                     496 00104$:
   274C 75 82 01            497 	mov	dpl,#0x01
   274F 22                  498 	ret
                            499 ;------------------------------------------------------------
                            500 ;Allocation info for local variables in function 'serialControl'
                            501 ;------------------------------------------------------------
                            502 ;sloc0                     Allocated with name '_serialControl_sloc0_1_0'
                            503 ;sloc1                     Allocated with name '_serialControl_sloc1_1_0'
                            504 ;sloc2                     Allocated with name '_serialControl_sloc2_1_0'
                            505 ;sloc3                     Allocated with name '_serialControl_sloc3_1_0'
                            506 ;map                       Allocated with name '_serialControl_PARM_2'
                            507 ;scmap                     Allocated with name '_serialControl_scmap_1_1'
                            508 ;logic_op                  Allocated with name '_serialControl_logic_op_1_1'
                            509 ;------------------------------------------------------------
                            510 ;	SERIAL.c:56: unsigned char serialControl(struct SChar scmap[8],struct Map map[4][16]){
                            511 ;	-----------------------------------------
                            512 ;	 function serialControl
                            513 ;	-----------------------------------------
   2750                     514 _serialControl:
   2750 AA F0               515 	mov	r2,b
   2752 AB 83               516 	mov	r3,dph
   2754 E5 82               517 	mov	a,dpl
   2756 90 03 80            518 	mov	dptr,#_serialControl_scmap_1_1
   2759 F0                  519 	movx	@dptr,a
   275A A3                  520 	inc	dptr
   275B EB                  521 	mov	a,r3
   275C F0                  522 	movx	@dptr,a
   275D A3                  523 	inc	dptr
   275E EA                  524 	mov	a,r2
   275F F0                  525 	movx	@dptr,a
                            526 ;	SERIAL.c:58: unsigned char logic_op = 1;
   2760 90 03 83            527 	mov	dptr,#_serialControl_logic_op_1_1
   2763 74 01               528 	mov	a,#0x01
   2765 F0                  529 	movx	@dptr,a
                            530 ;	SERIAL.c:60: LCD_putSCharAt(player->sline,player->scol, player->line,player->col);
   2766 90 03 74            531 	mov	dptr,#_player
   2769 E0                  532 	movx	a,@dptr
   276A FA                  533 	mov	r2,a
   276B A3                  534 	inc	dptr
   276C E0                  535 	movx	a,@dptr
   276D FB                  536 	mov	r3,a
   276E A3                  537 	inc	dptr
   276F E0                  538 	movx	a,@dptr
   2770 FC                  539 	mov	r4,a
   2771 8A 82               540 	mov	dpl,r2
   2773 8B 83               541 	mov	dph,r3
   2775 8C F0               542 	mov	b,r4
   2777 12 34 33            543 	lcall	__gptrget
   277A FD                  544 	mov	r5,a
   277B 74 01               545 	mov	a,#0x01
   277D 2A                  546 	add	a,r2
   277E FE                  547 	mov	r6,a
   277F E4                  548 	clr	a
   2780 3B                  549 	addc	a,r3
   2781 FF                  550 	mov	r7,a
   2782 8C 00               551 	mov	ar0,r4
   2784 8E 82               552 	mov	dpl,r6
   2786 8F 83               553 	mov	dph,r7
   2788 88 F0               554 	mov	b,r0
   278A 12 34 33            555 	lcall	__gptrget
   278D FE                  556 	mov	r6,a
   278E 74 02               557 	mov	a,#0x02
   2790 2A                  558 	add	a,r2
   2791 FF                  559 	mov	r7,a
   2792 E4                  560 	clr	a
   2793 3B                  561 	addc	a,r3
   2794 F8                  562 	mov	r0,a
   2795 8C 01               563 	mov	ar1,r4
   2797 8F 82               564 	mov	dpl,r7
   2799 88 83               565 	mov	dph,r0
   279B 89 F0               566 	mov	b,r1
   279D 12 34 33            567 	lcall	__gptrget
   27A0 FF                  568 	mov	r7,a
   27A1 74 03               569 	mov	a,#0x03
   27A3 2A                  570 	add	a,r2
   27A4 FA                  571 	mov	r2,a
   27A5 E4                  572 	clr	a
   27A6 3B                  573 	addc	a,r3
   27A7 FB                  574 	mov	r3,a
   27A8 8A 82               575 	mov	dpl,r2
   27AA 8B 83               576 	mov	dph,r3
   27AC 8C F0               577 	mov	b,r4
   27AE 12 34 33            578 	lcall	__gptrget
   27B1 FA                  579 	mov	r2,a
   27B2 90 02 C7            580 	mov	dptr,#_LCD_putSCharAt_PARM_2
   27B5 EE                  581 	mov	a,r6
   27B6 F0                  582 	movx	@dptr,a
   27B7 90 02 C8            583 	mov	dptr,#_LCD_putSCharAt_PARM_3
   27BA EF                  584 	mov	a,r7
   27BB F0                  585 	movx	@dptr,a
   27BC 90 02 C9            586 	mov	dptr,#_LCD_putSCharAt_PARM_4
   27BF EA                  587 	mov	a,r2
   27C0 F0                  588 	movx	@dptr,a
   27C1 8D 82               589 	mov	dpl,r5
   27C3 12 21 CF            590 	lcall	_LCD_putSCharAt
                            591 ;	SERIAL.c:62: if(RI){
   27C6 20 98 03            592 	jb	_RI,00214$
   27C9 02 32 03            593 	ljmp	00178$
   27CC                     594 00214$:
                            595 ;	SERIAL.c:63: rxMsg = receiver();
   27CC 12 27 01            596 	lcall	_receiver
   27CF AA 82               597 	mov	r2,dpl
   27D1 90 09 07            598 	mov	dptr,#_rxMsg
   27D4 EA                  599 	mov	a,r2
   27D5 F0                  600 	movx	@dptr,a
                            601 ;	SERIAL.c:65: if(rxMsg == 'w' || rxMsg == 'W'){		
   27D6 BA 77 02            602 	cjne	r2,#0x77,00215$
   27D9 80 08               603 	sjmp	00173$
   27DB                     604 00215$:
   27DB BA 57 02            605 	cjne	r2,#0x57,00216$
   27DE 80 03               606 	sjmp	00217$
   27E0                     607 00216$:
   27E0 02 2A 79            608 	ljmp	00174$
   27E3                     609 00217$:
   27E3                     610 00173$:
                            611 ;	SERIAL.c:67: if((player->sline - 1) >0)
   27E3 90 03 74            612 	mov	dptr,#_player
   27E6 E0                  613 	movx	a,@dptr
   27E7 FB                  614 	mov	r3,a
   27E8 A3                  615 	inc	dptr
   27E9 E0                  616 	movx	a,@dptr
   27EA FC                  617 	mov	r4,a
   27EB A3                  618 	inc	dptr
   27EC E0                  619 	movx	a,@dptr
   27ED FD                  620 	mov	r5,a
   27EE 8B 82               621 	mov	dpl,r3
   27F0 8C 83               622 	mov	dph,r4
   27F2 8D F0               623 	mov	b,r5
   27F4 12 34 33            624 	lcall	__gptrget
   27F7 FE                  625 	mov	r6,a
   27F8 FF                  626 	mov	r7,a
   27F9 78 00               627 	mov	r0,#0x00
   27FB 1F                  628 	dec	r7
   27FC BF FF 01            629 	cjne	r7,#0xff,00218$
   27FF 18                  630 	dec	r0
   2800                     631 00218$:
   2800 C3                  632 	clr	c
   2801 E4                  633 	clr	a
   2802 9F                  634 	subb	a,r7
   2803 74 80               635 	mov	a,#(0x00 ^ 0x80)
   2805 88 F0               636 	mov	b,r0
   2807 63 F0 80            637 	xrl	b,#0x80
   280A 95 F0               638 	subb	a,b
   280C 40 03               639 	jc	00219$
   280E 02 28 FB            640 	ljmp	00109$
   2811                     641 00219$:
                            642 ;	SERIAL.c:68: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-2] & (pow(2,5-player->scol));
   2811 74 02               643 	mov	a,#0x02
   2813 2B                  644 	add	a,r3
   2814 FF                  645 	mov	r7,a
   2815 E4                  646 	clr	a
   2816 3C                  647 	addc	a,r4
   2817 F8                  648 	mov	r0,a
   2818 8D 01               649 	mov	ar1,r5
   281A 8F 82               650 	mov	dpl,r7
   281C 88 83               651 	mov	dph,r0
   281E 89 F0               652 	mov	b,r1
   2820 12 34 33            653 	lcall	__gptrget
   2823 78 00               654 	mov	r0,#0x00
   2825 24 FF               655 	add	a,#0xff
   2827 F5 10               656 	mov	_serialControl_sloc0_1_0,a
   2829 E8                  657 	mov	a,r0
   282A 34 FF               658 	addc	a,#0xff
   282C F5 11               659 	mov	(_serialControl_sloc0_1_0 + 1),a
   282E 90 03 7D            660 	mov	dptr,#_serialControl_PARM_2
   2831 E0                  661 	movx	a,@dptr
   2832 F5 12               662 	mov	_serialControl_sloc1_1_0,a
   2834 A3                  663 	inc	dptr
   2835 E0                  664 	movx	a,@dptr
   2836 F5 13               665 	mov	(_serialControl_sloc1_1_0 + 1),a
   2838 A3                  666 	inc	dptr
   2839 E0                  667 	movx	a,@dptr
   283A F5 14               668 	mov	(_serialControl_sloc1_1_0 + 2),a
   283C AF 10               669 	mov	r7,_serialControl_sloc0_1_0
   283E E5 11               670 	mov	a,(_serialControl_sloc0_1_0 + 1)
   2840 C4                  671 	swap	a
   2841 54 F0               672 	anl	a,#0xf0
   2843 CF                  673 	xch	a,r7
   2844 C4                  674 	swap	a
   2845 CF                  675 	xch	a,r7
   2846 6F                  676 	xrl	a,r7
   2847 CF                  677 	xch	a,r7
   2848 54 F0               678 	anl	a,#0xf0
   284A CF                  679 	xch	a,r7
   284B 6F                  680 	xrl	a,r7
   284C F8                  681 	mov	r0,a
   284D EF                  682 	mov	a,r7
   284E 25 12               683 	add	a,_serialControl_sloc1_1_0
   2850 F5 12               684 	mov	_serialControl_sloc1_1_0,a
   2852 E8                  685 	mov	a,r0
   2853 35 13               686 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2855 F5 13               687 	mov	(_serialControl_sloc1_1_0 + 1),a
   2857 74 03               688 	mov	a,#0x03
   2859 2B                  689 	add	a,r3
   285A FF                  690 	mov	r7,a
   285B E4                  691 	clr	a
   285C 3C                  692 	addc	a,r4
   285D F8                  693 	mov	r0,a
   285E 8D 01               694 	mov	ar1,r5
   2860 8F 82               695 	mov	dpl,r7
   2862 88 83               696 	mov	dph,r0
   2864 89 F0               697 	mov	b,r1
   2866 12 34 33            698 	lcall	__gptrget
   2869 14                  699 	dec	a
   286A 25 12               700 	add	a,_serialControl_sloc1_1_0
   286C FF                  701 	mov	r7,a
   286D E4                  702 	clr	a
   286E 35 13               703 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2870 F8                  704 	mov	r0,a
   2871 A9 14               705 	mov	r1,(_serialControl_sloc1_1_0 + 2)
   2873 8F 82               706 	mov	dpl,r7
   2875 88 83               707 	mov	dph,r0
   2877 89 F0               708 	mov	b,r1
   2879 12 34 33            709 	lcall	__gptrget
   287C FF                  710 	mov	r7,a
   287D 33                  711 	rlc	a
   287E 95 E0               712 	subb	a,acc
   2880 F8                  713 	mov	r0,a
   2881 EF                  714 	mov	a,r7
   2882 24 FF               715 	add	a,#0xff
   2884 F5 12               716 	mov	_serialControl_sloc1_1_0,a
   2886 E8                  717 	mov	a,r0
   2887 34 FF               718 	addc	a,#0xff
   2889 F5 13               719 	mov	(_serialControl_sloc1_1_0 + 1),a
   288B 90 03 80            720 	mov	dptr,#_serialControl_scmap_1_1
   288E E0                  721 	movx	a,@dptr
   288F F5 15               722 	mov	_serialControl_sloc2_1_0,a
   2891 A3                  723 	inc	dptr
   2892 E0                  724 	movx	a,@dptr
   2893 F5 16               725 	mov	(_serialControl_sloc2_1_0 + 1),a
   2895 A3                  726 	inc	dptr
   2896 E0                  727 	movx	a,@dptr
   2897 F5 17               728 	mov	(_serialControl_sloc2_1_0 + 2),a
   2899 AF 12               729 	mov	r7,_serialControl_sloc1_1_0
   289B E5 13               730 	mov	a,(_serialControl_sloc1_1_0 + 1)
   289D C4                  731 	swap	a
   289E 03                  732 	rr	a
   289F 54 F8               733 	anl	a,#0xf8
   28A1 CF                  734 	xch	a,r7
   28A2 C4                  735 	swap	a
   28A3 03                  736 	rr	a
   28A4 CF                  737 	xch	a,r7
   28A5 6F                  738 	xrl	a,r7
   28A6 CF                  739 	xch	a,r7
   28A7 54 F8               740 	anl	a,#0xf8
   28A9 CF                  741 	xch	a,r7
   28AA 6F                  742 	xrl	a,r7
   28AB F8                  743 	mov	r0,a
   28AC EF                  744 	mov	a,r7
   28AD 25 15               745 	add	a,_serialControl_sloc2_1_0
   28AF FF                  746 	mov	r7,a
   28B0 E8                  747 	mov	a,r0
   28B1 35 16               748 	addc	a,(_serialControl_sloc2_1_0 + 1)
   28B3 F8                  749 	mov	r0,a
   28B4 A9 17               750 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   28B6 EE                  751 	mov	a,r6
   28B7 24 FE               752 	add	a,#0xfe
   28B9 2F                  753 	add	a,r7
   28BA F5 15               754 	mov	_serialControl_sloc2_1_0,a
   28BC E4                  755 	clr	a
   28BD 38                  756 	addc	a,r0
   28BE F5 16               757 	mov	(_serialControl_sloc2_1_0 + 1),a
   28C0 89 17               758 	mov	(_serialControl_sloc2_1_0 + 2),r1
   28C2 74 01               759 	mov	a,#0x01
   28C4 2B                  760 	add	a,r3
   28C5 FF                  761 	mov	r7,a
   28C6 E4                  762 	clr	a
   28C7 3C                  763 	addc	a,r4
   28C8 F8                  764 	mov	r0,a
   28C9 8D 01               765 	mov	ar1,r5
   28CB 8F 82               766 	mov	dpl,r7
   28CD 88 83               767 	mov	dph,r0
   28CF 89 F0               768 	mov	b,r1
   28D1 12 34 33            769 	lcall	__gptrget
   28D4 FF                  770 	mov	r7,a
   28D5 90 03 84            771 	mov	dptr,#_pow_PARM_2
   28D8 74 05               772 	mov	a,#0x05
   28DA C3                  773 	clr	c
   28DB 9F                  774 	subb	a,r7
   28DC F0                  775 	movx	@dptr,a
   28DD 75 82 02            776 	mov	dpl,#0x02
   28E0 12 32 07            777 	lcall	_pow
   28E3 AF 82               778 	mov	r7,dpl
   28E5 85 15 82            779 	mov	dpl,_serialControl_sloc2_1_0
   28E8 85 16 83            780 	mov	dph,(_serialControl_sloc2_1_0 + 1)
   28EB 85 17 F0            781 	mov	b,(_serialControl_sloc2_1_0 + 2)
   28EE 12 34 33            782 	lcall	__gptrget
   28F1 F8                  783 	mov	r0,a
   28F2 90 03 83            784 	mov	dptr,#_serialControl_logic_op_1_1
   28F5 EF                  785 	mov	a,r7
   28F6 58                  786 	anl	a,r0
   28F7 F0                  787 	movx	@dptr,a
   28F8 02 2A 15            788 	ljmp	00110$
   28FB                     789 00109$:
                            790 ;	SERIAL.c:69: else if(player->sline == 1 && player->line > 1)
   28FB E4                  791 	clr	a
   28FC BE 01 01            792 	cjne	r6,#0x01,00220$
   28FF 04                  793 	inc	a
   2900                     794 00220$:
   2900 FE                  795 	mov	r6,a
   2901 70 03               796 	jnz	00222$
   2903 02 29 FA            797 	ljmp	00105$
   2906                     798 00222$:
   2906 74 02               799 	mov	a,#0x02
   2908 2B                  800 	add	a,r3
   2909 FF                  801 	mov	r7,a
   290A E4                  802 	clr	a
   290B 3C                  803 	addc	a,r4
   290C F8                  804 	mov	r0,a
   290D 8D 01               805 	mov	ar1,r5
   290F 8F 82               806 	mov	dpl,r7
   2911 88 83               807 	mov	dph,r0
   2913 89 F0               808 	mov	b,r1
   2915 12 34 33            809 	lcall	__gptrget
   2918 FF                  810 	mov  r7,a
   2919 24 FE               811 	add	a,#0xff - 0x01
   291B 40 03               812 	jc	00223$
   291D 02 29 FA            813 	ljmp	00105$
   2920                     814 00223$:
                            815 ;	SERIAL.c:70: logic_op = scmap[(map[player->line-2][player->col-1].schar) - 1].adds[7] & (pow(2,5-player->scol));
   2920 78 00               816 	mov	r0,#0x00
   2922 EF                  817 	mov	a,r7
   2923 24 FE               818 	add	a,#0xfe
   2925 F5 15               819 	mov	_serialControl_sloc2_1_0,a
   2927 E8                  820 	mov	a,r0
   2928 34 FF               821 	addc	a,#0xff
   292A F5 16               822 	mov	(_serialControl_sloc2_1_0 + 1),a
   292C 90 03 7D            823 	mov	dptr,#_serialControl_PARM_2
   292F E0                  824 	movx	a,@dptr
   2930 F5 12               825 	mov	_serialControl_sloc1_1_0,a
   2932 A3                  826 	inc	dptr
   2933 E0                  827 	movx	a,@dptr
   2934 F5 13               828 	mov	(_serialControl_sloc1_1_0 + 1),a
   2936 A3                  829 	inc	dptr
   2937 E0                  830 	movx	a,@dptr
   2938 F5 14               831 	mov	(_serialControl_sloc1_1_0 + 2),a
   293A AF 15               832 	mov	r7,_serialControl_sloc2_1_0
   293C E5 16               833 	mov	a,(_serialControl_sloc2_1_0 + 1)
   293E C4                  834 	swap	a
   293F 54 F0               835 	anl	a,#0xf0
   2941 CF                  836 	xch	a,r7
   2942 C4                  837 	swap	a
   2943 CF                  838 	xch	a,r7
   2944 6F                  839 	xrl	a,r7
   2945 CF                  840 	xch	a,r7
   2946 54 F0               841 	anl	a,#0xf0
   2948 CF                  842 	xch	a,r7
   2949 6F                  843 	xrl	a,r7
   294A F8                  844 	mov	r0,a
   294B EF                  845 	mov	a,r7
   294C 25 12               846 	add	a,_serialControl_sloc1_1_0
   294E F5 15               847 	mov	_serialControl_sloc2_1_0,a
   2950 E8                  848 	mov	a,r0
   2951 35 13               849 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2953 F5 16               850 	mov	(_serialControl_sloc2_1_0 + 1),a
   2955 85 14 17            851 	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
   2958 74 03               852 	mov	a,#0x03
   295A 2B                  853 	add	a,r3
   295B FF                  854 	mov	r7,a
   295C E4                  855 	clr	a
   295D 3C                  856 	addc	a,r4
   295E F8                  857 	mov	r0,a
   295F 8D 01               858 	mov	ar1,r5
   2961 8F 82               859 	mov	dpl,r7
   2963 88 83               860 	mov	dph,r0
   2965 89 F0               861 	mov	b,r1
   2967 12 34 33            862 	lcall	__gptrget
   296A 14                  863 	dec	a
   296B 25 15               864 	add	a,_serialControl_sloc2_1_0
   296D FF                  865 	mov	r7,a
   296E E4                  866 	clr	a
   296F 35 16               867 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2971 F8                  868 	mov	r0,a
   2972 A9 17               869 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   2974 8F 82               870 	mov	dpl,r7
   2976 88 83               871 	mov	dph,r0
   2978 89 F0               872 	mov	b,r1
   297A 12 34 33            873 	lcall	__gptrget
   297D FF                  874 	mov	r7,a
   297E 33                  875 	rlc	a
   297F 95 E0               876 	subb	a,acc
   2981 F8                  877 	mov	r0,a
   2982 EF                  878 	mov	a,r7
   2983 24 FF               879 	add	a,#0xff
   2985 F5 15               880 	mov	_serialControl_sloc2_1_0,a
   2987 E8                  881 	mov	a,r0
   2988 34 FF               882 	addc	a,#0xff
   298A F5 16               883 	mov	(_serialControl_sloc2_1_0 + 1),a
   298C 90 03 80            884 	mov	dptr,#_serialControl_scmap_1_1
   298F E0                  885 	movx	a,@dptr
   2990 F5 12               886 	mov	_serialControl_sloc1_1_0,a
   2992 A3                  887 	inc	dptr
   2993 E0                  888 	movx	a,@dptr
   2994 F5 13               889 	mov	(_serialControl_sloc1_1_0 + 1),a
   2996 A3                  890 	inc	dptr
   2997 E0                  891 	movx	a,@dptr
   2998 F5 14               892 	mov	(_serialControl_sloc1_1_0 + 2),a
   299A AF 15               893 	mov	r7,_serialControl_sloc2_1_0
   299C E5 16               894 	mov	a,(_serialControl_sloc2_1_0 + 1)
   299E C4                  895 	swap	a
   299F 03                  896 	rr	a
   29A0 54 F8               897 	anl	a,#0xf8
   29A2 CF                  898 	xch	a,r7
   29A3 C4                  899 	swap	a
   29A4 03                  900 	rr	a
   29A5 CF                  901 	xch	a,r7
   29A6 6F                  902 	xrl	a,r7
   29A7 CF                  903 	xch	a,r7
   29A8 54 F8               904 	anl	a,#0xf8
   29AA CF                  905 	xch	a,r7
   29AB 6F                  906 	xrl	a,r7
   29AC F8                  907 	mov	r0,a
   29AD EF                  908 	mov	a,r7
   29AE 25 12               909 	add	a,_serialControl_sloc1_1_0
   29B0 FF                  910 	mov	r7,a
   29B1 E8                  911 	mov	a,r0
   29B2 35 13               912 	addc	a,(_serialControl_sloc1_1_0 + 1)
   29B4 F8                  913 	mov	r0,a
   29B5 A9 14               914 	mov	r1,(_serialControl_sloc1_1_0 + 2)
   29B7 74 07               915 	mov	a,#0x07
   29B9 2F                  916 	add	a,r7
   29BA F5 15               917 	mov	_serialControl_sloc2_1_0,a
   29BC E4                  918 	clr	a
   29BD 38                  919 	addc	a,r0
   29BE F5 16               920 	mov	(_serialControl_sloc2_1_0 + 1),a
   29C0 89 17               921 	mov	(_serialControl_sloc2_1_0 + 2),r1
   29C2 74 01               922 	mov	a,#0x01
   29C4 2B                  923 	add	a,r3
   29C5 FF                  924 	mov	r7,a
   29C6 E4                  925 	clr	a
   29C7 3C                  926 	addc	a,r4
   29C8 F8                  927 	mov	r0,a
   29C9 8D 01               928 	mov	ar1,r5
   29CB 8F 82               929 	mov	dpl,r7
   29CD 88 83               930 	mov	dph,r0
   29CF 89 F0               931 	mov	b,r1
   29D1 12 34 33            932 	lcall	__gptrget
   29D4 FF                  933 	mov	r7,a
   29D5 90 03 84            934 	mov	dptr,#_pow_PARM_2
   29D8 74 05               935 	mov	a,#0x05
   29DA C3                  936 	clr	c
   29DB 9F                  937 	subb	a,r7
   29DC F0                  938 	movx	@dptr,a
   29DD 75 82 02            939 	mov	dpl,#0x02
   29E0 12 32 07            940 	lcall	_pow
   29E3 AF 82               941 	mov	r7,dpl
   29E5 85 15 82            942 	mov	dpl,_serialControl_sloc2_1_0
   29E8 85 16 83            943 	mov	dph,(_serialControl_sloc2_1_0 + 1)
   29EB 85 17 F0            944 	mov	b,(_serialControl_sloc2_1_0 + 2)
   29EE 12 34 33            945 	lcall	__gptrget
   29F1 F8                  946 	mov	r0,a
   29F2 90 03 83            947 	mov	dptr,#_serialControl_logic_op_1_1
   29F5 EF                  948 	mov	a,r7
   29F6 58                  949 	anl	a,r0
   29F7 F0                  950 	movx	@dptr,a
   29F8 80 1B               951 	sjmp	00110$
   29FA                     952 00105$:
                            953 ;	SERIAL.c:71: else if(player->sline == 1 && player->line == 1 )
   29FA EE                  954 	mov	a,r6
   29FB 60 18               955 	jz	00110$
   29FD 74 02               956 	mov	a,#0x02
   29FF 2B                  957 	add	a,r3
   2A00 FB                  958 	mov	r3,a
   2A01 E4                  959 	clr	a
   2A02 3C                  960 	addc	a,r4
   2A03 FC                  961 	mov	r4,a
   2A04 8B 82               962 	mov	dpl,r3
   2A06 8C 83               963 	mov	dph,r4
   2A08 8D F0               964 	mov	b,r5
   2A0A 12 34 33            965 	lcall	__gptrget
   2A0D FB                  966 	mov	r3,a
   2A0E BB 01 04            967 	cjne	r3,#0x01,00110$
                            968 ;	SERIAL.c:72: return 0;
   2A11 75 82 00            969 	mov	dpl,#0x00
   2A14 22                  970 	ret
   2A15                     971 00110$:
                            972 ;	SERIAL.c:75: if(logic_op == 0){
   2A15 90 03 83            973 	mov	dptr,#_serialControl_logic_op_1_1
   2A18 E0                  974 	movx	a,@dptr
   2A19 FB                  975 	mov	r3,a
   2A1A 60 03               976 	jz	00227$
   2A1C 02 31 FE            977 	ljmp	00175$
   2A1F                     978 00227$:
                            979 ;	SERIAL.c:76: if(player->sline != 1)
   2A1F 90 03 74            980 	mov	dptr,#_player
   2A22 E0                  981 	movx	a,@dptr
   2A23 FB                  982 	mov	r3,a
   2A24 A3                  983 	inc	dptr
   2A25 E0                  984 	movx	a,@dptr
   2A26 FC                  985 	mov	r4,a
   2A27 A3                  986 	inc	dptr
   2A28 E0                  987 	movx	a,@dptr
   2A29 FD                  988 	mov	r5,a
   2A2A 8B 82               989 	mov	dpl,r3
   2A2C 8C 83               990 	mov	dph,r4
   2A2E 8D F0               991 	mov	b,r5
   2A30 12 34 33            992 	lcall	__gptrget
   2A33 FE                  993 	mov	r6,a
   2A34 BE 01 02            994 	cjne	r6,#0x01,00228$
   2A37 80 0E               995 	sjmp	00114$
   2A39                     996 00228$:
                            997 ;	SERIAL.c:77: player->sline--;
   2A39 1E                  998 	dec	r6
   2A3A 8B 82               999 	mov	dpl,r3
   2A3C 8C 83              1000 	mov	dph,r4
   2A3E 8D F0              1001 	mov	b,r5
   2A40 EE                 1002 	mov	a,r6
   2A41 12 32 D5           1003 	lcall	__gptrput
   2A44 02 31 FE           1004 	ljmp	00175$
   2A47                    1005 00114$:
                           1006 ;	SERIAL.c:79: if(player->line != 1){
   2A47 74 02              1007 	mov	a,#0x02
   2A49 2B                 1008 	add	a,r3
   2A4A FE                 1009 	mov	r6,a
   2A4B E4                 1010 	clr	a
   2A4C 3C                 1011 	addc	a,r4
   2A4D FF                 1012 	mov	r7,a
   2A4E 8D 00              1013 	mov	ar0,r5
   2A50 8E 82              1014 	mov	dpl,r6
   2A52 8F 83              1015 	mov	dph,r7
   2A54 88 F0              1016 	mov	b,r0
   2A56 12 34 33           1017 	lcall	__gptrget
   2A59 F9                 1018 	mov	r1,a
   2A5A B9 01 03           1019 	cjne	r1,#0x01,00229$
   2A5D 02 31 FE           1020 	ljmp	00175$
   2A60                    1021 00229$:
                           1022 ;	SERIAL.c:80: player->sline = 8;
   2A60 8B 82              1023 	mov	dpl,r3
   2A62 8C 83              1024 	mov	dph,r4
   2A64 8D F0              1025 	mov	b,r5
   2A66 74 08              1026 	mov	a,#0x08
   2A68 12 32 D5           1027 	lcall	__gptrput
                           1028 ;	SERIAL.c:81: player->line--;
   2A6B 19                 1029 	dec	r1
   2A6C 8E 82              1030 	mov	dpl,r6
   2A6E 8F 83              1031 	mov	dph,r7
   2A70 88 F0              1032 	mov	b,r0
   2A72 E9                 1033 	mov	a,r1
   2A73 12 32 D5           1034 	lcall	__gptrput
   2A76 02 31 FE           1035 	ljmp	00175$
   2A79                    1036 00174$:
                           1037 ;	SERIAL.c:89: else if(rxMsg == 's' || rxMsg == 'S'){
   2A79 BA 73 02           1038 	cjne	r2,#0x73,00230$
   2A7C 80 08              1039 	sjmp	00169$
   2A7E                    1040 00230$:
   2A7E BA 53 02           1041 	cjne	r2,#0x53,00231$
   2A81 80 03              1042 	sjmp	00232$
   2A83                    1043 00231$:
   2A83 02 2C C5           1044 	ljmp	00170$
   2A86                    1045 00232$:
   2A86                    1046 00169$:
                           1047 ;	SERIAL.c:92: if((player->sline-1) < 7)
   2A86 90 03 74           1048 	mov	dptr,#_player
   2A89 E0                 1049 	movx	a,@dptr
   2A8A FB                 1050 	mov	r3,a
   2A8B A3                 1051 	inc	dptr
   2A8C E0                 1052 	movx	a,@dptr
   2A8D FC                 1053 	mov	r4,a
   2A8E A3                 1054 	inc	dptr
   2A8F E0                 1055 	movx	a,@dptr
   2A90 FD                 1056 	mov	r5,a
   2A91 8B 82              1057 	mov	dpl,r3
   2A93 8C 83              1058 	mov	dph,r4
   2A95 8D F0              1059 	mov	b,r5
   2A97 12 34 33           1060 	lcall	__gptrget
   2A9A FE                 1061 	mov	r6,a
   2A9B FF                 1062 	mov	r7,a
   2A9C 78 00              1063 	mov	r0,#0x00
   2A9E 1F                 1064 	dec	r7
   2A9F BF FF 01           1065 	cjne	r7,#0xff,00233$
   2AA2 18                 1066 	dec	r0
   2AA3                    1067 00233$:
   2AA3 C3                 1068 	clr	c
   2AA4 EF                 1069 	mov	a,r7
   2AA5 94 07              1070 	subb	a,#0x07
   2AA7 E8                 1071 	mov	a,r0
   2AA8 64 80              1072 	xrl	a,#0x80
   2AAA 94 80              1073 	subb	a,#0x80
   2AAC 40 03              1074 	jc	00234$
   2AAE 02 2B 9C           1075 	ljmp	00119$
   2AB1                    1076 00234$:
                           1077 ;	SERIAL.c:93: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline] & (pow(2,5-player->scol));
   2AB1 74 02              1078 	mov	a,#0x02
   2AB3 2B                 1079 	add	a,r3
   2AB4 FF                 1080 	mov	r7,a
   2AB5 E4                 1081 	clr	a
   2AB6 3C                 1082 	addc	a,r4
   2AB7 F8                 1083 	mov	r0,a
   2AB8 8D 01              1084 	mov	ar1,r5
   2ABA 8F 82              1085 	mov	dpl,r7
   2ABC 88 83              1086 	mov	dph,r0
   2ABE 89 F0              1087 	mov	b,r1
   2AC0 12 34 33           1088 	lcall	__gptrget
   2AC3 78 00              1089 	mov	r0,#0x00
   2AC5 24 FF              1090 	add	a,#0xff
   2AC7 F5 15              1091 	mov	_serialControl_sloc2_1_0,a
   2AC9 E8                 1092 	mov	a,r0
   2ACA 34 FF              1093 	addc	a,#0xff
   2ACC F5 16              1094 	mov	(_serialControl_sloc2_1_0 + 1),a
   2ACE 90 03 7D           1095 	mov	dptr,#_serialControl_PARM_2
   2AD1 E0                 1096 	movx	a,@dptr
   2AD2 F5 12              1097 	mov	_serialControl_sloc1_1_0,a
   2AD4 A3                 1098 	inc	dptr
   2AD5 E0                 1099 	movx	a,@dptr
   2AD6 F5 13              1100 	mov	(_serialControl_sloc1_1_0 + 1),a
   2AD8 A3                 1101 	inc	dptr
   2AD9 E0                 1102 	movx	a,@dptr
   2ADA F5 14              1103 	mov	(_serialControl_sloc1_1_0 + 2),a
   2ADC AF 15              1104 	mov	r7,_serialControl_sloc2_1_0
   2ADE E5 16              1105 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2AE0 C4                 1106 	swap	a
   2AE1 54 F0              1107 	anl	a,#0xf0
   2AE3 CF                 1108 	xch	a,r7
   2AE4 C4                 1109 	swap	a
   2AE5 CF                 1110 	xch	a,r7
   2AE6 6F                 1111 	xrl	a,r7
   2AE7 CF                 1112 	xch	a,r7
   2AE8 54 F0              1113 	anl	a,#0xf0
   2AEA CF                 1114 	xch	a,r7
   2AEB 6F                 1115 	xrl	a,r7
   2AEC F8                 1116 	mov	r0,a
   2AED EF                 1117 	mov	a,r7
   2AEE 25 12              1118 	add	a,_serialControl_sloc1_1_0
   2AF0 F5 15              1119 	mov	_serialControl_sloc2_1_0,a
   2AF2 E8                 1120 	mov	a,r0
   2AF3 35 13              1121 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2AF5 F5 16              1122 	mov	(_serialControl_sloc2_1_0 + 1),a
   2AF7 85 14 17           1123 	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
   2AFA 74 03              1124 	mov	a,#0x03
   2AFC 2B                 1125 	add	a,r3
   2AFD FF                 1126 	mov	r7,a
   2AFE E4                 1127 	clr	a
   2AFF 3C                 1128 	addc	a,r4
   2B00 F8                 1129 	mov	r0,a
   2B01 8D 01              1130 	mov	ar1,r5
   2B03 8F 82              1131 	mov	dpl,r7
   2B05 88 83              1132 	mov	dph,r0
   2B07 89 F0              1133 	mov	b,r1
   2B09 12 34 33           1134 	lcall	__gptrget
   2B0C 14                 1135 	dec	a
   2B0D 25 15              1136 	add	a,_serialControl_sloc2_1_0
   2B0F FF                 1137 	mov	r7,a
   2B10 E4                 1138 	clr	a
   2B11 35 16              1139 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2B13 F8                 1140 	mov	r0,a
   2B14 A9 17              1141 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   2B16 8F 82              1142 	mov	dpl,r7
   2B18 88 83              1143 	mov	dph,r0
   2B1A 89 F0              1144 	mov	b,r1
   2B1C 12 34 33           1145 	lcall	__gptrget
   2B1F FF                 1146 	mov	r7,a
   2B20 33                 1147 	rlc	a
   2B21 95 E0              1148 	subb	a,acc
   2B23 F8                 1149 	mov	r0,a
   2B24 EF                 1150 	mov	a,r7
   2B25 24 FF              1151 	add	a,#0xff
   2B27 F5 15              1152 	mov	_serialControl_sloc2_1_0,a
   2B29 E8                 1153 	mov	a,r0
   2B2A 34 FF              1154 	addc	a,#0xff
   2B2C F5 16              1155 	mov	(_serialControl_sloc2_1_0 + 1),a
   2B2E 90 03 80           1156 	mov	dptr,#_serialControl_scmap_1_1
   2B31 E0                 1157 	movx	a,@dptr
   2B32 F5 12              1158 	mov	_serialControl_sloc1_1_0,a
   2B34 A3                 1159 	inc	dptr
   2B35 E0                 1160 	movx	a,@dptr
   2B36 F5 13              1161 	mov	(_serialControl_sloc1_1_0 + 1),a
   2B38 A3                 1162 	inc	dptr
   2B39 E0                 1163 	movx	a,@dptr
   2B3A F5 14              1164 	mov	(_serialControl_sloc1_1_0 + 2),a
   2B3C AF 15              1165 	mov	r7,_serialControl_sloc2_1_0
   2B3E E5 16              1166 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2B40 C4                 1167 	swap	a
   2B41 03                 1168 	rr	a
   2B42 54 F8              1169 	anl	a,#0xf8
   2B44 CF                 1170 	xch	a,r7
   2B45 C4                 1171 	swap	a
   2B46 03                 1172 	rr	a
   2B47 CF                 1173 	xch	a,r7
   2B48 6F                 1174 	xrl	a,r7
   2B49 CF                 1175 	xch	a,r7
   2B4A 54 F8              1176 	anl	a,#0xf8
   2B4C CF                 1177 	xch	a,r7
   2B4D 6F                 1178 	xrl	a,r7
   2B4E F8                 1179 	mov	r0,a
   2B4F EF                 1180 	mov	a,r7
   2B50 25 12              1181 	add	a,_serialControl_sloc1_1_0
   2B52 FF                 1182 	mov	r7,a
   2B53 E8                 1183 	mov	a,r0
   2B54 35 13              1184 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2B56 F8                 1185 	mov	r0,a
   2B57 A9 14              1186 	mov	r1,(_serialControl_sloc1_1_0 + 2)
   2B59 EE                 1187 	mov	a,r6
   2B5A 2F                 1188 	add	a,r7
   2B5B F5 15              1189 	mov	_serialControl_sloc2_1_0,a
   2B5D E4                 1190 	clr	a
   2B5E 38                 1191 	addc	a,r0
   2B5F F5 16              1192 	mov	(_serialControl_sloc2_1_0 + 1),a
   2B61 89 17              1193 	mov	(_serialControl_sloc2_1_0 + 2),r1
   2B63 74 01              1194 	mov	a,#0x01
   2B65 2B                 1195 	add	a,r3
   2B66 FE                 1196 	mov	r6,a
   2B67 E4                 1197 	clr	a
   2B68 3C                 1198 	addc	a,r4
   2B69 FF                 1199 	mov	r7,a
   2B6A 8D 00              1200 	mov	ar0,r5
   2B6C 8E 82              1201 	mov	dpl,r6
   2B6E 8F 83              1202 	mov	dph,r7
   2B70 88 F0              1203 	mov	b,r0
   2B72 12 34 33           1204 	lcall	__gptrget
   2B75 FE                 1205 	mov	r6,a
   2B76 90 03 84           1206 	mov	dptr,#_pow_PARM_2
   2B79 74 05              1207 	mov	a,#0x05
   2B7B C3                 1208 	clr	c
   2B7C 9E                 1209 	subb	a,r6
   2B7D F0                 1210 	movx	@dptr,a
   2B7E 75 82 02           1211 	mov	dpl,#0x02
   2B81 12 32 07           1212 	lcall	_pow
   2B84 AE 82              1213 	mov	r6,dpl
   2B86 85 15 82           1214 	mov	dpl,_serialControl_sloc2_1_0
   2B89 85 16 83           1215 	mov	dph,(_serialControl_sloc2_1_0 + 1)
   2B8C 85 17 F0           1216 	mov	b,(_serialControl_sloc2_1_0 + 2)
   2B8F 12 34 33           1217 	lcall	__gptrget
   2B92 FF                 1218 	mov	r7,a
   2B93 90 03 83           1219 	mov	dptr,#_serialControl_logic_op_1_1
   2B96 EE                 1220 	mov	a,r6
   2B97 5F                 1221 	anl	a,r7
   2B98 F0                 1222 	movx	@dptr,a
   2B99 02 2C 61           1223 	ljmp	00120$
   2B9C                    1224 00119$:
                           1225 ;	SERIAL.c:95: logic_op = scmap[(map[player->line][player->col-1].schar) - 1].adds[0] & (pow(2,5-player->scol));	
   2B9C 74 02              1226 	mov	a,#0x02
   2B9E 2B                 1227 	add	a,r3
   2B9F FE                 1228 	mov	r6,a
   2BA0 E4                 1229 	clr	a
   2BA1 3C                 1230 	addc	a,r4
   2BA2 FF                 1231 	mov	r7,a
   2BA3 8D 00              1232 	mov	ar0,r5
   2BA5 8E 82              1233 	mov	dpl,r6
   2BA7 8F 83              1234 	mov	dph,r7
   2BA9 88 F0              1235 	mov	b,r0
   2BAB 12 34 33           1236 	lcall	__gptrget
   2BAE FE                 1237 	mov	r6,a
   2BAF 90 03 7D           1238 	mov	dptr,#_serialControl_PARM_2
   2BB2 E0                 1239 	movx	a,@dptr
   2BB3 FF                 1240 	mov	r7,a
   2BB4 A3                 1241 	inc	dptr
   2BB5 E0                 1242 	movx	a,@dptr
   2BB6 F8                 1243 	mov	r0,a
   2BB7 A3                 1244 	inc	dptr
   2BB8 E0                 1245 	movx	a,@dptr
   2BB9 F9                 1246 	mov	r1,a
   2BBA EE                 1247 	mov	a,r6
   2BBB C4                 1248 	swap	a
   2BBC 54 F0              1249 	anl	a,#0xf0
   2BBE 2F                 1250 	add	a,r7
   2BBF F5 15              1251 	mov	_serialControl_sloc2_1_0,a
   2BC1 E4                 1252 	clr	a
   2BC2 38                 1253 	addc	a,r0
   2BC3 F5 16              1254 	mov	(_serialControl_sloc2_1_0 + 1),a
   2BC5 89 17              1255 	mov	(_serialControl_sloc2_1_0 + 2),r1
   2BC7 74 03              1256 	mov	a,#0x03
   2BC9 2B                 1257 	add	a,r3
   2BCA FE                 1258 	mov	r6,a
   2BCB E4                 1259 	clr	a
   2BCC 3C                 1260 	addc	a,r4
   2BCD FF                 1261 	mov	r7,a
   2BCE 8D 00              1262 	mov	ar0,r5
   2BD0 8E 82              1263 	mov	dpl,r6
   2BD2 8F 83              1264 	mov	dph,r7
   2BD4 88 F0              1265 	mov	b,r0
   2BD6 12 34 33           1266 	lcall	__gptrget
   2BD9 14                 1267 	dec	a
   2BDA 25 15              1268 	add	a,_serialControl_sloc2_1_0
   2BDC FE                 1269 	mov	r6,a
   2BDD E4                 1270 	clr	a
   2BDE 35 16              1271 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2BE0 FF                 1272 	mov	r7,a
   2BE1 A8 17              1273 	mov	r0,(_serialControl_sloc2_1_0 + 2)
   2BE3 8E 82              1274 	mov	dpl,r6
   2BE5 8F 83              1275 	mov	dph,r7
   2BE7 88 F0              1276 	mov	b,r0
   2BE9 12 34 33           1277 	lcall	__gptrget
   2BEC FE                 1278 	mov	r6,a
   2BED 33                 1279 	rlc	a
   2BEE 95 E0              1280 	subb	a,acc
   2BF0 FF                 1281 	mov	r7,a
   2BF1 EE                 1282 	mov	a,r6
   2BF2 24 FF              1283 	add	a,#0xff
   2BF4 F5 15              1284 	mov	_serialControl_sloc2_1_0,a
   2BF6 EF                 1285 	mov	a,r7
   2BF7 34 FF              1286 	addc	a,#0xff
   2BF9 F5 16              1287 	mov	(_serialControl_sloc2_1_0 + 1),a
   2BFB 90 03 80           1288 	mov	dptr,#_serialControl_scmap_1_1
   2BFE E0                 1289 	movx	a,@dptr
   2BFF F5 12              1290 	mov	_serialControl_sloc1_1_0,a
   2C01 A3                 1291 	inc	dptr
   2C02 E0                 1292 	movx	a,@dptr
   2C03 F5 13              1293 	mov	(_serialControl_sloc1_1_0 + 1),a
   2C05 A3                 1294 	inc	dptr
   2C06 E0                 1295 	movx	a,@dptr
   2C07 F5 14              1296 	mov	(_serialControl_sloc1_1_0 + 2),a
   2C09 AF 15              1297 	mov	r7,_serialControl_sloc2_1_0
   2C0B E5 16              1298 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2C0D C4                 1299 	swap	a
   2C0E 03                 1300 	rr	a
   2C0F 54 F8              1301 	anl	a,#0xf8
   2C11 CF                 1302 	xch	a,r7
   2C12 C4                 1303 	swap	a
   2C13 03                 1304 	rr	a
   2C14 CF                 1305 	xch	a,r7
   2C15 6F                 1306 	xrl	a,r7
   2C16 CF                 1307 	xch	a,r7
   2C17 54 F8              1308 	anl	a,#0xf8
   2C19 CF                 1309 	xch	a,r7
   2C1A 6F                 1310 	xrl	a,r7
   2C1B FE                 1311 	mov	r6,a
   2C1C EF                 1312 	mov	a,r7
   2C1D 25 12              1313 	add	a,_serialControl_sloc1_1_0
   2C1F FF                 1314 	mov	r7,a
   2C20 EE                 1315 	mov	a,r6
   2C21 35 13              1316 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2C23 FE                 1317 	mov	r6,a
   2C24 A8 14              1318 	mov	r0,(_serialControl_sloc1_1_0 + 2)
   2C26 0B                 1319 	inc	r3
   2C27 BB 00 01           1320 	cjne	r3,#0x00,00235$
   2C2A 0C                 1321 	inc	r4
   2C2B                    1322 00235$:
   2C2B 8B 82              1323 	mov	dpl,r3
   2C2D 8C 83              1324 	mov	dph,r4
   2C2F 8D F0              1325 	mov	b,r5
   2C31 12 34 33           1326 	lcall	__gptrget
   2C34 FB                 1327 	mov	r3,a
   2C35 90 03 84           1328 	mov	dptr,#_pow_PARM_2
   2C38 74 05              1329 	mov	a,#0x05
   2C3A C3                 1330 	clr	c
   2C3B 9B                 1331 	subb	a,r3
   2C3C F0                 1332 	movx	@dptr,a
   2C3D 75 82 02           1333 	mov	dpl,#0x02
   2C40 C0 06              1334 	push	ar6
   2C42 C0 07              1335 	push	ar7
   2C44 C0 00              1336 	push	ar0
   2C46 12 32 07           1337 	lcall	_pow
   2C49 AB 82              1338 	mov	r3,dpl
   2C4B D0 00              1339 	pop	ar0
   2C4D D0 07              1340 	pop	ar7
   2C4F D0 06              1341 	pop	ar6
   2C51 8F 82              1342 	mov	dpl,r7
   2C53 8E 83              1343 	mov	dph,r6
   2C55 88 F0              1344 	mov	b,r0
   2C57 12 34 33           1345 	lcall	__gptrget
   2C5A FF                 1346 	mov	r7,a
   2C5B 90 03 83           1347 	mov	dptr,#_serialControl_logic_op_1_1
   2C5E EB                 1348 	mov	a,r3
   2C5F 5F                 1349 	anl	a,r7
   2C60 F0                 1350 	movx	@dptr,a
   2C61                    1351 00120$:
                           1352 ;	SERIAL.c:100: if(logic_op == 0){
   2C61 90 03 83           1353 	mov	dptr,#_serialControl_logic_op_1_1
   2C64 E0                 1354 	movx	a,@dptr
   2C65 FB                 1355 	mov	r3,a
   2C66 60 03              1356 	jz	00236$
   2C68 02 31 FE           1357 	ljmp	00175$
   2C6B                    1358 00236$:
                           1359 ;	SERIAL.c:101: if(player->sline != 8)
   2C6B 90 03 74           1360 	mov	dptr,#_player
   2C6E E0                 1361 	movx	a,@dptr
   2C6F FB                 1362 	mov	r3,a
   2C70 A3                 1363 	inc	dptr
   2C71 E0                 1364 	movx	a,@dptr
   2C72 FC                 1365 	mov	r4,a
   2C73 A3                 1366 	inc	dptr
   2C74 E0                 1367 	movx	a,@dptr
   2C75 FD                 1368 	mov	r5,a
   2C76 8B 82              1369 	mov	dpl,r3
   2C78 8C 83              1370 	mov	dph,r4
   2C7A 8D F0              1371 	mov	b,r5
   2C7C 12 34 33           1372 	lcall	__gptrget
   2C7F FE                 1373 	mov	r6,a
   2C80 BE 08 02           1374 	cjne	r6,#0x08,00237$
   2C83 80 0E              1375 	sjmp	00124$
   2C85                    1376 00237$:
                           1377 ;	SERIAL.c:102: player->sline++;
   2C85 0E                 1378 	inc	r6
   2C86 8B 82              1379 	mov	dpl,r3
   2C88 8C 83              1380 	mov	dph,r4
   2C8A 8D F0              1381 	mov	b,r5
   2C8C EE                 1382 	mov	a,r6
   2C8D 12 32 D5           1383 	lcall	__gptrput
   2C90 02 31 FE           1384 	ljmp	00175$
   2C93                    1385 00124$:
                           1386 ;	SERIAL.c:104: if(player->line != 4){
   2C93 74 02              1387 	mov	a,#0x02
   2C95 2B                 1388 	add	a,r3
   2C96 FE                 1389 	mov	r6,a
   2C97 E4                 1390 	clr	a
   2C98 3C                 1391 	addc	a,r4
   2C99 FF                 1392 	mov	r7,a
   2C9A 8D 00              1393 	mov	ar0,r5
   2C9C 8E 82              1394 	mov	dpl,r6
   2C9E 8F 83              1395 	mov	dph,r7
   2CA0 88 F0              1396 	mov	b,r0
   2CA2 12 34 33           1397 	lcall	__gptrget
   2CA5 F9                 1398 	mov	r1,a
   2CA6 B9 04 03           1399 	cjne	r1,#0x04,00238$
   2CA9 02 31 FE           1400 	ljmp	00175$
   2CAC                    1401 00238$:
                           1402 ;	SERIAL.c:105: player->sline = 1;
   2CAC 8B 82              1403 	mov	dpl,r3
   2CAE 8C 83              1404 	mov	dph,r4
   2CB0 8D F0              1405 	mov	b,r5
   2CB2 74 01              1406 	mov	a,#0x01
   2CB4 12 32 D5           1407 	lcall	__gptrput
                           1408 ;	SERIAL.c:106: player->line++;
   2CB7 09                 1409 	inc	r1
   2CB8 8E 82              1410 	mov	dpl,r6
   2CBA 8F 83              1411 	mov	dph,r7
   2CBC 88 F0              1412 	mov	b,r0
   2CBE E9                 1413 	mov	a,r1
   2CBF 12 32 D5           1414 	lcall	__gptrput
   2CC2 02 31 FE           1415 	ljmp	00175$
   2CC5                    1416 00170$:
                           1417 ;	SERIAL.c:115: else if(rxMsg == 'd' || rxMsg == 'D'){
   2CC5 BA 64 02           1418 	cjne	r2,#0x64,00239$
   2CC8 80 08              1419 	sjmp	00165$
   2CCA                    1420 00239$:
   2CCA BA 44 02           1421 	cjne	r2,#0x44,00240$
   2CCD 80 03              1422 	sjmp	00241$
   2CCF                    1423 00240$:
   2CCF 02 2F 62           1424 	ljmp	00166$
   2CD2                    1425 00241$:
   2CD2                    1426 00165$:
                           1427 ;	SERIAL.c:118: if((player->scol+1)<6)
   2CD2 90 03 74           1428 	mov	dptr,#_player
   2CD5 E0                 1429 	movx	a,@dptr
   2CD6 FB                 1430 	mov	r3,a
   2CD7 A3                 1431 	inc	dptr
   2CD8 E0                 1432 	movx	a,@dptr
   2CD9 FC                 1433 	mov	r4,a
   2CDA A3                 1434 	inc	dptr
   2CDB E0                 1435 	movx	a,@dptr
   2CDC FD                 1436 	mov	r5,a
   2CDD 74 01              1437 	mov	a,#0x01
   2CDF 2B                 1438 	add	a,r3
   2CE0 FE                 1439 	mov	r6,a
   2CE1 E4                 1440 	clr	a
   2CE2 3C                 1441 	addc	a,r4
   2CE3 FF                 1442 	mov	r7,a
   2CE4 8D 00              1443 	mov	ar0,r5
   2CE6 8E 82              1444 	mov	dpl,r6
   2CE8 8F 83              1445 	mov	dph,r7
   2CEA 88 F0              1446 	mov	b,r0
   2CEC 12 34 33           1447 	lcall	__gptrget
   2CEF FE                 1448 	mov	r6,a
   2CF0 FF                 1449 	mov	r7,a
   2CF1 78 00              1450 	mov	r0,#0x00
   2CF3 0F                 1451 	inc	r7
   2CF4 BF 00 01           1452 	cjne	r7,#0x00,00242$
   2CF7 08                 1453 	inc	r0
   2CF8                    1454 00242$:
   2CF8 C3                 1455 	clr	c
   2CF9 EF                 1456 	mov	a,r7
   2CFA 94 06              1457 	subb	a,#0x06
   2CFC E8                 1458 	mov	a,r0
   2CFD 64 80              1459 	xrl	a,#0x80
   2CFF 94 80              1460 	subb	a,#0x80
   2D01 40 03              1461 	jc	00243$
   2D03 02 2D EC           1462 	ljmp	00136$
   2D06                    1463 00243$:
                           1464 ;	SERIAL.c:119: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-1] & (pow(2,5-(player->scol+1)));
   2D06 74 02              1465 	mov	a,#0x02
   2D08 2B                 1466 	add	a,r3
   2D09 FF                 1467 	mov	r7,a
   2D0A E4                 1468 	clr	a
   2D0B 3C                 1469 	addc	a,r4
   2D0C F8                 1470 	mov	r0,a
   2D0D 8D 01              1471 	mov	ar1,r5
   2D0F 8F 82              1472 	mov	dpl,r7
   2D11 88 83              1473 	mov	dph,r0
   2D13 89 F0              1474 	mov	b,r1
   2D15 12 34 33           1475 	lcall	__gptrget
   2D18 78 00              1476 	mov	r0,#0x00
   2D1A 24 FF              1477 	add	a,#0xff
   2D1C F5 15              1478 	mov	_serialControl_sloc2_1_0,a
   2D1E E8                 1479 	mov	a,r0
   2D1F 34 FF              1480 	addc	a,#0xff
   2D21 F5 16              1481 	mov	(_serialControl_sloc2_1_0 + 1),a
   2D23 90 03 7D           1482 	mov	dptr,#_serialControl_PARM_2
   2D26 E0                 1483 	movx	a,@dptr
   2D27 F5 12              1484 	mov	_serialControl_sloc1_1_0,a
   2D29 A3                 1485 	inc	dptr
   2D2A E0                 1486 	movx	a,@dptr
   2D2B F5 13              1487 	mov	(_serialControl_sloc1_1_0 + 1),a
   2D2D A3                 1488 	inc	dptr
   2D2E E0                 1489 	movx	a,@dptr
   2D2F F5 14              1490 	mov	(_serialControl_sloc1_1_0 + 2),a
   2D31 AF 15              1491 	mov	r7,_serialControl_sloc2_1_0
   2D33 E5 16              1492 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2D35 C4                 1493 	swap	a
   2D36 54 F0              1494 	anl	a,#0xf0
   2D38 CF                 1495 	xch	a,r7
   2D39 C4                 1496 	swap	a
   2D3A CF                 1497 	xch	a,r7
   2D3B 6F                 1498 	xrl	a,r7
   2D3C CF                 1499 	xch	a,r7
   2D3D 54 F0              1500 	anl	a,#0xf0
   2D3F CF                 1501 	xch	a,r7
   2D40 6F                 1502 	xrl	a,r7
   2D41 F8                 1503 	mov	r0,a
   2D42 EF                 1504 	mov	a,r7
   2D43 25 12              1505 	add	a,_serialControl_sloc1_1_0
   2D45 F5 15              1506 	mov	_serialControl_sloc2_1_0,a
   2D47 E8                 1507 	mov	a,r0
   2D48 35 13              1508 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2D4A F5 16              1509 	mov	(_serialControl_sloc2_1_0 + 1),a
   2D4C 85 14 17           1510 	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
   2D4F 74 03              1511 	mov	a,#0x03
   2D51 2B                 1512 	add	a,r3
   2D52 FF                 1513 	mov	r7,a
   2D53 E4                 1514 	clr	a
   2D54 3C                 1515 	addc	a,r4
   2D55 F8                 1516 	mov	r0,a
   2D56 8D 01              1517 	mov	ar1,r5
   2D58 8F 82              1518 	mov	dpl,r7
   2D5A 88 83              1519 	mov	dph,r0
   2D5C 89 F0              1520 	mov	b,r1
   2D5E 12 34 33           1521 	lcall	__gptrget
   2D61 14                 1522 	dec	a
   2D62 25 15              1523 	add	a,_serialControl_sloc2_1_0
   2D64 FF                 1524 	mov	r7,a
   2D65 E4                 1525 	clr	a
   2D66 35 16              1526 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2D68 F8                 1527 	mov	r0,a
   2D69 A9 17              1528 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   2D6B 8F 82              1529 	mov	dpl,r7
   2D6D 88 83              1530 	mov	dph,r0
   2D6F 89 F0              1531 	mov	b,r1
   2D71 12 34 33           1532 	lcall	__gptrget
   2D74 FF                 1533 	mov	r7,a
   2D75 33                 1534 	rlc	a
   2D76 95 E0              1535 	subb	a,acc
   2D78 F8                 1536 	mov	r0,a
   2D79 EF                 1537 	mov	a,r7
   2D7A 24 FF              1538 	add	a,#0xff
   2D7C F5 15              1539 	mov	_serialControl_sloc2_1_0,a
   2D7E E8                 1540 	mov	a,r0
   2D7F 34 FF              1541 	addc	a,#0xff
   2D81 F5 16              1542 	mov	(_serialControl_sloc2_1_0 + 1),a
   2D83 90 03 80           1543 	mov	dptr,#_serialControl_scmap_1_1
   2D86 E0                 1544 	movx	a,@dptr
   2D87 F5 12              1545 	mov	_serialControl_sloc1_1_0,a
   2D89 A3                 1546 	inc	dptr
   2D8A E0                 1547 	movx	a,@dptr
   2D8B F5 13              1548 	mov	(_serialControl_sloc1_1_0 + 1),a
   2D8D A3                 1549 	inc	dptr
   2D8E E0                 1550 	movx	a,@dptr
   2D8F F5 14              1551 	mov	(_serialControl_sloc1_1_0 + 2),a
   2D91 AF 15              1552 	mov	r7,_serialControl_sloc2_1_0
   2D93 E5 16              1553 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2D95 C4                 1554 	swap	a
   2D96 03                 1555 	rr	a
   2D97 54 F8              1556 	anl	a,#0xf8
   2D99 CF                 1557 	xch	a,r7
   2D9A C4                 1558 	swap	a
   2D9B 03                 1559 	rr	a
   2D9C CF                 1560 	xch	a,r7
   2D9D 6F                 1561 	xrl	a,r7
   2D9E CF                 1562 	xch	a,r7
   2D9F 54 F8              1563 	anl	a,#0xf8
   2DA1 CF                 1564 	xch	a,r7
   2DA2 6F                 1565 	xrl	a,r7
   2DA3 F8                 1566 	mov	r0,a
   2DA4 EF                 1567 	mov	a,r7
   2DA5 25 12              1568 	add	a,_serialControl_sloc1_1_0
   2DA7 F5 15              1569 	mov	_serialControl_sloc2_1_0,a
   2DA9 E8                 1570 	mov	a,r0
   2DAA 35 13              1571 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2DAC F5 16              1572 	mov	(_serialControl_sloc2_1_0 + 1),a
   2DAE 85 14 17           1573 	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
   2DB1 8B 82              1574 	mov	dpl,r3
   2DB3 8C 83              1575 	mov	dph,r4
   2DB5 8D F0              1576 	mov	b,r5
   2DB7 12 34 33           1577 	lcall	__gptrget
   2DBA 14                 1578 	dec	a
   2DBB 25 15              1579 	add	a,_serialControl_sloc2_1_0
   2DBD F5 15              1580 	mov	_serialControl_sloc2_1_0,a
   2DBF E4                 1581 	clr	a
   2DC0 35 16              1582 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2DC2 F5 16              1583 	mov	(_serialControl_sloc2_1_0 + 1),a
   2DC4 EE                 1584 	mov	a,r6
   2DC5 04                 1585 	inc	a
   2DC6 90 03 84           1586 	mov	dptr,#_pow_PARM_2
   2DC9 D3                 1587 	setb	c
   2DCA 94 05              1588 	subb	a,#0x05
   2DCC F4                 1589 	cpl	a
   2DCD F0                 1590 	movx	@dptr,a
   2DCE 75 82 02           1591 	mov	dpl,#0x02
   2DD1 12 32 07           1592 	lcall	_pow
   2DD4 AF 82              1593 	mov	r7,dpl
   2DD6 85 15 82           1594 	mov	dpl,_serialControl_sloc2_1_0
   2DD9 85 16 83           1595 	mov	dph,(_serialControl_sloc2_1_0 + 1)
   2DDC 85 17 F0           1596 	mov	b,(_serialControl_sloc2_1_0 + 2)
   2DDF 12 34 33           1597 	lcall	__gptrget
   2DE2 F8                 1598 	mov	r0,a
   2DE3 90 03 83           1599 	mov	dptr,#_serialControl_logic_op_1_1
   2DE6 EF                 1600 	mov	a,r7
   2DE7 58                 1601 	anl	a,r0
   2DE8 F0                 1602 	movx	@dptr,a
   2DE9 02 2E F7           1603 	ljmp	00137$
   2DEC                    1604 00136$:
                           1605 ;	SERIAL.c:120: else if(player->scol==5 && player->col <16)
   2DEC E4                 1606 	clr	a
   2DED BE 05 01           1607 	cjne	r6,#0x05,00244$
   2DF0 04                 1608 	inc	a
   2DF1                    1609 00244$:
   2DF1 FE                 1610 	mov	r6,a
   2DF2 70 03              1611 	jnz	00246$
   2DF4 02 2E DC           1612 	ljmp	00132$
   2DF7                    1613 00246$:
   2DF7 74 03              1614 	mov	a,#0x03
   2DF9 2B                 1615 	add	a,r3
   2DFA FF                 1616 	mov	r7,a
   2DFB E4                 1617 	clr	a
   2DFC 3C                 1618 	addc	a,r4
   2DFD F8                 1619 	mov	r0,a
   2DFE 8D 01              1620 	mov	ar1,r5
   2E00 8F 82              1621 	mov	dpl,r7
   2E02 88 83              1622 	mov	dph,r0
   2E04 89 F0              1623 	mov	b,r1
   2E06 12 34 33           1624 	lcall	__gptrget
   2E09 F5 15              1625 	mov	_serialControl_sloc2_1_0,a
   2E0B C3                 1626 	clr	c
   2E0C 94 10              1627 	subb	a,#0x10
   2E0E 40 03              1628 	jc	00247$
   2E10 02 2E DC           1629 	ljmp	00132$
   2E13                    1630 00247$:
                           1631 ;	SERIAL.c:121: logic_op = scmap[(map[player->line-1][player->col].schar) - 1].adds[player->sline-1] & (pow(2,5-(1)));
   2E13 74 02              1632 	mov	a,#0x02
   2E15 2B                 1633 	add	a,r3
   2E16 F8                 1634 	mov	r0,a
   2E17 E4                 1635 	clr	a
   2E18 3C                 1636 	addc	a,r4
   2E19 F9                 1637 	mov	r1,a
   2E1A 8D 07              1638 	mov	ar7,r5
   2E1C 88 82              1639 	mov	dpl,r0
   2E1E 89 83              1640 	mov	dph,r1
   2E20 8F F0              1641 	mov	b,r7
   2E22 12 34 33           1642 	lcall	__gptrget
   2E25 7F 00              1643 	mov	r7,#0x00
   2E27 24 FF              1644 	add	a,#0xff
   2E29 F5 12              1645 	mov	_serialControl_sloc1_1_0,a
   2E2B EF                 1646 	mov	a,r7
   2E2C 34 FF              1647 	addc	a,#0xff
   2E2E F5 13              1648 	mov	(_serialControl_sloc1_1_0 + 1),a
   2E30 90 03 7D           1649 	mov	dptr,#_serialControl_PARM_2
   2E33 E0                 1650 	movx	a,@dptr
   2E34 F5 18              1651 	mov	_serialControl_sloc3_1_0,a
   2E36 A3                 1652 	inc	dptr
   2E37 E0                 1653 	movx	a,@dptr
   2E38 F5 19              1654 	mov	(_serialControl_sloc3_1_0 + 1),a
   2E3A A3                 1655 	inc	dptr
   2E3B E0                 1656 	movx	a,@dptr
   2E3C F5 1A              1657 	mov	(_serialControl_sloc3_1_0 + 2),a
   2E3E AF 12              1658 	mov	r7,_serialControl_sloc1_1_0
   2E40 E5 13              1659 	mov	a,(_serialControl_sloc1_1_0 + 1)
   2E42 C4                 1660 	swap	a
   2E43 54 F0              1661 	anl	a,#0xf0
   2E45 CF                 1662 	xch	a,r7
   2E46 C4                 1663 	swap	a
   2E47 CF                 1664 	xch	a,r7
   2E48 6F                 1665 	xrl	a,r7
   2E49 CF                 1666 	xch	a,r7
   2E4A 54 F0              1667 	anl	a,#0xf0
   2E4C CF                 1668 	xch	a,r7
   2E4D 6F                 1669 	xrl	a,r7
   2E4E F8                 1670 	mov	r0,a
   2E4F EF                 1671 	mov	a,r7
   2E50 25 18              1672 	add	a,_serialControl_sloc3_1_0
   2E52 FF                 1673 	mov	r7,a
   2E53 E8                 1674 	mov	a,r0
   2E54 35 19              1675 	addc	a,(_serialControl_sloc3_1_0 + 1)
   2E56 F8                 1676 	mov	r0,a
   2E57 A9 1A              1677 	mov	r1,(_serialControl_sloc3_1_0 + 2)
   2E59 E5 15              1678 	mov	a,_serialControl_sloc2_1_0
   2E5B 2F                 1679 	add	a,r7
   2E5C FF                 1680 	mov	r7,a
   2E5D E4                 1681 	clr	a
   2E5E 38                 1682 	addc	a,r0
   2E5F F8                 1683 	mov	r0,a
   2E60 8F 82              1684 	mov	dpl,r7
   2E62 88 83              1685 	mov	dph,r0
   2E64 89 F0              1686 	mov	b,r1
   2E66 12 34 33           1687 	lcall	__gptrget
   2E69 FF                 1688 	mov	r7,a
   2E6A 33                 1689 	rlc	a
   2E6B 95 E0              1690 	subb	a,acc
   2E6D F8                 1691 	mov	r0,a
   2E6E EF                 1692 	mov	a,r7
   2E6F 24 FF              1693 	add	a,#0xff
   2E71 F5 18              1694 	mov	_serialControl_sloc3_1_0,a
   2E73 E8                 1695 	mov	a,r0
   2E74 34 FF              1696 	addc	a,#0xff
   2E76 F5 19              1697 	mov	(_serialControl_sloc3_1_0 + 1),a
   2E78 90 03 80           1698 	mov	dptr,#_serialControl_scmap_1_1
   2E7B E0                 1699 	movx	a,@dptr
   2E7C F5 15              1700 	mov	_serialControl_sloc2_1_0,a
   2E7E A3                 1701 	inc	dptr
   2E7F E0                 1702 	movx	a,@dptr
   2E80 F5 16              1703 	mov	(_serialControl_sloc2_1_0 + 1),a
   2E82 A3                 1704 	inc	dptr
   2E83 E0                 1705 	movx	a,@dptr
   2E84 F5 17              1706 	mov	(_serialControl_sloc2_1_0 + 2),a
   2E86 AF 18              1707 	mov	r7,_serialControl_sloc3_1_0
   2E88 E5 19              1708 	mov	a,(_serialControl_sloc3_1_0 + 1)
   2E8A C4                 1709 	swap	a
   2E8B 03                 1710 	rr	a
   2E8C 54 F8              1711 	anl	a,#0xf8
   2E8E CF                 1712 	xch	a,r7
   2E8F C4                 1713 	swap	a
   2E90 03                 1714 	rr	a
   2E91 CF                 1715 	xch	a,r7
   2E92 6F                 1716 	xrl	a,r7
   2E93 CF                 1717 	xch	a,r7
   2E94 54 F8              1718 	anl	a,#0xf8
   2E96 CF                 1719 	xch	a,r7
   2E97 6F                 1720 	xrl	a,r7
   2E98 F8                 1721 	mov	r0,a
   2E99 EF                 1722 	mov	a,r7
   2E9A 25 15              1723 	add	a,_serialControl_sloc2_1_0
   2E9C F5 18              1724 	mov	_serialControl_sloc3_1_0,a
   2E9E E8                 1725 	mov	a,r0
   2E9F 35 16              1726 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2EA1 F5 19              1727 	mov	(_serialControl_sloc3_1_0 + 1),a
   2EA3 85 17 1A           1728 	mov	(_serialControl_sloc3_1_0 + 2),(_serialControl_sloc2_1_0 + 2)
   2EA6 8B 82              1729 	mov	dpl,r3
   2EA8 8C 83              1730 	mov	dph,r4
   2EAA 8D F0              1731 	mov	b,r5
   2EAC 12 34 33           1732 	lcall	__gptrget
   2EAF 14                 1733 	dec	a
   2EB0 25 18              1734 	add	a,_serialControl_sloc3_1_0
   2EB2 F5 18              1735 	mov	_serialControl_sloc3_1_0,a
   2EB4 E4                 1736 	clr	a
   2EB5 35 19              1737 	addc	a,(_serialControl_sloc3_1_0 + 1)
   2EB7 F5 19              1738 	mov	(_serialControl_sloc3_1_0 + 1),a
   2EB9 90 03 84           1739 	mov	dptr,#_pow_PARM_2
   2EBC 74 04              1740 	mov	a,#0x04
   2EBE F0                 1741 	movx	@dptr,a
   2EBF 75 82 02           1742 	mov	dpl,#0x02
   2EC2 12 32 07           1743 	lcall	_pow
   2EC5 AF 82              1744 	mov	r7,dpl
   2EC7 85 18 82           1745 	mov	dpl,_serialControl_sloc3_1_0
   2ECA 85 19 83           1746 	mov	dph,(_serialControl_sloc3_1_0 + 1)
   2ECD 85 1A F0           1747 	mov	b,(_serialControl_sloc3_1_0 + 2)
   2ED0 12 34 33           1748 	lcall	__gptrget
   2ED3 F8                 1749 	mov	r0,a
   2ED4 90 03 83           1750 	mov	dptr,#_serialControl_logic_op_1_1
   2ED7 EF                 1751 	mov	a,r7
   2ED8 58                 1752 	anl	a,r0
   2ED9 F0                 1753 	movx	@dptr,a
   2EDA 80 1B              1754 	sjmp	00137$
   2EDC                    1755 00132$:
                           1756 ;	SERIAL.c:122: else if(player->scol==5 && player->col ==16)
   2EDC EE                 1757 	mov	a,r6
   2EDD 60 18              1758 	jz	00137$
   2EDF 74 03              1759 	mov	a,#0x03
   2EE1 2B                 1760 	add	a,r3
   2EE2 FB                 1761 	mov	r3,a
   2EE3 E4                 1762 	clr	a
   2EE4 3C                 1763 	addc	a,r4
   2EE5 FC                 1764 	mov	r4,a
   2EE6 8B 82              1765 	mov	dpl,r3
   2EE8 8C 83              1766 	mov	dph,r4
   2EEA 8D F0              1767 	mov	b,r5
   2EEC 12 34 33           1768 	lcall	__gptrget
   2EEF FB                 1769 	mov	r3,a
   2EF0 BB 10 04           1770 	cjne	r3,#0x10,00137$
                           1771 ;	SERIAL.c:123: return 0;
   2EF3 75 82 00           1772 	mov	dpl,#0x00
   2EF6 22                 1773 	ret
   2EF7                    1774 00137$:
                           1775 ;	SERIAL.c:126: if(logic_op == 0){
   2EF7 90 03 83           1776 	mov	dptr,#_serialControl_logic_op_1_1
   2EFA E0                 1777 	movx	a,@dptr
   2EFB FB                 1778 	mov	r3,a
   2EFC 60 03              1779 	jz	00251$
   2EFE 02 31 FE           1780 	ljmp	00175$
   2F01                    1781 00251$:
                           1782 ;	SERIAL.c:128: if(player->scol != 5)
   2F01 90 03 74           1783 	mov	dptr,#_player
   2F04 E0                 1784 	movx	a,@dptr
   2F05 FB                 1785 	mov	r3,a
   2F06 A3                 1786 	inc	dptr
   2F07 E0                 1787 	movx	a,@dptr
   2F08 FC                 1788 	mov	r4,a
   2F09 A3                 1789 	inc	dptr
   2F0A E0                 1790 	movx	a,@dptr
   2F0B FD                 1791 	mov	r5,a
   2F0C 74 01              1792 	mov	a,#0x01
   2F0E 2B                 1793 	add	a,r3
   2F0F FE                 1794 	mov	r6,a
   2F10 E4                 1795 	clr	a
   2F11 3C                 1796 	addc	a,r4
   2F12 FF                 1797 	mov	r7,a
   2F13 8D 00              1798 	mov	ar0,r5
   2F15 8E 82              1799 	mov	dpl,r6
   2F17 8F 83              1800 	mov	dph,r7
   2F19 88 F0              1801 	mov	b,r0
   2F1B 12 34 33           1802 	lcall	__gptrget
   2F1E F9                 1803 	mov	r1,a
   2F1F B9 05 02           1804 	cjne	r1,#0x05,00252$
   2F22 80 0E              1805 	sjmp	00141$
   2F24                    1806 00252$:
                           1807 ;	SERIAL.c:129: player->scol++;
   2F24 09                 1808 	inc	r1
   2F25 8E 82              1809 	mov	dpl,r6
   2F27 8F 83              1810 	mov	dph,r7
   2F29 88 F0              1811 	mov	b,r0
   2F2B E9                 1812 	mov	a,r1
   2F2C 12 32 D5           1813 	lcall	__gptrput
   2F2F 02 31 FE           1814 	ljmp	00175$
   2F32                    1815 00141$:
                           1816 ;	SERIAL.c:131: if(player->col != 16){
   2F32 74 03              1817 	mov	a,#0x03
   2F34 2B                 1818 	add	a,r3
   2F35 FB                 1819 	mov	r3,a
   2F36 E4                 1820 	clr	a
   2F37 3C                 1821 	addc	a,r4
   2F38 FC                 1822 	mov	r4,a
   2F39 8B 82              1823 	mov	dpl,r3
   2F3B 8C 83              1824 	mov	dph,r4
   2F3D 8D F0              1825 	mov	b,r5
   2F3F 12 34 33           1826 	lcall	__gptrget
   2F42 F9                 1827 	mov	r1,a
   2F43 B9 10 03           1828 	cjne	r1,#0x10,00253$
   2F46 02 31 FE           1829 	ljmp	00175$
   2F49                    1830 00253$:
                           1831 ;	SERIAL.c:132: player->scol = 1;
   2F49 8E 82              1832 	mov	dpl,r6
   2F4B 8F 83              1833 	mov	dph,r7
   2F4D 88 F0              1834 	mov	b,r0
   2F4F 74 01              1835 	mov	a,#0x01
   2F51 12 32 D5           1836 	lcall	__gptrput
                           1837 ;	SERIAL.c:133: player->col++;
   2F54 09                 1838 	inc	r1
   2F55 8B 82              1839 	mov	dpl,r3
   2F57 8C 83              1840 	mov	dph,r4
   2F59 8D F0              1841 	mov	b,r5
   2F5B E9                 1842 	mov	a,r1
   2F5C 12 32 D5           1843 	lcall	__gptrput
   2F5F 02 31 FE           1844 	ljmp	00175$
   2F62                    1845 00166$:
                           1846 ;	SERIAL.c:141: else if(rxMsg == 'a' || rxMsg == 'A'){
   2F62 BA 61 02           1847 	cjne	r2,#0x61,00254$
   2F65 80 08              1848 	sjmp	00162$
   2F67                    1849 00254$:
   2F67 BA 41 02           1850 	cjne	r2,#0x41,00255$
   2F6A 80 03              1851 	sjmp	00256$
   2F6C                    1852 00255$:
   2F6C 02 31 FE           1853 	ljmp	00175$
   2F6F                    1854 00256$:
   2F6F                    1855 00162$:
                           1856 ;	SERIAL.c:144: if((player->scol-2)>-1)
   2F6F 90 03 74           1857 	mov	dptr,#_player
   2F72 E0                 1858 	movx	a,@dptr
   2F73 FA                 1859 	mov	r2,a
   2F74 A3                 1860 	inc	dptr
   2F75 E0                 1861 	movx	a,@dptr
   2F76 FB                 1862 	mov	r3,a
   2F77 A3                 1863 	inc	dptr
   2F78 E0                 1864 	movx	a,@dptr
   2F79 FC                 1865 	mov	r4,a
   2F7A 74 01              1866 	mov	a,#0x01
   2F7C 2A                 1867 	add	a,r2
   2F7D FD                 1868 	mov	r5,a
   2F7E E4                 1869 	clr	a
   2F7F 3B                 1870 	addc	a,r3
   2F80 FE                 1871 	mov	r6,a
   2F81 8C 07              1872 	mov	ar7,r4
   2F83 8D 82              1873 	mov	dpl,r5
   2F85 8E 83              1874 	mov	dph,r6
   2F87 8F F0              1875 	mov	b,r7
   2F89 12 34 33           1876 	lcall	__gptrget
   2F8C FD                 1877 	mov	r5,a
   2F8D 7F 00              1878 	mov	r7,#0x00
   2F8F 24 FE              1879 	add	a,#0xfe
   2F91 FE                 1880 	mov	r6,a
   2F92 EF                 1881 	mov	a,r7
   2F93 34 FF              1882 	addc	a,#0xff
   2F95 FF                 1883 	mov	r7,a
   2F96 C3                 1884 	clr	c
   2F97 74 FF              1885 	mov	a,#0xFF
   2F99 9E                 1886 	subb	a,r6
   2F9A 74 7F              1887 	mov	a,#(0xFF ^ 0x80)
   2F9C 8F F0              1888 	mov	b,r7
   2F9E 63 F0 80           1889 	xrl	b,#0x80
   2FA1 95 F0              1890 	subb	a,b
   2FA3 40 03              1891 	jc	00257$
   2FA5 02 30 90           1892 	ljmp	00153$
   2FA8                    1893 00257$:
                           1894 ;	SERIAL.c:145: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-1] & (pow(2,5-(player->scol-1)));
   2FA8 74 02              1895 	mov	a,#0x02
   2FAA 2A                 1896 	add	a,r2
   2FAB FE                 1897 	mov	r6,a
   2FAC E4                 1898 	clr	a
   2FAD 3B                 1899 	addc	a,r3
   2FAE FF                 1900 	mov	r7,a
   2FAF 8C 00              1901 	mov	ar0,r4
   2FB1 8E 82              1902 	mov	dpl,r6
   2FB3 8F 83              1903 	mov	dph,r7
   2FB5 88 F0              1904 	mov	b,r0
   2FB7 12 34 33           1905 	lcall	__gptrget
   2FBA 7F 00              1906 	mov	r7,#0x00
   2FBC 24 FF              1907 	add	a,#0xff
   2FBE F5 18              1908 	mov	_serialControl_sloc3_1_0,a
   2FC0 EF                 1909 	mov	a,r7
   2FC1 34 FF              1910 	addc	a,#0xff
   2FC3 F5 19              1911 	mov	(_serialControl_sloc3_1_0 + 1),a
   2FC5 90 03 7D           1912 	mov	dptr,#_serialControl_PARM_2
   2FC8 E0                 1913 	movx	a,@dptr
   2FC9 F5 15              1914 	mov	_serialControl_sloc2_1_0,a
   2FCB A3                 1915 	inc	dptr
   2FCC E0                 1916 	movx	a,@dptr
   2FCD F5 16              1917 	mov	(_serialControl_sloc2_1_0 + 1),a
   2FCF A3                 1918 	inc	dptr
   2FD0 E0                 1919 	movx	a,@dptr
   2FD1 F5 17              1920 	mov	(_serialControl_sloc2_1_0 + 2),a
   2FD3 AF 18              1921 	mov	r7,_serialControl_sloc3_1_0
   2FD5 E5 19              1922 	mov	a,(_serialControl_sloc3_1_0 + 1)
   2FD7 C4                 1923 	swap	a
   2FD8 54 F0              1924 	anl	a,#0xf0
   2FDA CF                 1925 	xch	a,r7
   2FDB C4                 1926 	swap	a
   2FDC CF                 1927 	xch	a,r7
   2FDD 6F                 1928 	xrl	a,r7
   2FDE CF                 1929 	xch	a,r7
   2FDF 54 F0              1930 	anl	a,#0xf0
   2FE1 CF                 1931 	xch	a,r7
   2FE2 6F                 1932 	xrl	a,r7
   2FE3 FE                 1933 	mov	r6,a
   2FE4 EF                 1934 	mov	a,r7
   2FE5 25 15              1935 	add	a,_serialControl_sloc2_1_0
   2FE7 F5 18              1936 	mov	_serialControl_sloc3_1_0,a
   2FE9 EE                 1937 	mov	a,r6
   2FEA 35 16              1938 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2FEC F5 19              1939 	mov	(_serialControl_sloc3_1_0 + 1),a
   2FEE 85 17 1A           1940 	mov	(_serialControl_sloc3_1_0 + 2),(_serialControl_sloc2_1_0 + 2)
   2FF1 74 03              1941 	mov	a,#0x03
   2FF3 2A                 1942 	add	a,r2
   2FF4 F9                 1943 	mov	r1,a
   2FF5 E4                 1944 	clr	a
   2FF6 3B                 1945 	addc	a,r3
   2FF7 FE                 1946 	mov	r6,a
   2FF8 8C 07              1947 	mov	ar7,r4
   2FFA 89 82              1948 	mov	dpl,r1
   2FFC 8E 83              1949 	mov	dph,r6
   2FFE 8F F0              1950 	mov	b,r7
   3000 12 34 33           1951 	lcall	__gptrget
   3003 14                 1952 	dec	a
   3004 25 18              1953 	add	a,_serialControl_sloc3_1_0
   3006 FE                 1954 	mov	r6,a
   3007 E4                 1955 	clr	a
   3008 35 19              1956 	addc	a,(_serialControl_sloc3_1_0 + 1)
   300A FF                 1957 	mov	r7,a
   300B A8 1A              1958 	mov	r0,(_serialControl_sloc3_1_0 + 2)
   300D 8E 82              1959 	mov	dpl,r6
   300F 8F 83              1960 	mov	dph,r7
   3011 88 F0              1961 	mov	b,r0
   3013 12 34 33           1962 	lcall	__gptrget
   3016 FE                 1963 	mov	r6,a
   3017 33                 1964 	rlc	a
   3018 95 E0              1965 	subb	a,acc
   301A FF                 1966 	mov	r7,a
   301B EE                 1967 	mov	a,r6
   301C 24 FF              1968 	add	a,#0xff
   301E F5 18              1969 	mov	_serialControl_sloc3_1_0,a
   3020 EF                 1970 	mov	a,r7
   3021 34 FF              1971 	addc	a,#0xff
   3023 F5 19              1972 	mov	(_serialControl_sloc3_1_0 + 1),a
   3025 90 03 80           1973 	mov	dptr,#_serialControl_scmap_1_1
   3028 E0                 1974 	movx	a,@dptr
   3029 F5 15              1975 	mov	_serialControl_sloc2_1_0,a
   302B A3                 1976 	inc	dptr
   302C E0                 1977 	movx	a,@dptr
   302D F5 16              1978 	mov	(_serialControl_sloc2_1_0 + 1),a
   302F A3                 1979 	inc	dptr
   3030 E0                 1980 	movx	a,@dptr
   3031 F5 17              1981 	mov	(_serialControl_sloc2_1_0 + 2),a
   3033 AF 18              1982 	mov	r7,_serialControl_sloc3_1_0
   3035 E5 19              1983 	mov	a,(_serialControl_sloc3_1_0 + 1)
   3037 C4                 1984 	swap	a
   3038 03                 1985 	rr	a
   3039 54 F8              1986 	anl	a,#0xf8
   303B CF                 1987 	xch	a,r7
   303C C4                 1988 	swap	a
   303D 03                 1989 	rr	a
   303E CF                 1990 	xch	a,r7
   303F 6F                 1991 	xrl	a,r7
   3040 CF                 1992 	xch	a,r7
   3041 54 F8              1993 	anl	a,#0xf8
   3043 CF                 1994 	xch	a,r7
   3044 6F                 1995 	xrl	a,r7
   3045 FE                 1996 	mov	r6,a
   3046 EF                 1997 	mov	a,r7
   3047 25 15              1998 	add	a,_serialControl_sloc2_1_0
   3049 FF                 1999 	mov	r7,a
   304A EE                 2000 	mov	a,r6
   304B 35 16              2001 	addc	a,(_serialControl_sloc2_1_0 + 1)
   304D FE                 2002 	mov	r6,a
   304E A8 17              2003 	mov	r0,(_serialControl_sloc2_1_0 + 2)
   3050 8A 82              2004 	mov	dpl,r2
   3052 8B 83              2005 	mov	dph,r3
   3054 8C F0              2006 	mov	b,r4
   3056 12 34 33           2007 	lcall	__gptrget
   3059 14                 2008 	dec	a
   305A 2F                 2009 	add	a,r7
   305B FF                 2010 	mov	r7,a
   305C E4                 2011 	clr	a
   305D 3E                 2012 	addc	a,r6
   305E FE                 2013 	mov	r6,a
   305F ED                 2014 	mov	a,r5
   3060 14                 2015 	dec	a
   3061 90 03 84           2016 	mov	dptr,#_pow_PARM_2
   3064 D3                 2017 	setb	c
   3065 94 05              2018 	subb	a,#0x05
   3067 F4                 2019 	cpl	a
   3068 F0                 2020 	movx	@dptr,a
   3069 75 82 02           2021 	mov	dpl,#0x02
   306C C0 06              2022 	push	ar6
   306E C0 07              2023 	push	ar7
   3070 C0 00              2024 	push	ar0
   3072 12 32 07           2025 	lcall	_pow
   3075 A9 82              2026 	mov	r1,dpl
   3077 D0 00              2027 	pop	ar0
   3079 D0 07              2028 	pop	ar7
   307B D0 06              2029 	pop	ar6
   307D 8F 82              2030 	mov	dpl,r7
   307F 8E 83              2031 	mov	dph,r6
   3081 88 F0              2032 	mov	b,r0
   3083 12 34 33           2033 	lcall	__gptrget
   3086 FF                 2034 	mov	r7,a
   3087 90 03 83           2035 	mov	dptr,#_serialControl_logic_op_1_1
   308A E9                 2036 	mov	a,r1
   308B 5F                 2037 	anl	a,r7
   308C F0                 2038 	movx	@dptr,a
   308D 02 31 9B           2039 	ljmp	00154$
   3090                    2040 00153$:
                           2041 ;	SERIAL.c:146: else if(player->scol==1 && player->col >1)
   3090 E4                 2042 	clr	a
   3091 BD 01 01           2043 	cjne	r5,#0x01,00258$
   3094 04                 2044 	inc	a
   3095                    2045 00258$:
   3095 FD                 2046 	mov	r5,a
   3096 70 03              2047 	jnz	00260$
   3098 02 31 80           2048 	ljmp	00149$
   309B                    2049 00260$:
   309B 74 03              2050 	mov	a,#0x03
   309D 2A                 2051 	add	a,r2
   309E FE                 2052 	mov	r6,a
   309F E4                 2053 	clr	a
   30A0 3B                 2054 	addc	a,r3
   30A1 FF                 2055 	mov	r7,a
   30A2 8C 00              2056 	mov	ar0,r4
   30A4 8E 82              2057 	mov	dpl,r6
   30A6 8F 83              2058 	mov	dph,r7
   30A8 88 F0              2059 	mov	b,r0
   30AA 12 34 33           2060 	lcall	__gptrget
   30AD FE                 2061 	mov  r6,a
   30AE 24 FE              2062 	add	a,#0xff - 0x01
   30B0 40 03              2063 	jc	00261$
   30B2 02 31 80           2064 	ljmp	00149$
   30B5                    2065 00261$:
                           2066 ;	SERIAL.c:147: logic_op = scmap[(map[player->line-1][player->col-2].schar) - 1].adds[player->sline-1] & (pow(2,5-(5)));
   30B5 74 02              2067 	mov	a,#0x02
   30B7 2A                 2068 	add	a,r2
   30B8 FF                 2069 	mov	r7,a
   30B9 E4                 2070 	clr	a
   30BA 3B                 2071 	addc	a,r3
   30BB F8                 2072 	mov	r0,a
   30BC 8C 01              2073 	mov	ar1,r4
   30BE 8F 82              2074 	mov	dpl,r7
   30C0 88 83              2075 	mov	dph,r0
   30C2 89 F0              2076 	mov	b,r1
   30C4 12 34 33           2077 	lcall	__gptrget
   30C7 78 00              2078 	mov	r0,#0x00
   30C9 24 FF              2079 	add	a,#0xff
   30CB F5 18              2080 	mov	_serialControl_sloc3_1_0,a
   30CD E8                 2081 	mov	a,r0
   30CE 34 FF              2082 	addc	a,#0xff
   30D0 F5 19              2083 	mov	(_serialControl_sloc3_1_0 + 1),a
   30D2 90 03 7D           2084 	mov	dptr,#_serialControl_PARM_2
   30D5 E0                 2085 	movx	a,@dptr
   30D6 F5 15              2086 	mov	_serialControl_sloc2_1_0,a
   30D8 A3                 2087 	inc	dptr
   30D9 E0                 2088 	movx	a,@dptr
   30DA F5 16              2089 	mov	(_serialControl_sloc2_1_0 + 1),a
   30DC A3                 2090 	inc	dptr
   30DD E0                 2091 	movx	a,@dptr
   30DE F5 17              2092 	mov	(_serialControl_sloc2_1_0 + 2),a
   30E0 AF 18              2093 	mov	r7,_serialControl_sloc3_1_0
   30E2 E5 19              2094 	mov	a,(_serialControl_sloc3_1_0 + 1)
   30E4 C4                 2095 	swap	a
   30E5 54 F0              2096 	anl	a,#0xf0
   30E7 CF                 2097 	xch	a,r7
   30E8 C4                 2098 	swap	a
   30E9 CF                 2099 	xch	a,r7
   30EA 6F                 2100 	xrl	a,r7
   30EB CF                 2101 	xch	a,r7
   30EC 54 F0              2102 	anl	a,#0xf0
   30EE CF                 2103 	xch	a,r7
   30EF 6F                 2104 	xrl	a,r7
   30F0 F8                 2105 	mov	r0,a
   30F1 EF                 2106 	mov	a,r7
   30F2 25 15              2107 	add	a,_serialControl_sloc2_1_0
   30F4 FF                 2108 	mov	r7,a
   30F5 E8                 2109 	mov	a,r0
   30F6 35 16              2110 	addc	a,(_serialControl_sloc2_1_0 + 1)
   30F8 F8                 2111 	mov	r0,a
   30F9 A9 17              2112 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   30FB EE                 2113 	mov	a,r6
   30FC 24 FE              2114 	add	a,#0xfe
   30FE 2F                 2115 	add	a,r7
   30FF FF                 2116 	mov	r7,a
   3100 E4                 2117 	clr	a
   3101 38                 2118 	addc	a,r0
   3102 F8                 2119 	mov	r0,a
   3103 8F 82              2120 	mov	dpl,r7
   3105 88 83              2121 	mov	dph,r0
   3107 89 F0              2122 	mov	b,r1
   3109 12 34 33           2123 	lcall	__gptrget
   310C FF                 2124 	mov	r7,a
   310D 33                 2125 	rlc	a
   310E 95 E0              2126 	subb	a,acc
   3110 FE                 2127 	mov	r6,a
   3111 EF                 2128 	mov	a,r7
   3112 24 FF              2129 	add	a,#0xff
   3114 F5 18              2130 	mov	_serialControl_sloc3_1_0,a
   3116 EE                 2131 	mov	a,r6
   3117 34 FF              2132 	addc	a,#0xff
   3119 F5 19              2133 	mov	(_serialControl_sloc3_1_0 + 1),a
   311B 90 03 80           2134 	mov	dptr,#_serialControl_scmap_1_1
   311E E0                 2135 	movx	a,@dptr
   311F F5 15              2136 	mov	_serialControl_sloc2_1_0,a
   3121 A3                 2137 	inc	dptr
   3122 E0                 2138 	movx	a,@dptr
   3123 F5 16              2139 	mov	(_serialControl_sloc2_1_0 + 1),a
   3125 A3                 2140 	inc	dptr
   3126 E0                 2141 	movx	a,@dptr
   3127 F5 17              2142 	mov	(_serialControl_sloc2_1_0 + 2),a
   3129 AF 18              2143 	mov	r7,_serialControl_sloc3_1_0
   312B E5 19              2144 	mov	a,(_serialControl_sloc3_1_0 + 1)
   312D C4                 2145 	swap	a
   312E 03                 2146 	rr	a
   312F 54 F8              2147 	anl	a,#0xf8
   3131 CF                 2148 	xch	a,r7
   3132 C4                 2149 	swap	a
   3133 03                 2150 	rr	a
   3134 CF                 2151 	xch	a,r7
   3135 6F                 2152 	xrl	a,r7
   3136 CF                 2153 	xch	a,r7
   3137 54 F8              2154 	anl	a,#0xf8
   3139 CF                 2155 	xch	a,r7
   313A 6F                 2156 	xrl	a,r7
   313B FE                 2157 	mov	r6,a
   313C EF                 2158 	mov	a,r7
   313D 25 15              2159 	add	a,_serialControl_sloc2_1_0
   313F FF                 2160 	mov	r7,a
   3140 EE                 2161 	mov	a,r6
   3141 35 16              2162 	addc	a,(_serialControl_sloc2_1_0 + 1)
   3143 FE                 2163 	mov	r6,a
   3144 A8 17              2164 	mov	r0,(_serialControl_sloc2_1_0 + 2)
   3146 8A 82              2165 	mov	dpl,r2
   3148 8B 83              2166 	mov	dph,r3
   314A 8C F0              2167 	mov	b,r4
   314C 12 34 33           2168 	lcall	__gptrget
   314F 14                 2169 	dec	a
   3150 2F                 2170 	add	a,r7
   3151 FF                 2171 	mov	r7,a
   3152 E4                 2172 	clr	a
   3153 3E                 2173 	addc	a,r6
   3154 FE                 2174 	mov	r6,a
   3155 90 03 84           2175 	mov	dptr,#_pow_PARM_2
   3158 E4                 2176 	clr	a
   3159 F0                 2177 	movx	@dptr,a
   315A 75 82 02           2178 	mov	dpl,#0x02
   315D C0 06              2179 	push	ar6
   315F C0 07              2180 	push	ar7
   3161 C0 00              2181 	push	ar0
   3163 12 32 07           2182 	lcall	_pow
   3166 A9 82              2183 	mov	r1,dpl
   3168 D0 00              2184 	pop	ar0
   316A D0 07              2185 	pop	ar7
   316C D0 06              2186 	pop	ar6
   316E 8F 82              2187 	mov	dpl,r7
   3170 8E 83              2188 	mov	dph,r6
   3172 88 F0              2189 	mov	b,r0
   3174 12 34 33           2190 	lcall	__gptrget
   3177 FF                 2191 	mov	r7,a
   3178 90 03 83           2192 	mov	dptr,#_serialControl_logic_op_1_1
   317B E9                 2193 	mov	a,r1
   317C 5F                 2194 	anl	a,r7
   317D F0                 2195 	movx	@dptr,a
   317E 80 1B              2196 	sjmp	00154$
   3180                    2197 00149$:
                           2198 ;	SERIAL.c:148: else if(player->scol==1 && player->col == 1)
   3180 ED                 2199 	mov	a,r5
   3181 60 18              2200 	jz	00154$
   3183 74 03              2201 	mov	a,#0x03
   3185 2A                 2202 	add	a,r2
   3186 FA                 2203 	mov	r2,a
   3187 E4                 2204 	clr	a
   3188 3B                 2205 	addc	a,r3
   3189 FB                 2206 	mov	r3,a
   318A 8A 82              2207 	mov	dpl,r2
   318C 8B 83              2208 	mov	dph,r3
   318E 8C F0              2209 	mov	b,r4
   3190 12 34 33           2210 	lcall	__gptrget
   3193 FA                 2211 	mov	r2,a
   3194 BA 01 04           2212 	cjne	r2,#0x01,00154$
                           2213 ;	SERIAL.c:149: return 0;
   3197 75 82 00           2214 	mov	dpl,#0x00
   319A 22                 2215 	ret
   319B                    2216 00154$:
                           2217 ;	SERIAL.c:152: if(logic_op == 0){
   319B 90 03 83           2218 	mov	dptr,#_serialControl_logic_op_1_1
   319E E0                 2219 	movx	a,@dptr
   319F FA                 2220 	mov	r2,a
   31A0 70 5C              2221 	jnz	00175$
                           2222 ;	SERIAL.c:153: if(player->scol != 1)
   31A2 90 03 74           2223 	mov	dptr,#_player
   31A5 E0                 2224 	movx	a,@dptr
   31A6 FA                 2225 	mov	r2,a
   31A7 A3                 2226 	inc	dptr
   31A8 E0                 2227 	movx	a,@dptr
   31A9 FB                 2228 	mov	r3,a
   31AA A3                 2229 	inc	dptr
   31AB E0                 2230 	movx	a,@dptr
   31AC FC                 2231 	mov	r4,a
   31AD 74 01              2232 	mov	a,#0x01
   31AF 2A                 2233 	add	a,r2
   31B0 FD                 2234 	mov	r5,a
   31B1 E4                 2235 	clr	a
   31B2 3B                 2236 	addc	a,r3
   31B3 FE                 2237 	mov	r6,a
   31B4 8C 07              2238 	mov	ar7,r4
   31B6 8D 82              2239 	mov	dpl,r5
   31B8 8E 83              2240 	mov	dph,r6
   31BA 8F F0              2241 	mov	b,r7
   31BC 12 34 33           2242 	lcall	__gptrget
   31BF F8                 2243 	mov	r0,a
   31C0 B8 01 02           2244 	cjne	r0,#0x01,00266$
   31C3 80 0D              2245 	sjmp	00158$
   31C5                    2246 00266$:
                           2247 ;	SERIAL.c:154: player->scol--;
   31C5 18                 2248 	dec	r0
   31C6 8D 82              2249 	mov	dpl,r5
   31C8 8E 83              2250 	mov	dph,r6
   31CA 8F F0              2251 	mov	b,r7
   31CC E8                 2252 	mov	a,r0
   31CD 12 32 D5           2253 	lcall	__gptrput
   31D0 80 2C              2254 	sjmp	00175$
   31D2                    2255 00158$:
                           2256 ;	SERIAL.c:156: if(player->col != 1){
   31D2 74 03              2257 	mov	a,#0x03
   31D4 2A                 2258 	add	a,r2
   31D5 FA                 2259 	mov	r2,a
   31D6 E4                 2260 	clr	a
   31D7 3B                 2261 	addc	a,r3
   31D8 FB                 2262 	mov	r3,a
   31D9 8A 82              2263 	mov	dpl,r2
   31DB 8B 83              2264 	mov	dph,r3
   31DD 8C F0              2265 	mov	b,r4
   31DF 12 34 33           2266 	lcall	__gptrget
   31E2 F8                 2267 	mov	r0,a
   31E3 B8 01 02           2268 	cjne	r0,#0x01,00267$
   31E6 80 16              2269 	sjmp	00175$
   31E8                    2270 00267$:
                           2271 ;	SERIAL.c:157: player->scol = 5;
   31E8 8D 82              2272 	mov	dpl,r5
   31EA 8E 83              2273 	mov	dph,r6
   31EC 8F F0              2274 	mov	b,r7
   31EE 74 05              2275 	mov	a,#0x05
   31F0 12 32 D5           2276 	lcall	__gptrput
                           2277 ;	SERIAL.c:158: player->col--;
   31F3 18                 2278 	dec	r0
   31F4 8A 82              2279 	mov	dpl,r2
   31F6 8B 83              2280 	mov	dph,r3
   31F8 8C F0              2281 	mov	b,r4
   31FA E8                 2282 	mov	a,r0
   31FB 12 32 D5           2283 	lcall	__gptrput
   31FE                    2284 00175$:
                           2285 ;	SERIAL.c:169: printMap();
   31FE 12 07 D5           2286 	lcall	_printMap
                           2287 ;	SERIAL.c:170: RI = 0;
   3201 C2 98              2288 	clr	_RI
   3203                    2289 00178$:
                           2290 ;	SERIAL.c:173: return 1;
   3203 75 82 01           2291 	mov	dpl,#0x01
   3206 22                 2292 	ret
                           2293 	.area CSEG    (CODE)
                           2294 	.area CONST   (CODE)
                           2295 	.area XINIT   (CODE)
   3A64                    2296 __xinit__rxMsg:
   3A64 00                 2297 	.db #0x00
                           2298 	.area CABS    (ABS,CODE)
