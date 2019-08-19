                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Mon Aug 19 00:21:25 2019
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
   000C                     234 _serialControl_sloc0_1_0:
   000C                     235 	.ds 2
   000E                     236 _serialControl_sloc1_1_0:
   000E                     237 	.ds 3
   0011                     238 _serialControl_sloc2_1_0:
   0011                     239 	.ds 3
   0014                     240 _serialControl_sloc3_1_0:
   0014                     241 	.ds 3
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
   02D3                     271 _point:
   02D3                     272 	.ds 8
   02DB                     273 _SCmap::
   02DB                     274 	.ds 64
   031B                     275 _map::
   031B                     276 	.ds 64
   035B                     277 _Timer0::
   035B                     278 	.ds 7
   0362                     279 _player::
   0362                     280 	.ds 3
   0365                     281 _transmitter_message_1_1:
   0365                     282 	.ds 1
   0366                     283 _transNumber_number_1_1:
   0366                     284 	.ds 1
   0367                     285 _serialConfig_PARM_2:
   0367                     286 	.ds 3
   036A                     287 _serialConfig_read_1_1:
   036A                     288 	.ds 1
   036B                     289 _serialControl_PARM_2:
   036B                     290 	.ds 3
   036E                     291 _serialControl_scmap_1_1:
   036E                     292 	.ds 3
   0371                     293 _serialControl_logic_op_1_1:
   0371                     294 	.ds 1
                            295 ;--------------------------------------------------------
                            296 ; absolute external ram data
                            297 ;--------------------------------------------------------
                            298 	.area XABS    (ABS,XDATA)
                            299 ;--------------------------------------------------------
                            300 ; external initialized ram data
                            301 ;--------------------------------------------------------
                            302 	.area XISEG   (XDATA)
   0399                     303 _rxMsg:
   0399                     304 	.ds 1
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
   247B                     340 _transmitter:
                    0002    341 	ar2 = 0x02
                    0003    342 	ar3 = 0x03
                    0004    343 	ar4 = 0x04
                    0005    344 	ar5 = 0x05
                    0006    345 	ar6 = 0x06
                    0007    346 	ar7 = 0x07
                    0000    347 	ar0 = 0x00
                    0001    348 	ar1 = 0x01
   247B E5 82               349 	mov	a,dpl
   247D 90 03 65            350 	mov	dptr,#_transmitter_message_1_1
   2480 F0                  351 	movx	@dptr,a
                            352 ;	SERIAL.c:10: if(! TI){
   2481 20 99 0B            353 	jb	_TI,00106$
                            354 ;	SERIAL.c:11: SBUF = message;				// Manda a mensagem para o buffer
   2484 90 03 65            355 	mov	dptr,#_transmitter_message_1_1
   2487 E0                  356 	movx	a,@dptr
   2488 F5 99               357 	mov	_SBUF,a
                            358 ;	SERIAL.c:13: while(TI == 0);		// Esperando a flag TI parar a transmissão
   248A                     359 00101$:
                            360 ;	SERIAL.c:14: TI = 0;			// Zerando a flag
   248A 10 99 02            361 	jbc	_TI,00112$
   248D 80 FB               362 	sjmp	00101$
   248F                     363 00112$:
   248F                     364 00106$:
   248F 22                  365 	ret
                            366 ;------------------------------------------------------------
                            367 ;Allocation info for local variables in function 'transNumber'
                            368 ;------------------------------------------------------------
                            369 ;number                    Allocated with name '_transNumber_number_1_1'
                            370 ;------------------------------------------------------------
                            371 ;	SERIAL.c:19: void transNumber(unsigned char number){
                            372 ;	-----------------------------------------
                            373 ;	 function transNumber
                            374 ;	-----------------------------------------
   2490                     375 _transNumber:
   2490 E5 82               376 	mov	a,dpl
   2492 90 03 66            377 	mov	dptr,#_transNumber_number_1_1
   2495 F0                  378 	movx	@dptr,a
                            379 ;	SERIAL.c:21: transmitter(number/10 + '0'); 
   2496 90 03 66            380 	mov	dptr,#_transNumber_number_1_1
   2499 E0                  381 	movx	a,@dptr
   249A FA                  382 	mov	r2,a
   249B 75 F0 0A            383 	mov	b,#0x0A
   249E 84                  384 	div	ab
   249F 24 30               385 	add	a,#0x30
   24A1 F5 82               386 	mov	dpl,a
   24A3 C0 02               387 	push	ar2
   24A5 12 24 7B            388 	lcall	_transmitter
   24A8 D0 02               389 	pop	ar2
                            390 ;	SERIAL.c:22: transmitter(number%10 + '0'); 
   24AA 75 F0 0A            391 	mov	b,#0x0A
   24AD EA                  392 	mov	a,r2
   24AE 84                  393 	div	ab
   24AF E5 F0               394 	mov	a,b
   24B1 24 30               395 	add	a,#0x30
   24B3 F5 82               396 	mov	dpl,a
   24B5 12 24 7B            397 	lcall	_transmitter
                            398 ;	SERIAL.c:23: transmitter('\n'); 
   24B8 75 82 0A            399 	mov	dpl,#0x0A
   24BB 02 24 7B            400 	ljmp	_transmitter
                            401 ;------------------------------------------------------------
                            402 ;Allocation info for local variables in function 'receiver'
                            403 ;------------------------------------------------------------
                            404 ;------------------------------------------------------------
                            405 ;	SERIAL.c:26: char receiver(){
                            406 ;	-----------------------------------------
                            407 ;	 function receiver
                            408 ;	-----------------------------------------
   24BE                     409 _receiver:
                            410 ;	SERIAL.c:27: return SBUF;						// Recebe a mensagem do buffer
   24BE AA 99               411 	mov	r2,_SBUF
   24C0 8A 82               412 	mov	dpl,r2
   24C2 22                  413 	ret
                            414 ;------------------------------------------------------------
                            415 ;Allocation info for local variables in function 'receivedChar'
                            416 ;------------------------------------------------------------
                            417 ;------------------------------------------------------------
                            418 ;	SERIAL.c:30: char receivedChar(){
                            419 ;	-----------------------------------------
                            420 ;	 function receivedChar
                            421 ;	-----------------------------------------
   24C3                     422 _receivedChar:
                            423 ;	SERIAL.c:31: return rxMsg;
   24C3 90 03 99            424 	mov	dptr,#_rxMsg
   24C6 E0                  425 	movx	a,@dptr
   24C7 F5 82               426 	mov	dpl,a
   24C9 22                  427 	ret
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
   24CA                     438 _serialConfig:
   24CA E5 82               439 	mov	a,dpl
   24CC 90 03 6A            440 	mov	dptr,#_serialConfig_read_1_1
   24CF F0                  441 	movx	@dptr,a
                            442 ;	SERIAL.c:35: player = gamer;
   24D0 90 03 67            443 	mov	dptr,#_serialConfig_PARM_2
   24D3 E0                  444 	movx	a,@dptr
   24D4 FA                  445 	mov	r2,a
   24D5 A3                  446 	inc	dptr
   24D6 E0                  447 	movx	a,@dptr
   24D7 FB                  448 	mov	r3,a
   24D8 A3                  449 	inc	dptr
   24D9 E0                  450 	movx	a,@dptr
   24DA FC                  451 	mov	r4,a
   24DB 90 03 62            452 	mov	dptr,#_player
   24DE EA                  453 	mov	a,r2
   24DF F0                  454 	movx	@dptr,a
   24E0 A3                  455 	inc	dptr
   24E1 EB                  456 	mov	a,r3
   24E2 F0                  457 	movx	@dptr,a
   24E3 A3                  458 	inc	dptr
   24E4 EC                  459 	mov	a,r4
   24E5 F0                  460 	movx	@dptr,a
                            461 ;	SERIAL.c:37: if(read)
   24E6 90 03 6A            462 	mov	dptr,#_serialConfig_read_1_1
   24E9 E0                  463 	movx	a,@dptr
   24EA FA                  464 	mov	r2,a
   24EB 60 04               465 	jz	00102$
                            466 ;	SERIAL.c:38: SCON = 0x50; 						// Configurando o modo 1 para serial (05 Serial.pdf de sistmicro)
   24ED 75 98 50            467 	mov	_SCON,#0x50
                            468 ;	SERIAL.c:40: SCON = 0x40;
   24F0 22                  469 	ret
   24F1                     470 00102$:
   24F1 75 98 40            471 	mov	_SCON,#0x40
   24F4 22                  472 	ret
                            473 ;------------------------------------------------------------
                            474 ;Allocation info for local variables in function 'serialBegin'
                            475 ;------------------------------------------------------------
                            476 ;------------------------------------------------------------
                            477 ;	SERIAL.c:44: unsigned char serialBegin(){
                            478 ;	-----------------------------------------
                            479 ;	 function serialBegin
                            480 ;	-----------------------------------------
   24F5                     481 _serialBegin:
                            482 ;	SERIAL.c:46: if(RI){
   24F5 30 98 11            483 	jnb	_RI,00104$
                            484 ;	SERIAL.c:47: rxMsg = receiver();
   24F8 12 24 BE            485 	lcall	_receiver
   24FB AA 82               486 	mov	r2,dpl
   24FD 90 03 99            487 	mov	dptr,#_rxMsg
   2500 EA                  488 	mov	a,r2
   2501 F0                  489 	movx	@dptr,a
                            490 ;	SERIAL.c:49: if(rxMsg == ' ')
   2502 BA 20 04            491 	cjne	r2,#0x20,00104$
                            492 ;	SERIAL.c:50: return 0;
   2505 75 82 00            493 	mov	dpl,#0x00
                            494 ;	SERIAL.c:53: return 1;
   2508 22                  495 	ret
   2509                     496 00104$:
   2509 75 82 01            497 	mov	dpl,#0x01
   250C 22                  498 	ret
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
   250D                     514 _serialControl:
   250D AA F0               515 	mov	r2,b
   250F AB 83               516 	mov	r3,dph
   2511 E5 82               517 	mov	a,dpl
   2513 90 03 6E            518 	mov	dptr,#_serialControl_scmap_1_1
   2516 F0                  519 	movx	@dptr,a
   2517 A3                  520 	inc	dptr
   2518 EB                  521 	mov	a,r3
   2519 F0                  522 	movx	@dptr,a
   251A A3                  523 	inc	dptr
   251B EA                  524 	mov	a,r2
   251C F0                  525 	movx	@dptr,a
                            526 ;	SERIAL.c:58: unsigned char logic_op = 1;
   251D 90 03 71            527 	mov	dptr,#_serialControl_logic_op_1_1
   2520 74 01               528 	mov	a,#0x01
   2522 F0                  529 	movx	@dptr,a
                            530 ;	SERIAL.c:60: LCD_putSCharAt(player->sline,player->scol, player->line,player->col);
   2523 90 03 62            531 	mov	dptr,#_player
   2526 E0                  532 	movx	a,@dptr
   2527 FA                  533 	mov	r2,a
   2528 A3                  534 	inc	dptr
   2529 E0                  535 	movx	a,@dptr
   252A FB                  536 	mov	r3,a
   252B A3                  537 	inc	dptr
   252C E0                  538 	movx	a,@dptr
   252D FC                  539 	mov	r4,a
   252E 8A 82               540 	mov	dpl,r2
   2530 8B 83               541 	mov	dph,r3
   2532 8C F0               542 	mov	b,r4
   2534 12 35 CD            543 	lcall	__gptrget
   2537 FD                  544 	mov	r5,a
   2538 74 01               545 	mov	a,#0x01
   253A 2A                  546 	add	a,r2
   253B FE                  547 	mov	r6,a
   253C E4                  548 	clr	a
   253D 3B                  549 	addc	a,r3
   253E FF                  550 	mov	r7,a
   253F 8C 00               551 	mov	ar0,r4
   2541 8E 82               552 	mov	dpl,r6
   2543 8F 83               553 	mov	dph,r7
   2545 88 F0               554 	mov	b,r0
   2547 12 35 CD            555 	lcall	__gptrget
   254A FE                  556 	mov	r6,a
   254B 74 02               557 	mov	a,#0x02
   254D 2A                  558 	add	a,r2
   254E FF                  559 	mov	r7,a
   254F E4                  560 	clr	a
   2550 3B                  561 	addc	a,r3
   2551 F8                  562 	mov	r0,a
   2552 8C 01               563 	mov	ar1,r4
   2554 8F 82               564 	mov	dpl,r7
   2556 88 83               565 	mov	dph,r0
   2558 89 F0               566 	mov	b,r1
   255A 12 35 CD            567 	lcall	__gptrget
   255D FF                  568 	mov	r7,a
   255E 74 03               569 	mov	a,#0x03
   2560 2A                  570 	add	a,r2
   2561 FA                  571 	mov	r2,a
   2562 E4                  572 	clr	a
   2563 3B                  573 	addc	a,r3
   2564 FB                  574 	mov	r3,a
   2565 8A 82               575 	mov	dpl,r2
   2567 8B 83               576 	mov	dph,r3
   2569 8C F0               577 	mov	b,r4
   256B 12 35 CD            578 	lcall	__gptrget
   256E FA                  579 	mov	r2,a
   256F 90 02 C5            580 	mov	dptr,#_LCD_putSCharAt_PARM_2
   2572 EE                  581 	mov	a,r6
   2573 F0                  582 	movx	@dptr,a
   2574 90 02 C6            583 	mov	dptr,#_LCD_putSCharAt_PARM_3
   2577 EF                  584 	mov	a,r7
   2578 F0                  585 	movx	@dptr,a
   2579 90 02 C7            586 	mov	dptr,#_LCD_putSCharAt_PARM_4
   257C EA                  587 	mov	a,r2
   257D F0                  588 	movx	@dptr,a
   257E 8D 82               589 	mov	dpl,r5
   2580 12 22 A5            590 	lcall	_LCD_putSCharAt
                            591 ;	SERIAL.c:62: if(RI){
   2583 20 98 03            592 	jb	_RI,00214$
   2586 02 2F C0            593 	ljmp	00178$
   2589                     594 00214$:
                            595 ;	SERIAL.c:63: rxMsg = receiver();
   2589 12 24 BE            596 	lcall	_receiver
   258C AA 82               597 	mov	r2,dpl
   258E 90 03 99            598 	mov	dptr,#_rxMsg
   2591 EA                  599 	mov	a,r2
   2592 F0                  600 	movx	@dptr,a
                            601 ;	SERIAL.c:65: if(rxMsg == 'w' || rxMsg == 'W'){		
   2593 BA 77 02            602 	cjne	r2,#0x77,00215$
   2596 80 08               603 	sjmp	00173$
   2598                     604 00215$:
   2598 BA 57 02            605 	cjne	r2,#0x57,00216$
   259B 80 03               606 	sjmp	00217$
   259D                     607 00216$:
   259D 02 28 36            608 	ljmp	00174$
   25A0                     609 00217$:
   25A0                     610 00173$:
                            611 ;	SERIAL.c:67: if((player->sline - 1) >0)
   25A0 90 03 62            612 	mov	dptr,#_player
   25A3 E0                  613 	movx	a,@dptr
   25A4 FB                  614 	mov	r3,a
   25A5 A3                  615 	inc	dptr
   25A6 E0                  616 	movx	a,@dptr
   25A7 FC                  617 	mov	r4,a
   25A8 A3                  618 	inc	dptr
   25A9 E0                  619 	movx	a,@dptr
   25AA FD                  620 	mov	r5,a
   25AB 8B 82               621 	mov	dpl,r3
   25AD 8C 83               622 	mov	dph,r4
   25AF 8D F0               623 	mov	b,r5
   25B1 12 35 CD            624 	lcall	__gptrget
   25B4 FE                  625 	mov	r6,a
   25B5 FF                  626 	mov	r7,a
   25B6 78 00               627 	mov	r0,#0x00
   25B8 1F                  628 	dec	r7
   25B9 BF FF 01            629 	cjne	r7,#0xff,00218$
   25BC 18                  630 	dec	r0
   25BD                     631 00218$:
   25BD C3                  632 	clr	c
   25BE E4                  633 	clr	a
   25BF 9F                  634 	subb	a,r7
   25C0 74 80               635 	mov	a,#(0x00 ^ 0x80)
   25C2 88 F0               636 	mov	b,r0
   25C4 63 F0 80            637 	xrl	b,#0x80
   25C7 95 F0               638 	subb	a,b
   25C9 40 03               639 	jc	00219$
   25CB 02 26 B8            640 	ljmp	00109$
   25CE                     641 00219$:
                            642 ;	SERIAL.c:68: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-2] & (pow(2,5-player->scol));
   25CE 74 02               643 	mov	a,#0x02
   25D0 2B                  644 	add	a,r3
   25D1 FF                  645 	mov	r7,a
   25D2 E4                  646 	clr	a
   25D3 3C                  647 	addc	a,r4
   25D4 F8                  648 	mov	r0,a
   25D5 8D 01               649 	mov	ar1,r5
   25D7 8F 82               650 	mov	dpl,r7
   25D9 88 83               651 	mov	dph,r0
   25DB 89 F0               652 	mov	b,r1
   25DD 12 35 CD            653 	lcall	__gptrget
   25E0 78 00               654 	mov	r0,#0x00
   25E2 24 FF               655 	add	a,#0xff
   25E4 F5 0C               656 	mov	_serialControl_sloc0_1_0,a
   25E6 E8                  657 	mov	a,r0
   25E7 34 FF               658 	addc	a,#0xff
   25E9 F5 0D               659 	mov	(_serialControl_sloc0_1_0 + 1),a
   25EB 90 03 6B            660 	mov	dptr,#_serialControl_PARM_2
   25EE E0                  661 	movx	a,@dptr
   25EF F5 0E               662 	mov	_serialControl_sloc1_1_0,a
   25F1 A3                  663 	inc	dptr
   25F2 E0                  664 	movx	a,@dptr
   25F3 F5 0F               665 	mov	(_serialControl_sloc1_1_0 + 1),a
   25F5 A3                  666 	inc	dptr
   25F6 E0                  667 	movx	a,@dptr
   25F7 F5 10               668 	mov	(_serialControl_sloc1_1_0 + 2),a
   25F9 AF 0C               669 	mov	r7,_serialControl_sloc0_1_0
   25FB E5 0D               670 	mov	a,(_serialControl_sloc0_1_0 + 1)
   25FD C4                  671 	swap	a
   25FE 54 F0               672 	anl	a,#0xf0
   2600 CF                  673 	xch	a,r7
   2601 C4                  674 	swap	a
   2602 CF                  675 	xch	a,r7
   2603 6F                  676 	xrl	a,r7
   2604 CF                  677 	xch	a,r7
   2605 54 F0               678 	anl	a,#0xf0
   2607 CF                  679 	xch	a,r7
   2608 6F                  680 	xrl	a,r7
   2609 F8                  681 	mov	r0,a
   260A EF                  682 	mov	a,r7
   260B 25 0E               683 	add	a,_serialControl_sloc1_1_0
   260D F5 0E               684 	mov	_serialControl_sloc1_1_0,a
   260F E8                  685 	mov	a,r0
   2610 35 0F               686 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2612 F5 0F               687 	mov	(_serialControl_sloc1_1_0 + 1),a
   2614 74 03               688 	mov	a,#0x03
   2616 2B                  689 	add	a,r3
   2617 FF                  690 	mov	r7,a
   2618 E4                  691 	clr	a
   2619 3C                  692 	addc	a,r4
   261A F8                  693 	mov	r0,a
   261B 8D 01               694 	mov	ar1,r5
   261D 8F 82               695 	mov	dpl,r7
   261F 88 83               696 	mov	dph,r0
   2621 89 F0               697 	mov	b,r1
   2623 12 35 CD            698 	lcall	__gptrget
   2626 14                  699 	dec	a
   2627 25 0E               700 	add	a,_serialControl_sloc1_1_0
   2629 FF                  701 	mov	r7,a
   262A E4                  702 	clr	a
   262B 35 0F               703 	addc	a,(_serialControl_sloc1_1_0 + 1)
   262D F8                  704 	mov	r0,a
   262E A9 10               705 	mov	r1,(_serialControl_sloc1_1_0 + 2)
   2630 8F 82               706 	mov	dpl,r7
   2632 88 83               707 	mov	dph,r0
   2634 89 F0               708 	mov	b,r1
   2636 12 35 CD            709 	lcall	__gptrget
   2639 FF                  710 	mov	r7,a
   263A 33                  711 	rlc	a
   263B 95 E0               712 	subb	a,acc
   263D F8                  713 	mov	r0,a
   263E EF                  714 	mov	a,r7
   263F 24 FF               715 	add	a,#0xff
   2641 F5 0E               716 	mov	_serialControl_sloc1_1_0,a
   2643 E8                  717 	mov	a,r0
   2644 34 FF               718 	addc	a,#0xff
   2646 F5 0F               719 	mov	(_serialControl_sloc1_1_0 + 1),a
   2648 90 03 6E            720 	mov	dptr,#_serialControl_scmap_1_1
   264B E0                  721 	movx	a,@dptr
   264C F5 11               722 	mov	_serialControl_sloc2_1_0,a
   264E A3                  723 	inc	dptr
   264F E0                  724 	movx	a,@dptr
   2650 F5 12               725 	mov	(_serialControl_sloc2_1_0 + 1),a
   2652 A3                  726 	inc	dptr
   2653 E0                  727 	movx	a,@dptr
   2654 F5 13               728 	mov	(_serialControl_sloc2_1_0 + 2),a
   2656 AF 0E               729 	mov	r7,_serialControl_sloc1_1_0
   2658 E5 0F               730 	mov	a,(_serialControl_sloc1_1_0 + 1)
   265A C4                  731 	swap	a
   265B 03                  732 	rr	a
   265C 54 F8               733 	anl	a,#0xf8
   265E CF                  734 	xch	a,r7
   265F C4                  735 	swap	a
   2660 03                  736 	rr	a
   2661 CF                  737 	xch	a,r7
   2662 6F                  738 	xrl	a,r7
   2663 CF                  739 	xch	a,r7
   2664 54 F8               740 	anl	a,#0xf8
   2666 CF                  741 	xch	a,r7
   2667 6F                  742 	xrl	a,r7
   2668 F8                  743 	mov	r0,a
   2669 EF                  744 	mov	a,r7
   266A 25 11               745 	add	a,_serialControl_sloc2_1_0
   266C FF                  746 	mov	r7,a
   266D E8                  747 	mov	a,r0
   266E 35 12               748 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2670 F8                  749 	mov	r0,a
   2671 A9 13               750 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   2673 EE                  751 	mov	a,r6
   2674 24 FE               752 	add	a,#0xfe
   2676 2F                  753 	add	a,r7
   2677 F5 11               754 	mov	_serialControl_sloc2_1_0,a
   2679 E4                  755 	clr	a
   267A 38                  756 	addc	a,r0
   267B F5 12               757 	mov	(_serialControl_sloc2_1_0 + 1),a
   267D 89 13               758 	mov	(_serialControl_sloc2_1_0 + 2),r1
   267F 74 01               759 	mov	a,#0x01
   2681 2B                  760 	add	a,r3
   2682 FF                  761 	mov	r7,a
   2683 E4                  762 	clr	a
   2684 3C                  763 	addc	a,r4
   2685 F8                  764 	mov	r0,a
   2686 8D 01               765 	mov	ar1,r5
   2688 8F 82               766 	mov	dpl,r7
   268A 88 83               767 	mov	dph,r0
   268C 89 F0               768 	mov	b,r1
   268E 12 35 CD            769 	lcall	__gptrget
   2691 FF                  770 	mov	r7,a
   2692 90 03 82            771 	mov	dptr,#_pow_PARM_2
   2695 74 05               772 	mov	a,#0x05
   2697 C3                  773 	clr	c
   2698 9F                  774 	subb	a,r7
   2699 F0                  775 	movx	@dptr,a
   269A 75 82 02            776 	mov	dpl,#0x02
   269D 12 32 41            777 	lcall	_pow
   26A0 AF 82               778 	mov	r7,dpl
   26A2 85 11 82            779 	mov	dpl,_serialControl_sloc2_1_0
   26A5 85 12 83            780 	mov	dph,(_serialControl_sloc2_1_0 + 1)
   26A8 85 13 F0            781 	mov	b,(_serialControl_sloc2_1_0 + 2)
   26AB 12 35 CD            782 	lcall	__gptrget
   26AE F8                  783 	mov	r0,a
   26AF 90 03 71            784 	mov	dptr,#_serialControl_logic_op_1_1
   26B2 EF                  785 	mov	a,r7
   26B3 58                  786 	anl	a,r0
   26B4 F0                  787 	movx	@dptr,a
   26B5 02 27 D2            788 	ljmp	00110$
   26B8                     789 00109$:
                            790 ;	SERIAL.c:69: else if(player->sline == 1 && player->line > 1)
   26B8 E4                  791 	clr	a
   26B9 BE 01 01            792 	cjne	r6,#0x01,00220$
   26BC 04                  793 	inc	a
   26BD                     794 00220$:
   26BD FE                  795 	mov	r6,a
   26BE 70 03               796 	jnz	00222$
   26C0 02 27 B7            797 	ljmp	00105$
   26C3                     798 00222$:
   26C3 74 02               799 	mov	a,#0x02
   26C5 2B                  800 	add	a,r3
   26C6 FF                  801 	mov	r7,a
   26C7 E4                  802 	clr	a
   26C8 3C                  803 	addc	a,r4
   26C9 F8                  804 	mov	r0,a
   26CA 8D 01               805 	mov	ar1,r5
   26CC 8F 82               806 	mov	dpl,r7
   26CE 88 83               807 	mov	dph,r0
   26D0 89 F0               808 	mov	b,r1
   26D2 12 35 CD            809 	lcall	__gptrget
   26D5 FF                  810 	mov  r7,a
   26D6 24 FE               811 	add	a,#0xff - 0x01
   26D8 40 03               812 	jc	00223$
   26DA 02 27 B7            813 	ljmp	00105$
   26DD                     814 00223$:
                            815 ;	SERIAL.c:70: logic_op = scmap[(map[player->line-2][player->col-1].schar) - 1].adds[7] & (pow(2,5-player->scol));
   26DD 78 00               816 	mov	r0,#0x00
   26DF EF                  817 	mov	a,r7
   26E0 24 FE               818 	add	a,#0xfe
   26E2 F5 11               819 	mov	_serialControl_sloc2_1_0,a
   26E4 E8                  820 	mov	a,r0
   26E5 34 FF               821 	addc	a,#0xff
   26E7 F5 12               822 	mov	(_serialControl_sloc2_1_0 + 1),a
   26E9 90 03 6B            823 	mov	dptr,#_serialControl_PARM_2
   26EC E0                  824 	movx	a,@dptr
   26ED F5 0E               825 	mov	_serialControl_sloc1_1_0,a
   26EF A3                  826 	inc	dptr
   26F0 E0                  827 	movx	a,@dptr
   26F1 F5 0F               828 	mov	(_serialControl_sloc1_1_0 + 1),a
   26F3 A3                  829 	inc	dptr
   26F4 E0                  830 	movx	a,@dptr
   26F5 F5 10               831 	mov	(_serialControl_sloc1_1_0 + 2),a
   26F7 AF 11               832 	mov	r7,_serialControl_sloc2_1_0
   26F9 E5 12               833 	mov	a,(_serialControl_sloc2_1_0 + 1)
   26FB C4                  834 	swap	a
   26FC 54 F0               835 	anl	a,#0xf0
   26FE CF                  836 	xch	a,r7
   26FF C4                  837 	swap	a
   2700 CF                  838 	xch	a,r7
   2701 6F                  839 	xrl	a,r7
   2702 CF                  840 	xch	a,r7
   2703 54 F0               841 	anl	a,#0xf0
   2705 CF                  842 	xch	a,r7
   2706 6F                  843 	xrl	a,r7
   2707 F8                  844 	mov	r0,a
   2708 EF                  845 	mov	a,r7
   2709 25 0E               846 	add	a,_serialControl_sloc1_1_0
   270B F5 11               847 	mov	_serialControl_sloc2_1_0,a
   270D E8                  848 	mov	a,r0
   270E 35 0F               849 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2710 F5 12               850 	mov	(_serialControl_sloc2_1_0 + 1),a
   2712 85 10 13            851 	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
   2715 74 03               852 	mov	a,#0x03
   2717 2B                  853 	add	a,r3
   2718 FF                  854 	mov	r7,a
   2719 E4                  855 	clr	a
   271A 3C                  856 	addc	a,r4
   271B F8                  857 	mov	r0,a
   271C 8D 01               858 	mov	ar1,r5
   271E 8F 82               859 	mov	dpl,r7
   2720 88 83               860 	mov	dph,r0
   2722 89 F0               861 	mov	b,r1
   2724 12 35 CD            862 	lcall	__gptrget
   2727 14                  863 	dec	a
   2728 25 11               864 	add	a,_serialControl_sloc2_1_0
   272A FF                  865 	mov	r7,a
   272B E4                  866 	clr	a
   272C 35 12               867 	addc	a,(_serialControl_sloc2_1_0 + 1)
   272E F8                  868 	mov	r0,a
   272F A9 13               869 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   2731 8F 82               870 	mov	dpl,r7
   2733 88 83               871 	mov	dph,r0
   2735 89 F0               872 	mov	b,r1
   2737 12 35 CD            873 	lcall	__gptrget
   273A FF                  874 	mov	r7,a
   273B 33                  875 	rlc	a
   273C 95 E0               876 	subb	a,acc
   273E F8                  877 	mov	r0,a
   273F EF                  878 	mov	a,r7
   2740 24 FF               879 	add	a,#0xff
   2742 F5 11               880 	mov	_serialControl_sloc2_1_0,a
   2744 E8                  881 	mov	a,r0
   2745 34 FF               882 	addc	a,#0xff
   2747 F5 12               883 	mov	(_serialControl_sloc2_1_0 + 1),a
   2749 90 03 6E            884 	mov	dptr,#_serialControl_scmap_1_1
   274C E0                  885 	movx	a,@dptr
   274D F5 0E               886 	mov	_serialControl_sloc1_1_0,a
   274F A3                  887 	inc	dptr
   2750 E0                  888 	movx	a,@dptr
   2751 F5 0F               889 	mov	(_serialControl_sloc1_1_0 + 1),a
   2753 A3                  890 	inc	dptr
   2754 E0                  891 	movx	a,@dptr
   2755 F5 10               892 	mov	(_serialControl_sloc1_1_0 + 2),a
   2757 AF 11               893 	mov	r7,_serialControl_sloc2_1_0
   2759 E5 12               894 	mov	a,(_serialControl_sloc2_1_0 + 1)
   275B C4                  895 	swap	a
   275C 03                  896 	rr	a
   275D 54 F8               897 	anl	a,#0xf8
   275F CF                  898 	xch	a,r7
   2760 C4                  899 	swap	a
   2761 03                  900 	rr	a
   2762 CF                  901 	xch	a,r7
   2763 6F                  902 	xrl	a,r7
   2764 CF                  903 	xch	a,r7
   2765 54 F8               904 	anl	a,#0xf8
   2767 CF                  905 	xch	a,r7
   2768 6F                  906 	xrl	a,r7
   2769 F8                  907 	mov	r0,a
   276A EF                  908 	mov	a,r7
   276B 25 0E               909 	add	a,_serialControl_sloc1_1_0
   276D FF                  910 	mov	r7,a
   276E E8                  911 	mov	a,r0
   276F 35 0F               912 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2771 F8                  913 	mov	r0,a
   2772 A9 10               914 	mov	r1,(_serialControl_sloc1_1_0 + 2)
   2774 74 07               915 	mov	a,#0x07
   2776 2F                  916 	add	a,r7
   2777 F5 11               917 	mov	_serialControl_sloc2_1_0,a
   2779 E4                  918 	clr	a
   277A 38                  919 	addc	a,r0
   277B F5 12               920 	mov	(_serialControl_sloc2_1_0 + 1),a
   277D 89 13               921 	mov	(_serialControl_sloc2_1_0 + 2),r1
   277F 74 01               922 	mov	a,#0x01
   2781 2B                  923 	add	a,r3
   2782 FF                  924 	mov	r7,a
   2783 E4                  925 	clr	a
   2784 3C                  926 	addc	a,r4
   2785 F8                  927 	mov	r0,a
   2786 8D 01               928 	mov	ar1,r5
   2788 8F 82               929 	mov	dpl,r7
   278A 88 83               930 	mov	dph,r0
   278C 89 F0               931 	mov	b,r1
   278E 12 35 CD            932 	lcall	__gptrget
   2791 FF                  933 	mov	r7,a
   2792 90 03 82            934 	mov	dptr,#_pow_PARM_2
   2795 74 05               935 	mov	a,#0x05
   2797 C3                  936 	clr	c
   2798 9F                  937 	subb	a,r7
   2799 F0                  938 	movx	@dptr,a
   279A 75 82 02            939 	mov	dpl,#0x02
   279D 12 32 41            940 	lcall	_pow
   27A0 AF 82               941 	mov	r7,dpl
   27A2 85 11 82            942 	mov	dpl,_serialControl_sloc2_1_0
   27A5 85 12 83            943 	mov	dph,(_serialControl_sloc2_1_0 + 1)
   27A8 85 13 F0            944 	mov	b,(_serialControl_sloc2_1_0 + 2)
   27AB 12 35 CD            945 	lcall	__gptrget
   27AE F8                  946 	mov	r0,a
   27AF 90 03 71            947 	mov	dptr,#_serialControl_logic_op_1_1
   27B2 EF                  948 	mov	a,r7
   27B3 58                  949 	anl	a,r0
   27B4 F0                  950 	movx	@dptr,a
   27B5 80 1B               951 	sjmp	00110$
   27B7                     952 00105$:
                            953 ;	SERIAL.c:71: else if(player->sline == 1 && player->line == 1 )
   27B7 EE                  954 	mov	a,r6
   27B8 60 18               955 	jz	00110$
   27BA 74 02               956 	mov	a,#0x02
   27BC 2B                  957 	add	a,r3
   27BD FB                  958 	mov	r3,a
   27BE E4                  959 	clr	a
   27BF 3C                  960 	addc	a,r4
   27C0 FC                  961 	mov	r4,a
   27C1 8B 82               962 	mov	dpl,r3
   27C3 8C 83               963 	mov	dph,r4
   27C5 8D F0               964 	mov	b,r5
   27C7 12 35 CD            965 	lcall	__gptrget
   27CA FB                  966 	mov	r3,a
   27CB BB 01 04            967 	cjne	r3,#0x01,00110$
                            968 ;	SERIAL.c:72: return 0;
   27CE 75 82 00            969 	mov	dpl,#0x00
   27D1 22                  970 	ret
   27D2                     971 00110$:
                            972 ;	SERIAL.c:75: if(logic_op == 0){
   27D2 90 03 71            973 	mov	dptr,#_serialControl_logic_op_1_1
   27D5 E0                  974 	movx	a,@dptr
   27D6 FB                  975 	mov	r3,a
   27D7 60 03               976 	jz	00227$
   27D9 02 2F BB            977 	ljmp	00175$
   27DC                     978 00227$:
                            979 ;	SERIAL.c:76: if(player->sline != 1)
   27DC 90 03 62            980 	mov	dptr,#_player
   27DF E0                  981 	movx	a,@dptr
   27E0 FB                  982 	mov	r3,a
   27E1 A3                  983 	inc	dptr
   27E2 E0                  984 	movx	a,@dptr
   27E3 FC                  985 	mov	r4,a
   27E4 A3                  986 	inc	dptr
   27E5 E0                  987 	movx	a,@dptr
   27E6 FD                  988 	mov	r5,a
   27E7 8B 82               989 	mov	dpl,r3
   27E9 8C 83               990 	mov	dph,r4
   27EB 8D F0               991 	mov	b,r5
   27ED 12 35 CD            992 	lcall	__gptrget
   27F0 FE                  993 	mov	r6,a
   27F1 BE 01 02            994 	cjne	r6,#0x01,00228$
   27F4 80 0E               995 	sjmp	00114$
   27F6                     996 00228$:
                            997 ;	SERIAL.c:77: player->sline--;
   27F6 1E                  998 	dec	r6
   27F7 8B 82               999 	mov	dpl,r3
   27F9 8C 83              1000 	mov	dph,r4
   27FB 8D F0              1001 	mov	b,r5
   27FD EE                 1002 	mov	a,r6
   27FE 12 34 09           1003 	lcall	__gptrput
   2801 02 2F BB           1004 	ljmp	00175$
   2804                    1005 00114$:
                           1006 ;	SERIAL.c:79: if(player->line != 1){
   2804 74 02              1007 	mov	a,#0x02
   2806 2B                 1008 	add	a,r3
   2807 FE                 1009 	mov	r6,a
   2808 E4                 1010 	clr	a
   2809 3C                 1011 	addc	a,r4
   280A FF                 1012 	mov	r7,a
   280B 8D 00              1013 	mov	ar0,r5
   280D 8E 82              1014 	mov	dpl,r6
   280F 8F 83              1015 	mov	dph,r7
   2811 88 F0              1016 	mov	b,r0
   2813 12 35 CD           1017 	lcall	__gptrget
   2816 F9                 1018 	mov	r1,a
   2817 B9 01 03           1019 	cjne	r1,#0x01,00229$
   281A 02 2F BB           1020 	ljmp	00175$
   281D                    1021 00229$:
                           1022 ;	SERIAL.c:80: player->sline = 8;
   281D 8B 82              1023 	mov	dpl,r3
   281F 8C 83              1024 	mov	dph,r4
   2821 8D F0              1025 	mov	b,r5
   2823 74 08              1026 	mov	a,#0x08
   2825 12 34 09           1027 	lcall	__gptrput
                           1028 ;	SERIAL.c:81: player->line--;
   2828 19                 1029 	dec	r1
   2829 8E 82              1030 	mov	dpl,r6
   282B 8F 83              1031 	mov	dph,r7
   282D 88 F0              1032 	mov	b,r0
   282F E9                 1033 	mov	a,r1
   2830 12 34 09           1034 	lcall	__gptrput
   2833 02 2F BB           1035 	ljmp	00175$
   2836                    1036 00174$:
                           1037 ;	SERIAL.c:89: else if(rxMsg == 's' || rxMsg == 'S'){
   2836 BA 73 02           1038 	cjne	r2,#0x73,00230$
   2839 80 08              1039 	sjmp	00169$
   283B                    1040 00230$:
   283B BA 53 02           1041 	cjne	r2,#0x53,00231$
   283E 80 03              1042 	sjmp	00232$
   2840                    1043 00231$:
   2840 02 2A 82           1044 	ljmp	00170$
   2843                    1045 00232$:
   2843                    1046 00169$:
                           1047 ;	SERIAL.c:92: if((player->sline-1) < 7)
   2843 90 03 62           1048 	mov	dptr,#_player
   2846 E0                 1049 	movx	a,@dptr
   2847 FB                 1050 	mov	r3,a
   2848 A3                 1051 	inc	dptr
   2849 E0                 1052 	movx	a,@dptr
   284A FC                 1053 	mov	r4,a
   284B A3                 1054 	inc	dptr
   284C E0                 1055 	movx	a,@dptr
   284D FD                 1056 	mov	r5,a
   284E 8B 82              1057 	mov	dpl,r3
   2850 8C 83              1058 	mov	dph,r4
   2852 8D F0              1059 	mov	b,r5
   2854 12 35 CD           1060 	lcall	__gptrget
   2857 FE                 1061 	mov	r6,a
   2858 FF                 1062 	mov	r7,a
   2859 78 00              1063 	mov	r0,#0x00
   285B 1F                 1064 	dec	r7
   285C BF FF 01           1065 	cjne	r7,#0xff,00233$
   285F 18                 1066 	dec	r0
   2860                    1067 00233$:
   2860 C3                 1068 	clr	c
   2861 EF                 1069 	mov	a,r7
   2862 94 07              1070 	subb	a,#0x07
   2864 E8                 1071 	mov	a,r0
   2865 64 80              1072 	xrl	a,#0x80
   2867 94 80              1073 	subb	a,#0x80
   2869 40 03              1074 	jc	00234$
   286B 02 29 59           1075 	ljmp	00119$
   286E                    1076 00234$:
                           1077 ;	SERIAL.c:93: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline] & (pow(2,5-player->scol));
   286E 74 02              1078 	mov	a,#0x02
   2870 2B                 1079 	add	a,r3
   2871 FF                 1080 	mov	r7,a
   2872 E4                 1081 	clr	a
   2873 3C                 1082 	addc	a,r4
   2874 F8                 1083 	mov	r0,a
   2875 8D 01              1084 	mov	ar1,r5
   2877 8F 82              1085 	mov	dpl,r7
   2879 88 83              1086 	mov	dph,r0
   287B 89 F0              1087 	mov	b,r1
   287D 12 35 CD           1088 	lcall	__gptrget
   2880 78 00              1089 	mov	r0,#0x00
   2882 24 FF              1090 	add	a,#0xff
   2884 F5 11              1091 	mov	_serialControl_sloc2_1_0,a
   2886 E8                 1092 	mov	a,r0
   2887 34 FF              1093 	addc	a,#0xff
   2889 F5 12              1094 	mov	(_serialControl_sloc2_1_0 + 1),a
   288B 90 03 6B           1095 	mov	dptr,#_serialControl_PARM_2
   288E E0                 1096 	movx	a,@dptr
   288F F5 0E              1097 	mov	_serialControl_sloc1_1_0,a
   2891 A3                 1098 	inc	dptr
   2892 E0                 1099 	movx	a,@dptr
   2893 F5 0F              1100 	mov	(_serialControl_sloc1_1_0 + 1),a
   2895 A3                 1101 	inc	dptr
   2896 E0                 1102 	movx	a,@dptr
   2897 F5 10              1103 	mov	(_serialControl_sloc1_1_0 + 2),a
   2899 AF 11              1104 	mov	r7,_serialControl_sloc2_1_0
   289B E5 12              1105 	mov	a,(_serialControl_sloc2_1_0 + 1)
   289D C4                 1106 	swap	a
   289E 54 F0              1107 	anl	a,#0xf0
   28A0 CF                 1108 	xch	a,r7
   28A1 C4                 1109 	swap	a
   28A2 CF                 1110 	xch	a,r7
   28A3 6F                 1111 	xrl	a,r7
   28A4 CF                 1112 	xch	a,r7
   28A5 54 F0              1113 	anl	a,#0xf0
   28A7 CF                 1114 	xch	a,r7
   28A8 6F                 1115 	xrl	a,r7
   28A9 F8                 1116 	mov	r0,a
   28AA EF                 1117 	mov	a,r7
   28AB 25 0E              1118 	add	a,_serialControl_sloc1_1_0
   28AD F5 11              1119 	mov	_serialControl_sloc2_1_0,a
   28AF E8                 1120 	mov	a,r0
   28B0 35 0F              1121 	addc	a,(_serialControl_sloc1_1_0 + 1)
   28B2 F5 12              1122 	mov	(_serialControl_sloc2_1_0 + 1),a
   28B4 85 10 13           1123 	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
   28B7 74 03              1124 	mov	a,#0x03
   28B9 2B                 1125 	add	a,r3
   28BA FF                 1126 	mov	r7,a
   28BB E4                 1127 	clr	a
   28BC 3C                 1128 	addc	a,r4
   28BD F8                 1129 	mov	r0,a
   28BE 8D 01              1130 	mov	ar1,r5
   28C0 8F 82              1131 	mov	dpl,r7
   28C2 88 83              1132 	mov	dph,r0
   28C4 89 F0              1133 	mov	b,r1
   28C6 12 35 CD           1134 	lcall	__gptrget
   28C9 14                 1135 	dec	a
   28CA 25 11              1136 	add	a,_serialControl_sloc2_1_0
   28CC FF                 1137 	mov	r7,a
   28CD E4                 1138 	clr	a
   28CE 35 12              1139 	addc	a,(_serialControl_sloc2_1_0 + 1)
   28D0 F8                 1140 	mov	r0,a
   28D1 A9 13              1141 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   28D3 8F 82              1142 	mov	dpl,r7
   28D5 88 83              1143 	mov	dph,r0
   28D7 89 F0              1144 	mov	b,r1
   28D9 12 35 CD           1145 	lcall	__gptrget
   28DC FF                 1146 	mov	r7,a
   28DD 33                 1147 	rlc	a
   28DE 95 E0              1148 	subb	a,acc
   28E0 F8                 1149 	mov	r0,a
   28E1 EF                 1150 	mov	a,r7
   28E2 24 FF              1151 	add	a,#0xff
   28E4 F5 11              1152 	mov	_serialControl_sloc2_1_0,a
   28E6 E8                 1153 	mov	a,r0
   28E7 34 FF              1154 	addc	a,#0xff
   28E9 F5 12              1155 	mov	(_serialControl_sloc2_1_0 + 1),a
   28EB 90 03 6E           1156 	mov	dptr,#_serialControl_scmap_1_1
   28EE E0                 1157 	movx	a,@dptr
   28EF F5 0E              1158 	mov	_serialControl_sloc1_1_0,a
   28F1 A3                 1159 	inc	dptr
   28F2 E0                 1160 	movx	a,@dptr
   28F3 F5 0F              1161 	mov	(_serialControl_sloc1_1_0 + 1),a
   28F5 A3                 1162 	inc	dptr
   28F6 E0                 1163 	movx	a,@dptr
   28F7 F5 10              1164 	mov	(_serialControl_sloc1_1_0 + 2),a
   28F9 AF 11              1165 	mov	r7,_serialControl_sloc2_1_0
   28FB E5 12              1166 	mov	a,(_serialControl_sloc2_1_0 + 1)
   28FD C4                 1167 	swap	a
   28FE 03                 1168 	rr	a
   28FF 54 F8              1169 	anl	a,#0xf8
   2901 CF                 1170 	xch	a,r7
   2902 C4                 1171 	swap	a
   2903 03                 1172 	rr	a
   2904 CF                 1173 	xch	a,r7
   2905 6F                 1174 	xrl	a,r7
   2906 CF                 1175 	xch	a,r7
   2907 54 F8              1176 	anl	a,#0xf8
   2909 CF                 1177 	xch	a,r7
   290A 6F                 1178 	xrl	a,r7
   290B F8                 1179 	mov	r0,a
   290C EF                 1180 	mov	a,r7
   290D 25 0E              1181 	add	a,_serialControl_sloc1_1_0
   290F FF                 1182 	mov	r7,a
   2910 E8                 1183 	mov	a,r0
   2911 35 0F              1184 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2913 F8                 1185 	mov	r0,a
   2914 A9 10              1186 	mov	r1,(_serialControl_sloc1_1_0 + 2)
   2916 EE                 1187 	mov	a,r6
   2917 2F                 1188 	add	a,r7
   2918 F5 11              1189 	mov	_serialControl_sloc2_1_0,a
   291A E4                 1190 	clr	a
   291B 38                 1191 	addc	a,r0
   291C F5 12              1192 	mov	(_serialControl_sloc2_1_0 + 1),a
   291E 89 13              1193 	mov	(_serialControl_sloc2_1_0 + 2),r1
   2920 74 01              1194 	mov	a,#0x01
   2922 2B                 1195 	add	a,r3
   2923 FE                 1196 	mov	r6,a
   2924 E4                 1197 	clr	a
   2925 3C                 1198 	addc	a,r4
   2926 FF                 1199 	mov	r7,a
   2927 8D 00              1200 	mov	ar0,r5
   2929 8E 82              1201 	mov	dpl,r6
   292B 8F 83              1202 	mov	dph,r7
   292D 88 F0              1203 	mov	b,r0
   292F 12 35 CD           1204 	lcall	__gptrget
   2932 FE                 1205 	mov	r6,a
   2933 90 03 82           1206 	mov	dptr,#_pow_PARM_2
   2936 74 05              1207 	mov	a,#0x05
   2938 C3                 1208 	clr	c
   2939 9E                 1209 	subb	a,r6
   293A F0                 1210 	movx	@dptr,a
   293B 75 82 02           1211 	mov	dpl,#0x02
   293E 12 32 41           1212 	lcall	_pow
   2941 AE 82              1213 	mov	r6,dpl
   2943 85 11 82           1214 	mov	dpl,_serialControl_sloc2_1_0
   2946 85 12 83           1215 	mov	dph,(_serialControl_sloc2_1_0 + 1)
   2949 85 13 F0           1216 	mov	b,(_serialControl_sloc2_1_0 + 2)
   294C 12 35 CD           1217 	lcall	__gptrget
   294F FF                 1218 	mov	r7,a
   2950 90 03 71           1219 	mov	dptr,#_serialControl_logic_op_1_1
   2953 EE                 1220 	mov	a,r6
   2954 5F                 1221 	anl	a,r7
   2955 F0                 1222 	movx	@dptr,a
   2956 02 2A 1E           1223 	ljmp	00120$
   2959                    1224 00119$:
                           1225 ;	SERIAL.c:95: logic_op = scmap[(map[player->line][player->col-1].schar) - 1].adds[0] & (pow(2,5-player->scol));	
   2959 74 02              1226 	mov	a,#0x02
   295B 2B                 1227 	add	a,r3
   295C FE                 1228 	mov	r6,a
   295D E4                 1229 	clr	a
   295E 3C                 1230 	addc	a,r4
   295F FF                 1231 	mov	r7,a
   2960 8D 00              1232 	mov	ar0,r5
   2962 8E 82              1233 	mov	dpl,r6
   2964 8F 83              1234 	mov	dph,r7
   2966 88 F0              1235 	mov	b,r0
   2968 12 35 CD           1236 	lcall	__gptrget
   296B FE                 1237 	mov	r6,a
   296C 90 03 6B           1238 	mov	dptr,#_serialControl_PARM_2
   296F E0                 1239 	movx	a,@dptr
   2970 FF                 1240 	mov	r7,a
   2971 A3                 1241 	inc	dptr
   2972 E0                 1242 	movx	a,@dptr
   2973 F8                 1243 	mov	r0,a
   2974 A3                 1244 	inc	dptr
   2975 E0                 1245 	movx	a,@dptr
   2976 F9                 1246 	mov	r1,a
   2977 EE                 1247 	mov	a,r6
   2978 C4                 1248 	swap	a
   2979 54 F0              1249 	anl	a,#0xf0
   297B 2F                 1250 	add	a,r7
   297C F5 11              1251 	mov	_serialControl_sloc2_1_0,a
   297E E4                 1252 	clr	a
   297F 38                 1253 	addc	a,r0
   2980 F5 12              1254 	mov	(_serialControl_sloc2_1_0 + 1),a
   2982 89 13              1255 	mov	(_serialControl_sloc2_1_0 + 2),r1
   2984 74 03              1256 	mov	a,#0x03
   2986 2B                 1257 	add	a,r3
   2987 FE                 1258 	mov	r6,a
   2988 E4                 1259 	clr	a
   2989 3C                 1260 	addc	a,r4
   298A FF                 1261 	mov	r7,a
   298B 8D 00              1262 	mov	ar0,r5
   298D 8E 82              1263 	mov	dpl,r6
   298F 8F 83              1264 	mov	dph,r7
   2991 88 F0              1265 	mov	b,r0
   2993 12 35 CD           1266 	lcall	__gptrget
   2996 14                 1267 	dec	a
   2997 25 11              1268 	add	a,_serialControl_sloc2_1_0
   2999 FE                 1269 	mov	r6,a
   299A E4                 1270 	clr	a
   299B 35 12              1271 	addc	a,(_serialControl_sloc2_1_0 + 1)
   299D FF                 1272 	mov	r7,a
   299E A8 13              1273 	mov	r0,(_serialControl_sloc2_1_0 + 2)
   29A0 8E 82              1274 	mov	dpl,r6
   29A2 8F 83              1275 	mov	dph,r7
   29A4 88 F0              1276 	mov	b,r0
   29A6 12 35 CD           1277 	lcall	__gptrget
   29A9 FE                 1278 	mov	r6,a
   29AA 33                 1279 	rlc	a
   29AB 95 E0              1280 	subb	a,acc
   29AD FF                 1281 	mov	r7,a
   29AE EE                 1282 	mov	a,r6
   29AF 24 FF              1283 	add	a,#0xff
   29B1 F5 11              1284 	mov	_serialControl_sloc2_1_0,a
   29B3 EF                 1285 	mov	a,r7
   29B4 34 FF              1286 	addc	a,#0xff
   29B6 F5 12              1287 	mov	(_serialControl_sloc2_1_0 + 1),a
   29B8 90 03 6E           1288 	mov	dptr,#_serialControl_scmap_1_1
   29BB E0                 1289 	movx	a,@dptr
   29BC F5 0E              1290 	mov	_serialControl_sloc1_1_0,a
   29BE A3                 1291 	inc	dptr
   29BF E0                 1292 	movx	a,@dptr
   29C0 F5 0F              1293 	mov	(_serialControl_sloc1_1_0 + 1),a
   29C2 A3                 1294 	inc	dptr
   29C3 E0                 1295 	movx	a,@dptr
   29C4 F5 10              1296 	mov	(_serialControl_sloc1_1_0 + 2),a
   29C6 AF 11              1297 	mov	r7,_serialControl_sloc2_1_0
   29C8 E5 12              1298 	mov	a,(_serialControl_sloc2_1_0 + 1)
   29CA C4                 1299 	swap	a
   29CB 03                 1300 	rr	a
   29CC 54 F8              1301 	anl	a,#0xf8
   29CE CF                 1302 	xch	a,r7
   29CF C4                 1303 	swap	a
   29D0 03                 1304 	rr	a
   29D1 CF                 1305 	xch	a,r7
   29D2 6F                 1306 	xrl	a,r7
   29D3 CF                 1307 	xch	a,r7
   29D4 54 F8              1308 	anl	a,#0xf8
   29D6 CF                 1309 	xch	a,r7
   29D7 6F                 1310 	xrl	a,r7
   29D8 FE                 1311 	mov	r6,a
   29D9 EF                 1312 	mov	a,r7
   29DA 25 0E              1313 	add	a,_serialControl_sloc1_1_0
   29DC FF                 1314 	mov	r7,a
   29DD EE                 1315 	mov	a,r6
   29DE 35 0F              1316 	addc	a,(_serialControl_sloc1_1_0 + 1)
   29E0 FE                 1317 	mov	r6,a
   29E1 A8 10              1318 	mov	r0,(_serialControl_sloc1_1_0 + 2)
   29E3 0B                 1319 	inc	r3
   29E4 BB 00 01           1320 	cjne	r3,#0x00,00235$
   29E7 0C                 1321 	inc	r4
   29E8                    1322 00235$:
   29E8 8B 82              1323 	mov	dpl,r3
   29EA 8C 83              1324 	mov	dph,r4
   29EC 8D F0              1325 	mov	b,r5
   29EE 12 35 CD           1326 	lcall	__gptrget
   29F1 FB                 1327 	mov	r3,a
   29F2 90 03 82           1328 	mov	dptr,#_pow_PARM_2
   29F5 74 05              1329 	mov	a,#0x05
   29F7 C3                 1330 	clr	c
   29F8 9B                 1331 	subb	a,r3
   29F9 F0                 1332 	movx	@dptr,a
   29FA 75 82 02           1333 	mov	dpl,#0x02
   29FD C0 06              1334 	push	ar6
   29FF C0 07              1335 	push	ar7
   2A01 C0 00              1336 	push	ar0
   2A03 12 32 41           1337 	lcall	_pow
   2A06 AB 82              1338 	mov	r3,dpl
   2A08 D0 00              1339 	pop	ar0
   2A0A D0 07              1340 	pop	ar7
   2A0C D0 06              1341 	pop	ar6
   2A0E 8F 82              1342 	mov	dpl,r7
   2A10 8E 83              1343 	mov	dph,r6
   2A12 88 F0              1344 	mov	b,r0
   2A14 12 35 CD           1345 	lcall	__gptrget
   2A17 FF                 1346 	mov	r7,a
   2A18 90 03 71           1347 	mov	dptr,#_serialControl_logic_op_1_1
   2A1B EB                 1348 	mov	a,r3
   2A1C 5F                 1349 	anl	a,r7
   2A1D F0                 1350 	movx	@dptr,a
   2A1E                    1351 00120$:
                           1352 ;	SERIAL.c:100: if(logic_op == 0){
   2A1E 90 03 71           1353 	mov	dptr,#_serialControl_logic_op_1_1
   2A21 E0                 1354 	movx	a,@dptr
   2A22 FB                 1355 	mov	r3,a
   2A23 60 03              1356 	jz	00236$
   2A25 02 2F BB           1357 	ljmp	00175$
   2A28                    1358 00236$:
                           1359 ;	SERIAL.c:101: if(player->sline != 8)
   2A28 90 03 62           1360 	mov	dptr,#_player
   2A2B E0                 1361 	movx	a,@dptr
   2A2C FB                 1362 	mov	r3,a
   2A2D A3                 1363 	inc	dptr
   2A2E E0                 1364 	movx	a,@dptr
   2A2F FC                 1365 	mov	r4,a
   2A30 A3                 1366 	inc	dptr
   2A31 E0                 1367 	movx	a,@dptr
   2A32 FD                 1368 	mov	r5,a
   2A33 8B 82              1369 	mov	dpl,r3
   2A35 8C 83              1370 	mov	dph,r4
   2A37 8D F0              1371 	mov	b,r5
   2A39 12 35 CD           1372 	lcall	__gptrget
   2A3C FE                 1373 	mov	r6,a
   2A3D BE 08 02           1374 	cjne	r6,#0x08,00237$
   2A40 80 0E              1375 	sjmp	00124$
   2A42                    1376 00237$:
                           1377 ;	SERIAL.c:102: player->sline++;
   2A42 0E                 1378 	inc	r6
   2A43 8B 82              1379 	mov	dpl,r3
   2A45 8C 83              1380 	mov	dph,r4
   2A47 8D F0              1381 	mov	b,r5
   2A49 EE                 1382 	mov	a,r6
   2A4A 12 34 09           1383 	lcall	__gptrput
   2A4D 02 2F BB           1384 	ljmp	00175$
   2A50                    1385 00124$:
                           1386 ;	SERIAL.c:104: if(player->line != 4){
   2A50 74 02              1387 	mov	a,#0x02
   2A52 2B                 1388 	add	a,r3
   2A53 FE                 1389 	mov	r6,a
   2A54 E4                 1390 	clr	a
   2A55 3C                 1391 	addc	a,r4
   2A56 FF                 1392 	mov	r7,a
   2A57 8D 00              1393 	mov	ar0,r5
   2A59 8E 82              1394 	mov	dpl,r6
   2A5B 8F 83              1395 	mov	dph,r7
   2A5D 88 F0              1396 	mov	b,r0
   2A5F 12 35 CD           1397 	lcall	__gptrget
   2A62 F9                 1398 	mov	r1,a
   2A63 B9 04 03           1399 	cjne	r1,#0x04,00238$
   2A66 02 2F BB           1400 	ljmp	00175$
   2A69                    1401 00238$:
                           1402 ;	SERIAL.c:105: player->sline = 1;
   2A69 8B 82              1403 	mov	dpl,r3
   2A6B 8C 83              1404 	mov	dph,r4
   2A6D 8D F0              1405 	mov	b,r5
   2A6F 74 01              1406 	mov	a,#0x01
   2A71 12 34 09           1407 	lcall	__gptrput
                           1408 ;	SERIAL.c:106: player->line++;
   2A74 09                 1409 	inc	r1
   2A75 8E 82              1410 	mov	dpl,r6
   2A77 8F 83              1411 	mov	dph,r7
   2A79 88 F0              1412 	mov	b,r0
   2A7B E9                 1413 	mov	a,r1
   2A7C 12 34 09           1414 	lcall	__gptrput
   2A7F 02 2F BB           1415 	ljmp	00175$
   2A82                    1416 00170$:
                           1417 ;	SERIAL.c:115: else if(rxMsg == 'd' || rxMsg == 'D'){
   2A82 BA 64 02           1418 	cjne	r2,#0x64,00239$
   2A85 80 08              1419 	sjmp	00165$
   2A87                    1420 00239$:
   2A87 BA 44 02           1421 	cjne	r2,#0x44,00240$
   2A8A 80 03              1422 	sjmp	00241$
   2A8C                    1423 00240$:
   2A8C 02 2D 1F           1424 	ljmp	00166$
   2A8F                    1425 00241$:
   2A8F                    1426 00165$:
                           1427 ;	SERIAL.c:118: if((player->scol+1)<6)
   2A8F 90 03 62           1428 	mov	dptr,#_player
   2A92 E0                 1429 	movx	a,@dptr
   2A93 FB                 1430 	mov	r3,a
   2A94 A3                 1431 	inc	dptr
   2A95 E0                 1432 	movx	a,@dptr
   2A96 FC                 1433 	mov	r4,a
   2A97 A3                 1434 	inc	dptr
   2A98 E0                 1435 	movx	a,@dptr
   2A99 FD                 1436 	mov	r5,a
   2A9A 74 01              1437 	mov	a,#0x01
   2A9C 2B                 1438 	add	a,r3
   2A9D FE                 1439 	mov	r6,a
   2A9E E4                 1440 	clr	a
   2A9F 3C                 1441 	addc	a,r4
   2AA0 FF                 1442 	mov	r7,a
   2AA1 8D 00              1443 	mov	ar0,r5
   2AA3 8E 82              1444 	mov	dpl,r6
   2AA5 8F 83              1445 	mov	dph,r7
   2AA7 88 F0              1446 	mov	b,r0
   2AA9 12 35 CD           1447 	lcall	__gptrget
   2AAC FE                 1448 	mov	r6,a
   2AAD FF                 1449 	mov	r7,a
   2AAE 78 00              1450 	mov	r0,#0x00
   2AB0 0F                 1451 	inc	r7
   2AB1 BF 00 01           1452 	cjne	r7,#0x00,00242$
   2AB4 08                 1453 	inc	r0
   2AB5                    1454 00242$:
   2AB5 C3                 1455 	clr	c
   2AB6 EF                 1456 	mov	a,r7
   2AB7 94 06              1457 	subb	a,#0x06
   2AB9 E8                 1458 	mov	a,r0
   2ABA 64 80              1459 	xrl	a,#0x80
   2ABC 94 80              1460 	subb	a,#0x80
   2ABE 40 03              1461 	jc	00243$
   2AC0 02 2B A9           1462 	ljmp	00136$
   2AC3                    1463 00243$:
                           1464 ;	SERIAL.c:119: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-1] & (pow(2,5-(player->scol+1)));
   2AC3 74 02              1465 	mov	a,#0x02
   2AC5 2B                 1466 	add	a,r3
   2AC6 FF                 1467 	mov	r7,a
   2AC7 E4                 1468 	clr	a
   2AC8 3C                 1469 	addc	a,r4
   2AC9 F8                 1470 	mov	r0,a
   2ACA 8D 01              1471 	mov	ar1,r5
   2ACC 8F 82              1472 	mov	dpl,r7
   2ACE 88 83              1473 	mov	dph,r0
   2AD0 89 F0              1474 	mov	b,r1
   2AD2 12 35 CD           1475 	lcall	__gptrget
   2AD5 78 00              1476 	mov	r0,#0x00
   2AD7 24 FF              1477 	add	a,#0xff
   2AD9 F5 11              1478 	mov	_serialControl_sloc2_1_0,a
   2ADB E8                 1479 	mov	a,r0
   2ADC 34 FF              1480 	addc	a,#0xff
   2ADE F5 12              1481 	mov	(_serialControl_sloc2_1_0 + 1),a
   2AE0 90 03 6B           1482 	mov	dptr,#_serialControl_PARM_2
   2AE3 E0                 1483 	movx	a,@dptr
   2AE4 F5 0E              1484 	mov	_serialControl_sloc1_1_0,a
   2AE6 A3                 1485 	inc	dptr
   2AE7 E0                 1486 	movx	a,@dptr
   2AE8 F5 0F              1487 	mov	(_serialControl_sloc1_1_0 + 1),a
   2AEA A3                 1488 	inc	dptr
   2AEB E0                 1489 	movx	a,@dptr
   2AEC F5 10              1490 	mov	(_serialControl_sloc1_1_0 + 2),a
   2AEE AF 11              1491 	mov	r7,_serialControl_sloc2_1_0
   2AF0 E5 12              1492 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2AF2 C4                 1493 	swap	a
   2AF3 54 F0              1494 	anl	a,#0xf0
   2AF5 CF                 1495 	xch	a,r7
   2AF6 C4                 1496 	swap	a
   2AF7 CF                 1497 	xch	a,r7
   2AF8 6F                 1498 	xrl	a,r7
   2AF9 CF                 1499 	xch	a,r7
   2AFA 54 F0              1500 	anl	a,#0xf0
   2AFC CF                 1501 	xch	a,r7
   2AFD 6F                 1502 	xrl	a,r7
   2AFE F8                 1503 	mov	r0,a
   2AFF EF                 1504 	mov	a,r7
   2B00 25 0E              1505 	add	a,_serialControl_sloc1_1_0
   2B02 F5 11              1506 	mov	_serialControl_sloc2_1_0,a
   2B04 E8                 1507 	mov	a,r0
   2B05 35 0F              1508 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2B07 F5 12              1509 	mov	(_serialControl_sloc2_1_0 + 1),a
   2B09 85 10 13           1510 	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
   2B0C 74 03              1511 	mov	a,#0x03
   2B0E 2B                 1512 	add	a,r3
   2B0F FF                 1513 	mov	r7,a
   2B10 E4                 1514 	clr	a
   2B11 3C                 1515 	addc	a,r4
   2B12 F8                 1516 	mov	r0,a
   2B13 8D 01              1517 	mov	ar1,r5
   2B15 8F 82              1518 	mov	dpl,r7
   2B17 88 83              1519 	mov	dph,r0
   2B19 89 F0              1520 	mov	b,r1
   2B1B 12 35 CD           1521 	lcall	__gptrget
   2B1E 14                 1522 	dec	a
   2B1F 25 11              1523 	add	a,_serialControl_sloc2_1_0
   2B21 FF                 1524 	mov	r7,a
   2B22 E4                 1525 	clr	a
   2B23 35 12              1526 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2B25 F8                 1527 	mov	r0,a
   2B26 A9 13              1528 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   2B28 8F 82              1529 	mov	dpl,r7
   2B2A 88 83              1530 	mov	dph,r0
   2B2C 89 F0              1531 	mov	b,r1
   2B2E 12 35 CD           1532 	lcall	__gptrget
   2B31 FF                 1533 	mov	r7,a
   2B32 33                 1534 	rlc	a
   2B33 95 E0              1535 	subb	a,acc
   2B35 F8                 1536 	mov	r0,a
   2B36 EF                 1537 	mov	a,r7
   2B37 24 FF              1538 	add	a,#0xff
   2B39 F5 11              1539 	mov	_serialControl_sloc2_1_0,a
   2B3B E8                 1540 	mov	a,r0
   2B3C 34 FF              1541 	addc	a,#0xff
   2B3E F5 12              1542 	mov	(_serialControl_sloc2_1_0 + 1),a
   2B40 90 03 6E           1543 	mov	dptr,#_serialControl_scmap_1_1
   2B43 E0                 1544 	movx	a,@dptr
   2B44 F5 0E              1545 	mov	_serialControl_sloc1_1_0,a
   2B46 A3                 1546 	inc	dptr
   2B47 E0                 1547 	movx	a,@dptr
   2B48 F5 0F              1548 	mov	(_serialControl_sloc1_1_0 + 1),a
   2B4A A3                 1549 	inc	dptr
   2B4B E0                 1550 	movx	a,@dptr
   2B4C F5 10              1551 	mov	(_serialControl_sloc1_1_0 + 2),a
   2B4E AF 11              1552 	mov	r7,_serialControl_sloc2_1_0
   2B50 E5 12              1553 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2B52 C4                 1554 	swap	a
   2B53 03                 1555 	rr	a
   2B54 54 F8              1556 	anl	a,#0xf8
   2B56 CF                 1557 	xch	a,r7
   2B57 C4                 1558 	swap	a
   2B58 03                 1559 	rr	a
   2B59 CF                 1560 	xch	a,r7
   2B5A 6F                 1561 	xrl	a,r7
   2B5B CF                 1562 	xch	a,r7
   2B5C 54 F8              1563 	anl	a,#0xf8
   2B5E CF                 1564 	xch	a,r7
   2B5F 6F                 1565 	xrl	a,r7
   2B60 F8                 1566 	mov	r0,a
   2B61 EF                 1567 	mov	a,r7
   2B62 25 0E              1568 	add	a,_serialControl_sloc1_1_0
   2B64 F5 11              1569 	mov	_serialControl_sloc2_1_0,a
   2B66 E8                 1570 	mov	a,r0
   2B67 35 0F              1571 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2B69 F5 12              1572 	mov	(_serialControl_sloc2_1_0 + 1),a
   2B6B 85 10 13           1573 	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
   2B6E 8B 82              1574 	mov	dpl,r3
   2B70 8C 83              1575 	mov	dph,r4
   2B72 8D F0              1576 	mov	b,r5
   2B74 12 35 CD           1577 	lcall	__gptrget
   2B77 14                 1578 	dec	a
   2B78 25 11              1579 	add	a,_serialControl_sloc2_1_0
   2B7A F5 11              1580 	mov	_serialControl_sloc2_1_0,a
   2B7C E4                 1581 	clr	a
   2B7D 35 12              1582 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2B7F F5 12              1583 	mov	(_serialControl_sloc2_1_0 + 1),a
   2B81 EE                 1584 	mov	a,r6
   2B82 04                 1585 	inc	a
   2B83 90 03 82           1586 	mov	dptr,#_pow_PARM_2
   2B86 D3                 1587 	setb	c
   2B87 94 05              1588 	subb	a,#0x05
   2B89 F4                 1589 	cpl	a
   2B8A F0                 1590 	movx	@dptr,a
   2B8B 75 82 02           1591 	mov	dpl,#0x02
   2B8E 12 32 41           1592 	lcall	_pow
   2B91 AF 82              1593 	mov	r7,dpl
   2B93 85 11 82           1594 	mov	dpl,_serialControl_sloc2_1_0
   2B96 85 12 83           1595 	mov	dph,(_serialControl_sloc2_1_0 + 1)
   2B99 85 13 F0           1596 	mov	b,(_serialControl_sloc2_1_0 + 2)
   2B9C 12 35 CD           1597 	lcall	__gptrget
   2B9F F8                 1598 	mov	r0,a
   2BA0 90 03 71           1599 	mov	dptr,#_serialControl_logic_op_1_1
   2BA3 EF                 1600 	mov	a,r7
   2BA4 58                 1601 	anl	a,r0
   2BA5 F0                 1602 	movx	@dptr,a
   2BA6 02 2C B4           1603 	ljmp	00137$
   2BA9                    1604 00136$:
                           1605 ;	SERIAL.c:120: else if(player->scol==5 && player->col <16)
   2BA9 E4                 1606 	clr	a
   2BAA BE 05 01           1607 	cjne	r6,#0x05,00244$
   2BAD 04                 1608 	inc	a
   2BAE                    1609 00244$:
   2BAE FE                 1610 	mov	r6,a
   2BAF 70 03              1611 	jnz	00246$
   2BB1 02 2C 99           1612 	ljmp	00132$
   2BB4                    1613 00246$:
   2BB4 74 03              1614 	mov	a,#0x03
   2BB6 2B                 1615 	add	a,r3
   2BB7 FF                 1616 	mov	r7,a
   2BB8 E4                 1617 	clr	a
   2BB9 3C                 1618 	addc	a,r4
   2BBA F8                 1619 	mov	r0,a
   2BBB 8D 01              1620 	mov	ar1,r5
   2BBD 8F 82              1621 	mov	dpl,r7
   2BBF 88 83              1622 	mov	dph,r0
   2BC1 89 F0              1623 	mov	b,r1
   2BC3 12 35 CD           1624 	lcall	__gptrget
   2BC6 F5 11              1625 	mov	_serialControl_sloc2_1_0,a
   2BC8 C3                 1626 	clr	c
   2BC9 94 10              1627 	subb	a,#0x10
   2BCB 40 03              1628 	jc	00247$
   2BCD 02 2C 99           1629 	ljmp	00132$
   2BD0                    1630 00247$:
                           1631 ;	SERIAL.c:121: logic_op = scmap[(map[player->line-1][player->col].schar) - 1].adds[player->sline-1] & (pow(2,5-(1)));
   2BD0 74 02              1632 	mov	a,#0x02
   2BD2 2B                 1633 	add	a,r3
   2BD3 F8                 1634 	mov	r0,a
   2BD4 E4                 1635 	clr	a
   2BD5 3C                 1636 	addc	a,r4
   2BD6 F9                 1637 	mov	r1,a
   2BD7 8D 07              1638 	mov	ar7,r5
   2BD9 88 82              1639 	mov	dpl,r0
   2BDB 89 83              1640 	mov	dph,r1
   2BDD 8F F0              1641 	mov	b,r7
   2BDF 12 35 CD           1642 	lcall	__gptrget
   2BE2 7F 00              1643 	mov	r7,#0x00
   2BE4 24 FF              1644 	add	a,#0xff
   2BE6 F5 0E              1645 	mov	_serialControl_sloc1_1_0,a
   2BE8 EF                 1646 	mov	a,r7
   2BE9 34 FF              1647 	addc	a,#0xff
   2BEB F5 0F              1648 	mov	(_serialControl_sloc1_1_0 + 1),a
   2BED 90 03 6B           1649 	mov	dptr,#_serialControl_PARM_2
   2BF0 E0                 1650 	movx	a,@dptr
   2BF1 F5 14              1651 	mov	_serialControl_sloc3_1_0,a
   2BF3 A3                 1652 	inc	dptr
   2BF4 E0                 1653 	movx	a,@dptr
   2BF5 F5 15              1654 	mov	(_serialControl_sloc3_1_0 + 1),a
   2BF7 A3                 1655 	inc	dptr
   2BF8 E0                 1656 	movx	a,@dptr
   2BF9 F5 16              1657 	mov	(_serialControl_sloc3_1_0 + 2),a
   2BFB AF 0E              1658 	mov	r7,_serialControl_sloc1_1_0
   2BFD E5 0F              1659 	mov	a,(_serialControl_sloc1_1_0 + 1)
   2BFF C4                 1660 	swap	a
   2C00 54 F0              1661 	anl	a,#0xf0
   2C02 CF                 1662 	xch	a,r7
   2C03 C4                 1663 	swap	a
   2C04 CF                 1664 	xch	a,r7
   2C05 6F                 1665 	xrl	a,r7
   2C06 CF                 1666 	xch	a,r7
   2C07 54 F0              1667 	anl	a,#0xf0
   2C09 CF                 1668 	xch	a,r7
   2C0A 6F                 1669 	xrl	a,r7
   2C0B F8                 1670 	mov	r0,a
   2C0C EF                 1671 	mov	a,r7
   2C0D 25 14              1672 	add	a,_serialControl_sloc3_1_0
   2C0F FF                 1673 	mov	r7,a
   2C10 E8                 1674 	mov	a,r0
   2C11 35 15              1675 	addc	a,(_serialControl_sloc3_1_0 + 1)
   2C13 F8                 1676 	mov	r0,a
   2C14 A9 16              1677 	mov	r1,(_serialControl_sloc3_1_0 + 2)
   2C16 E5 11              1678 	mov	a,_serialControl_sloc2_1_0
   2C18 2F                 1679 	add	a,r7
   2C19 FF                 1680 	mov	r7,a
   2C1A E4                 1681 	clr	a
   2C1B 38                 1682 	addc	a,r0
   2C1C F8                 1683 	mov	r0,a
   2C1D 8F 82              1684 	mov	dpl,r7
   2C1F 88 83              1685 	mov	dph,r0
   2C21 89 F0              1686 	mov	b,r1
   2C23 12 35 CD           1687 	lcall	__gptrget
   2C26 FF                 1688 	mov	r7,a
   2C27 33                 1689 	rlc	a
   2C28 95 E0              1690 	subb	a,acc
   2C2A F8                 1691 	mov	r0,a
   2C2B EF                 1692 	mov	a,r7
   2C2C 24 FF              1693 	add	a,#0xff
   2C2E F5 14              1694 	mov	_serialControl_sloc3_1_0,a
   2C30 E8                 1695 	mov	a,r0
   2C31 34 FF              1696 	addc	a,#0xff
   2C33 F5 15              1697 	mov	(_serialControl_sloc3_1_0 + 1),a
   2C35 90 03 6E           1698 	mov	dptr,#_serialControl_scmap_1_1
   2C38 E0                 1699 	movx	a,@dptr
   2C39 F5 11              1700 	mov	_serialControl_sloc2_1_0,a
   2C3B A3                 1701 	inc	dptr
   2C3C E0                 1702 	movx	a,@dptr
   2C3D F5 12              1703 	mov	(_serialControl_sloc2_1_0 + 1),a
   2C3F A3                 1704 	inc	dptr
   2C40 E0                 1705 	movx	a,@dptr
   2C41 F5 13              1706 	mov	(_serialControl_sloc2_1_0 + 2),a
   2C43 AF 14              1707 	mov	r7,_serialControl_sloc3_1_0
   2C45 E5 15              1708 	mov	a,(_serialControl_sloc3_1_0 + 1)
   2C47 C4                 1709 	swap	a
   2C48 03                 1710 	rr	a
   2C49 54 F8              1711 	anl	a,#0xf8
   2C4B CF                 1712 	xch	a,r7
   2C4C C4                 1713 	swap	a
   2C4D 03                 1714 	rr	a
   2C4E CF                 1715 	xch	a,r7
   2C4F 6F                 1716 	xrl	a,r7
   2C50 CF                 1717 	xch	a,r7
   2C51 54 F8              1718 	anl	a,#0xf8
   2C53 CF                 1719 	xch	a,r7
   2C54 6F                 1720 	xrl	a,r7
   2C55 F8                 1721 	mov	r0,a
   2C56 EF                 1722 	mov	a,r7
   2C57 25 11              1723 	add	a,_serialControl_sloc2_1_0
   2C59 F5 14              1724 	mov	_serialControl_sloc3_1_0,a
   2C5B E8                 1725 	mov	a,r0
   2C5C 35 12              1726 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2C5E F5 15              1727 	mov	(_serialControl_sloc3_1_0 + 1),a
   2C60 85 13 16           1728 	mov	(_serialControl_sloc3_1_0 + 2),(_serialControl_sloc2_1_0 + 2)
   2C63 8B 82              1729 	mov	dpl,r3
   2C65 8C 83              1730 	mov	dph,r4
   2C67 8D F0              1731 	mov	b,r5
   2C69 12 35 CD           1732 	lcall	__gptrget
   2C6C 14                 1733 	dec	a
   2C6D 25 14              1734 	add	a,_serialControl_sloc3_1_0
   2C6F F5 14              1735 	mov	_serialControl_sloc3_1_0,a
   2C71 E4                 1736 	clr	a
   2C72 35 15              1737 	addc	a,(_serialControl_sloc3_1_0 + 1)
   2C74 F5 15              1738 	mov	(_serialControl_sloc3_1_0 + 1),a
   2C76 90 03 82           1739 	mov	dptr,#_pow_PARM_2
   2C79 74 04              1740 	mov	a,#0x04
   2C7B F0                 1741 	movx	@dptr,a
   2C7C 75 82 02           1742 	mov	dpl,#0x02
   2C7F 12 32 41           1743 	lcall	_pow
   2C82 AF 82              1744 	mov	r7,dpl
   2C84 85 14 82           1745 	mov	dpl,_serialControl_sloc3_1_0
   2C87 85 15 83           1746 	mov	dph,(_serialControl_sloc3_1_0 + 1)
   2C8A 85 16 F0           1747 	mov	b,(_serialControl_sloc3_1_0 + 2)
   2C8D 12 35 CD           1748 	lcall	__gptrget
   2C90 F8                 1749 	mov	r0,a
   2C91 90 03 71           1750 	mov	dptr,#_serialControl_logic_op_1_1
   2C94 EF                 1751 	mov	a,r7
   2C95 58                 1752 	anl	a,r0
   2C96 F0                 1753 	movx	@dptr,a
   2C97 80 1B              1754 	sjmp	00137$
   2C99                    1755 00132$:
                           1756 ;	SERIAL.c:122: else if(player->scol==5 && player->col ==16)
   2C99 EE                 1757 	mov	a,r6
   2C9A 60 18              1758 	jz	00137$
   2C9C 74 03              1759 	mov	a,#0x03
   2C9E 2B                 1760 	add	a,r3
   2C9F FB                 1761 	mov	r3,a
   2CA0 E4                 1762 	clr	a
   2CA1 3C                 1763 	addc	a,r4
   2CA2 FC                 1764 	mov	r4,a
   2CA3 8B 82              1765 	mov	dpl,r3
   2CA5 8C 83              1766 	mov	dph,r4
   2CA7 8D F0              1767 	mov	b,r5
   2CA9 12 35 CD           1768 	lcall	__gptrget
   2CAC FB                 1769 	mov	r3,a
   2CAD BB 10 04           1770 	cjne	r3,#0x10,00137$
                           1771 ;	SERIAL.c:123: return 0;
   2CB0 75 82 00           1772 	mov	dpl,#0x00
   2CB3 22                 1773 	ret
   2CB4                    1774 00137$:
                           1775 ;	SERIAL.c:126: if(logic_op == 0){
   2CB4 90 03 71           1776 	mov	dptr,#_serialControl_logic_op_1_1
   2CB7 E0                 1777 	movx	a,@dptr
   2CB8 FB                 1778 	mov	r3,a
   2CB9 60 03              1779 	jz	00251$
   2CBB 02 2F BB           1780 	ljmp	00175$
   2CBE                    1781 00251$:
                           1782 ;	SERIAL.c:128: if(player->scol != 5)
   2CBE 90 03 62           1783 	mov	dptr,#_player
   2CC1 E0                 1784 	movx	a,@dptr
   2CC2 FB                 1785 	mov	r3,a
   2CC3 A3                 1786 	inc	dptr
   2CC4 E0                 1787 	movx	a,@dptr
   2CC5 FC                 1788 	mov	r4,a
   2CC6 A3                 1789 	inc	dptr
   2CC7 E0                 1790 	movx	a,@dptr
   2CC8 FD                 1791 	mov	r5,a
   2CC9 74 01              1792 	mov	a,#0x01
   2CCB 2B                 1793 	add	a,r3
   2CCC FE                 1794 	mov	r6,a
   2CCD E4                 1795 	clr	a
   2CCE 3C                 1796 	addc	a,r4
   2CCF FF                 1797 	mov	r7,a
   2CD0 8D 00              1798 	mov	ar0,r5
   2CD2 8E 82              1799 	mov	dpl,r6
   2CD4 8F 83              1800 	mov	dph,r7
   2CD6 88 F0              1801 	mov	b,r0
   2CD8 12 35 CD           1802 	lcall	__gptrget
   2CDB F9                 1803 	mov	r1,a
   2CDC B9 05 02           1804 	cjne	r1,#0x05,00252$
   2CDF 80 0E              1805 	sjmp	00141$
   2CE1                    1806 00252$:
                           1807 ;	SERIAL.c:129: player->scol++;
   2CE1 09                 1808 	inc	r1
   2CE2 8E 82              1809 	mov	dpl,r6
   2CE4 8F 83              1810 	mov	dph,r7
   2CE6 88 F0              1811 	mov	b,r0
   2CE8 E9                 1812 	mov	a,r1
   2CE9 12 34 09           1813 	lcall	__gptrput
   2CEC 02 2F BB           1814 	ljmp	00175$
   2CEF                    1815 00141$:
                           1816 ;	SERIAL.c:131: if(player->col != 16){
   2CEF 74 03              1817 	mov	a,#0x03
   2CF1 2B                 1818 	add	a,r3
   2CF2 FB                 1819 	mov	r3,a
   2CF3 E4                 1820 	clr	a
   2CF4 3C                 1821 	addc	a,r4
   2CF5 FC                 1822 	mov	r4,a
   2CF6 8B 82              1823 	mov	dpl,r3
   2CF8 8C 83              1824 	mov	dph,r4
   2CFA 8D F0              1825 	mov	b,r5
   2CFC 12 35 CD           1826 	lcall	__gptrget
   2CFF F9                 1827 	mov	r1,a
   2D00 B9 10 03           1828 	cjne	r1,#0x10,00253$
   2D03 02 2F BB           1829 	ljmp	00175$
   2D06                    1830 00253$:
                           1831 ;	SERIAL.c:132: player->scol = 1;
   2D06 8E 82              1832 	mov	dpl,r6
   2D08 8F 83              1833 	mov	dph,r7
   2D0A 88 F0              1834 	mov	b,r0
   2D0C 74 01              1835 	mov	a,#0x01
   2D0E 12 34 09           1836 	lcall	__gptrput
                           1837 ;	SERIAL.c:133: player->col++;
   2D11 09                 1838 	inc	r1
   2D12 8B 82              1839 	mov	dpl,r3
   2D14 8C 83              1840 	mov	dph,r4
   2D16 8D F0              1841 	mov	b,r5
   2D18 E9                 1842 	mov	a,r1
   2D19 12 34 09           1843 	lcall	__gptrput
   2D1C 02 2F BB           1844 	ljmp	00175$
   2D1F                    1845 00166$:
                           1846 ;	SERIAL.c:141: else if(rxMsg == 'a' || rxMsg == 'A'){
   2D1F BA 61 02           1847 	cjne	r2,#0x61,00254$
   2D22 80 08              1848 	sjmp	00162$
   2D24                    1849 00254$:
   2D24 BA 41 02           1850 	cjne	r2,#0x41,00255$
   2D27 80 03              1851 	sjmp	00256$
   2D29                    1852 00255$:
   2D29 02 2F BB           1853 	ljmp	00175$
   2D2C                    1854 00256$:
   2D2C                    1855 00162$:
                           1856 ;	SERIAL.c:144: if((player->scol-2)>-1)
   2D2C 90 03 62           1857 	mov	dptr,#_player
   2D2F E0                 1858 	movx	a,@dptr
   2D30 FA                 1859 	mov	r2,a
   2D31 A3                 1860 	inc	dptr
   2D32 E0                 1861 	movx	a,@dptr
   2D33 FB                 1862 	mov	r3,a
   2D34 A3                 1863 	inc	dptr
   2D35 E0                 1864 	movx	a,@dptr
   2D36 FC                 1865 	mov	r4,a
   2D37 74 01              1866 	mov	a,#0x01
   2D39 2A                 1867 	add	a,r2
   2D3A FD                 1868 	mov	r5,a
   2D3B E4                 1869 	clr	a
   2D3C 3B                 1870 	addc	a,r3
   2D3D FE                 1871 	mov	r6,a
   2D3E 8C 07              1872 	mov	ar7,r4
   2D40 8D 82              1873 	mov	dpl,r5
   2D42 8E 83              1874 	mov	dph,r6
   2D44 8F F0              1875 	mov	b,r7
   2D46 12 35 CD           1876 	lcall	__gptrget
   2D49 FD                 1877 	mov	r5,a
   2D4A 7F 00              1878 	mov	r7,#0x00
   2D4C 24 FE              1879 	add	a,#0xfe
   2D4E FE                 1880 	mov	r6,a
   2D4F EF                 1881 	mov	a,r7
   2D50 34 FF              1882 	addc	a,#0xff
   2D52 FF                 1883 	mov	r7,a
   2D53 C3                 1884 	clr	c
   2D54 74 FF              1885 	mov	a,#0xFF
   2D56 9E                 1886 	subb	a,r6
   2D57 74 7F              1887 	mov	a,#(0xFF ^ 0x80)
   2D59 8F F0              1888 	mov	b,r7
   2D5B 63 F0 80           1889 	xrl	b,#0x80
   2D5E 95 F0              1890 	subb	a,b
   2D60 40 03              1891 	jc	00257$
   2D62 02 2E 4D           1892 	ljmp	00153$
   2D65                    1893 00257$:
                           1894 ;	SERIAL.c:145: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-1] & (pow(2,5-(player->scol-1)));
   2D65 74 02              1895 	mov	a,#0x02
   2D67 2A                 1896 	add	a,r2
   2D68 FE                 1897 	mov	r6,a
   2D69 E4                 1898 	clr	a
   2D6A 3B                 1899 	addc	a,r3
   2D6B FF                 1900 	mov	r7,a
   2D6C 8C 00              1901 	mov	ar0,r4
   2D6E 8E 82              1902 	mov	dpl,r6
   2D70 8F 83              1903 	mov	dph,r7
   2D72 88 F0              1904 	mov	b,r0
   2D74 12 35 CD           1905 	lcall	__gptrget
   2D77 7F 00              1906 	mov	r7,#0x00
   2D79 24 FF              1907 	add	a,#0xff
   2D7B F5 14              1908 	mov	_serialControl_sloc3_1_0,a
   2D7D EF                 1909 	mov	a,r7
   2D7E 34 FF              1910 	addc	a,#0xff
   2D80 F5 15              1911 	mov	(_serialControl_sloc3_1_0 + 1),a
   2D82 90 03 6B           1912 	mov	dptr,#_serialControl_PARM_2
   2D85 E0                 1913 	movx	a,@dptr
   2D86 F5 11              1914 	mov	_serialControl_sloc2_1_0,a
   2D88 A3                 1915 	inc	dptr
   2D89 E0                 1916 	movx	a,@dptr
   2D8A F5 12              1917 	mov	(_serialControl_sloc2_1_0 + 1),a
   2D8C A3                 1918 	inc	dptr
   2D8D E0                 1919 	movx	a,@dptr
   2D8E F5 13              1920 	mov	(_serialControl_sloc2_1_0 + 2),a
   2D90 AF 14              1921 	mov	r7,_serialControl_sloc3_1_0
   2D92 E5 15              1922 	mov	a,(_serialControl_sloc3_1_0 + 1)
   2D94 C4                 1923 	swap	a
   2D95 54 F0              1924 	anl	a,#0xf0
   2D97 CF                 1925 	xch	a,r7
   2D98 C4                 1926 	swap	a
   2D99 CF                 1927 	xch	a,r7
   2D9A 6F                 1928 	xrl	a,r7
   2D9B CF                 1929 	xch	a,r7
   2D9C 54 F0              1930 	anl	a,#0xf0
   2D9E CF                 1931 	xch	a,r7
   2D9F 6F                 1932 	xrl	a,r7
   2DA0 FE                 1933 	mov	r6,a
   2DA1 EF                 1934 	mov	a,r7
   2DA2 25 11              1935 	add	a,_serialControl_sloc2_1_0
   2DA4 F5 14              1936 	mov	_serialControl_sloc3_1_0,a
   2DA6 EE                 1937 	mov	a,r6
   2DA7 35 12              1938 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2DA9 F5 15              1939 	mov	(_serialControl_sloc3_1_0 + 1),a
   2DAB 85 13 16           1940 	mov	(_serialControl_sloc3_1_0 + 2),(_serialControl_sloc2_1_0 + 2)
   2DAE 74 03              1941 	mov	a,#0x03
   2DB0 2A                 1942 	add	a,r2
   2DB1 F9                 1943 	mov	r1,a
   2DB2 E4                 1944 	clr	a
   2DB3 3B                 1945 	addc	a,r3
   2DB4 FE                 1946 	mov	r6,a
   2DB5 8C 07              1947 	mov	ar7,r4
   2DB7 89 82              1948 	mov	dpl,r1
   2DB9 8E 83              1949 	mov	dph,r6
   2DBB 8F F0              1950 	mov	b,r7
   2DBD 12 35 CD           1951 	lcall	__gptrget
   2DC0 14                 1952 	dec	a
   2DC1 25 14              1953 	add	a,_serialControl_sloc3_1_0
   2DC3 FE                 1954 	mov	r6,a
   2DC4 E4                 1955 	clr	a
   2DC5 35 15              1956 	addc	a,(_serialControl_sloc3_1_0 + 1)
   2DC7 FF                 1957 	mov	r7,a
   2DC8 A8 16              1958 	mov	r0,(_serialControl_sloc3_1_0 + 2)
   2DCA 8E 82              1959 	mov	dpl,r6
   2DCC 8F 83              1960 	mov	dph,r7
   2DCE 88 F0              1961 	mov	b,r0
   2DD0 12 35 CD           1962 	lcall	__gptrget
   2DD3 FE                 1963 	mov	r6,a
   2DD4 33                 1964 	rlc	a
   2DD5 95 E0              1965 	subb	a,acc
   2DD7 FF                 1966 	mov	r7,a
   2DD8 EE                 1967 	mov	a,r6
   2DD9 24 FF              1968 	add	a,#0xff
   2DDB F5 14              1969 	mov	_serialControl_sloc3_1_0,a
   2DDD EF                 1970 	mov	a,r7
   2DDE 34 FF              1971 	addc	a,#0xff
   2DE0 F5 15              1972 	mov	(_serialControl_sloc3_1_0 + 1),a
   2DE2 90 03 6E           1973 	mov	dptr,#_serialControl_scmap_1_1
   2DE5 E0                 1974 	movx	a,@dptr
   2DE6 F5 11              1975 	mov	_serialControl_sloc2_1_0,a
   2DE8 A3                 1976 	inc	dptr
   2DE9 E0                 1977 	movx	a,@dptr
   2DEA F5 12              1978 	mov	(_serialControl_sloc2_1_0 + 1),a
   2DEC A3                 1979 	inc	dptr
   2DED E0                 1980 	movx	a,@dptr
   2DEE F5 13              1981 	mov	(_serialControl_sloc2_1_0 + 2),a
   2DF0 AF 14              1982 	mov	r7,_serialControl_sloc3_1_0
   2DF2 E5 15              1983 	mov	a,(_serialControl_sloc3_1_0 + 1)
   2DF4 C4                 1984 	swap	a
   2DF5 03                 1985 	rr	a
   2DF6 54 F8              1986 	anl	a,#0xf8
   2DF8 CF                 1987 	xch	a,r7
   2DF9 C4                 1988 	swap	a
   2DFA 03                 1989 	rr	a
   2DFB CF                 1990 	xch	a,r7
   2DFC 6F                 1991 	xrl	a,r7
   2DFD CF                 1992 	xch	a,r7
   2DFE 54 F8              1993 	anl	a,#0xf8
   2E00 CF                 1994 	xch	a,r7
   2E01 6F                 1995 	xrl	a,r7
   2E02 FE                 1996 	mov	r6,a
   2E03 EF                 1997 	mov	a,r7
   2E04 25 11              1998 	add	a,_serialControl_sloc2_1_0
   2E06 FF                 1999 	mov	r7,a
   2E07 EE                 2000 	mov	a,r6
   2E08 35 12              2001 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2E0A FE                 2002 	mov	r6,a
   2E0B A8 13              2003 	mov	r0,(_serialControl_sloc2_1_0 + 2)
   2E0D 8A 82              2004 	mov	dpl,r2
   2E0F 8B 83              2005 	mov	dph,r3
   2E11 8C F0              2006 	mov	b,r4
   2E13 12 35 CD           2007 	lcall	__gptrget
   2E16 14                 2008 	dec	a
   2E17 2F                 2009 	add	a,r7
   2E18 FF                 2010 	mov	r7,a
   2E19 E4                 2011 	clr	a
   2E1A 3E                 2012 	addc	a,r6
   2E1B FE                 2013 	mov	r6,a
   2E1C ED                 2014 	mov	a,r5
   2E1D 14                 2015 	dec	a
   2E1E 90 03 82           2016 	mov	dptr,#_pow_PARM_2
   2E21 D3                 2017 	setb	c
   2E22 94 05              2018 	subb	a,#0x05
   2E24 F4                 2019 	cpl	a
   2E25 F0                 2020 	movx	@dptr,a
   2E26 75 82 02           2021 	mov	dpl,#0x02
   2E29 C0 06              2022 	push	ar6
   2E2B C0 07              2023 	push	ar7
   2E2D C0 00              2024 	push	ar0
   2E2F 12 32 41           2025 	lcall	_pow
   2E32 A9 82              2026 	mov	r1,dpl
   2E34 D0 00              2027 	pop	ar0
   2E36 D0 07              2028 	pop	ar7
   2E38 D0 06              2029 	pop	ar6
   2E3A 8F 82              2030 	mov	dpl,r7
   2E3C 8E 83              2031 	mov	dph,r6
   2E3E 88 F0              2032 	mov	b,r0
   2E40 12 35 CD           2033 	lcall	__gptrget
   2E43 FF                 2034 	mov	r7,a
   2E44 90 03 71           2035 	mov	dptr,#_serialControl_logic_op_1_1
   2E47 E9                 2036 	mov	a,r1
   2E48 5F                 2037 	anl	a,r7
   2E49 F0                 2038 	movx	@dptr,a
   2E4A 02 2F 58           2039 	ljmp	00154$
   2E4D                    2040 00153$:
                           2041 ;	SERIAL.c:146: else if(player->scol==1 && player->col >1)
   2E4D E4                 2042 	clr	a
   2E4E BD 01 01           2043 	cjne	r5,#0x01,00258$
   2E51 04                 2044 	inc	a
   2E52                    2045 00258$:
   2E52 FD                 2046 	mov	r5,a
   2E53 70 03              2047 	jnz	00260$
   2E55 02 2F 3D           2048 	ljmp	00149$
   2E58                    2049 00260$:
   2E58 74 03              2050 	mov	a,#0x03
   2E5A 2A                 2051 	add	a,r2
   2E5B FE                 2052 	mov	r6,a
   2E5C E4                 2053 	clr	a
   2E5D 3B                 2054 	addc	a,r3
   2E5E FF                 2055 	mov	r7,a
   2E5F 8C 00              2056 	mov	ar0,r4
   2E61 8E 82              2057 	mov	dpl,r6
   2E63 8F 83              2058 	mov	dph,r7
   2E65 88 F0              2059 	mov	b,r0
   2E67 12 35 CD           2060 	lcall	__gptrget
   2E6A FE                 2061 	mov  r6,a
   2E6B 24 FE              2062 	add	a,#0xff - 0x01
   2E6D 40 03              2063 	jc	00261$
   2E6F 02 2F 3D           2064 	ljmp	00149$
   2E72                    2065 00261$:
                           2066 ;	SERIAL.c:147: logic_op = scmap[(map[player->line-1][player->col-2].schar) - 1].adds[player->sline-1] & (pow(2,5-(5)));
   2E72 74 02              2067 	mov	a,#0x02
   2E74 2A                 2068 	add	a,r2
   2E75 FF                 2069 	mov	r7,a
   2E76 E4                 2070 	clr	a
   2E77 3B                 2071 	addc	a,r3
   2E78 F8                 2072 	mov	r0,a
   2E79 8C 01              2073 	mov	ar1,r4
   2E7B 8F 82              2074 	mov	dpl,r7
   2E7D 88 83              2075 	mov	dph,r0
   2E7F 89 F0              2076 	mov	b,r1
   2E81 12 35 CD           2077 	lcall	__gptrget
   2E84 78 00              2078 	mov	r0,#0x00
   2E86 24 FF              2079 	add	a,#0xff
   2E88 F5 14              2080 	mov	_serialControl_sloc3_1_0,a
   2E8A E8                 2081 	mov	a,r0
   2E8B 34 FF              2082 	addc	a,#0xff
   2E8D F5 15              2083 	mov	(_serialControl_sloc3_1_0 + 1),a
   2E8F 90 03 6B           2084 	mov	dptr,#_serialControl_PARM_2
   2E92 E0                 2085 	movx	a,@dptr
   2E93 F5 11              2086 	mov	_serialControl_sloc2_1_0,a
   2E95 A3                 2087 	inc	dptr
   2E96 E0                 2088 	movx	a,@dptr
   2E97 F5 12              2089 	mov	(_serialControl_sloc2_1_0 + 1),a
   2E99 A3                 2090 	inc	dptr
   2E9A E0                 2091 	movx	a,@dptr
   2E9B F5 13              2092 	mov	(_serialControl_sloc2_1_0 + 2),a
   2E9D AF 14              2093 	mov	r7,_serialControl_sloc3_1_0
   2E9F E5 15              2094 	mov	a,(_serialControl_sloc3_1_0 + 1)
   2EA1 C4                 2095 	swap	a
   2EA2 54 F0              2096 	anl	a,#0xf0
   2EA4 CF                 2097 	xch	a,r7
   2EA5 C4                 2098 	swap	a
   2EA6 CF                 2099 	xch	a,r7
   2EA7 6F                 2100 	xrl	a,r7
   2EA8 CF                 2101 	xch	a,r7
   2EA9 54 F0              2102 	anl	a,#0xf0
   2EAB CF                 2103 	xch	a,r7
   2EAC 6F                 2104 	xrl	a,r7
   2EAD F8                 2105 	mov	r0,a
   2EAE EF                 2106 	mov	a,r7
   2EAF 25 11              2107 	add	a,_serialControl_sloc2_1_0
   2EB1 FF                 2108 	mov	r7,a
   2EB2 E8                 2109 	mov	a,r0
   2EB3 35 12              2110 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2EB5 F8                 2111 	mov	r0,a
   2EB6 A9 13              2112 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   2EB8 EE                 2113 	mov	a,r6
   2EB9 24 FE              2114 	add	a,#0xfe
   2EBB 2F                 2115 	add	a,r7
   2EBC FF                 2116 	mov	r7,a
   2EBD E4                 2117 	clr	a
   2EBE 38                 2118 	addc	a,r0
   2EBF F8                 2119 	mov	r0,a
   2EC0 8F 82              2120 	mov	dpl,r7
   2EC2 88 83              2121 	mov	dph,r0
   2EC4 89 F0              2122 	mov	b,r1
   2EC6 12 35 CD           2123 	lcall	__gptrget
   2EC9 FF                 2124 	mov	r7,a
   2ECA 33                 2125 	rlc	a
   2ECB 95 E0              2126 	subb	a,acc
   2ECD FE                 2127 	mov	r6,a
   2ECE EF                 2128 	mov	a,r7
   2ECF 24 FF              2129 	add	a,#0xff
   2ED1 F5 14              2130 	mov	_serialControl_sloc3_1_0,a
   2ED3 EE                 2131 	mov	a,r6
   2ED4 34 FF              2132 	addc	a,#0xff
   2ED6 F5 15              2133 	mov	(_serialControl_sloc3_1_0 + 1),a
   2ED8 90 03 6E           2134 	mov	dptr,#_serialControl_scmap_1_1
   2EDB E0                 2135 	movx	a,@dptr
   2EDC F5 11              2136 	mov	_serialControl_sloc2_1_0,a
   2EDE A3                 2137 	inc	dptr
   2EDF E0                 2138 	movx	a,@dptr
   2EE0 F5 12              2139 	mov	(_serialControl_sloc2_1_0 + 1),a
   2EE2 A3                 2140 	inc	dptr
   2EE3 E0                 2141 	movx	a,@dptr
   2EE4 F5 13              2142 	mov	(_serialControl_sloc2_1_0 + 2),a
   2EE6 AF 14              2143 	mov	r7,_serialControl_sloc3_1_0
   2EE8 E5 15              2144 	mov	a,(_serialControl_sloc3_1_0 + 1)
   2EEA C4                 2145 	swap	a
   2EEB 03                 2146 	rr	a
   2EEC 54 F8              2147 	anl	a,#0xf8
   2EEE CF                 2148 	xch	a,r7
   2EEF C4                 2149 	swap	a
   2EF0 03                 2150 	rr	a
   2EF1 CF                 2151 	xch	a,r7
   2EF2 6F                 2152 	xrl	a,r7
   2EF3 CF                 2153 	xch	a,r7
   2EF4 54 F8              2154 	anl	a,#0xf8
   2EF6 CF                 2155 	xch	a,r7
   2EF7 6F                 2156 	xrl	a,r7
   2EF8 FE                 2157 	mov	r6,a
   2EF9 EF                 2158 	mov	a,r7
   2EFA 25 11              2159 	add	a,_serialControl_sloc2_1_0
   2EFC FF                 2160 	mov	r7,a
   2EFD EE                 2161 	mov	a,r6
   2EFE 35 12              2162 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2F00 FE                 2163 	mov	r6,a
   2F01 A8 13              2164 	mov	r0,(_serialControl_sloc2_1_0 + 2)
   2F03 8A 82              2165 	mov	dpl,r2
   2F05 8B 83              2166 	mov	dph,r3
   2F07 8C F0              2167 	mov	b,r4
   2F09 12 35 CD           2168 	lcall	__gptrget
   2F0C 14                 2169 	dec	a
   2F0D 2F                 2170 	add	a,r7
   2F0E FF                 2171 	mov	r7,a
   2F0F E4                 2172 	clr	a
   2F10 3E                 2173 	addc	a,r6
   2F11 FE                 2174 	mov	r6,a
   2F12 90 03 82           2175 	mov	dptr,#_pow_PARM_2
   2F15 E4                 2176 	clr	a
   2F16 F0                 2177 	movx	@dptr,a
   2F17 75 82 02           2178 	mov	dpl,#0x02
   2F1A C0 06              2179 	push	ar6
   2F1C C0 07              2180 	push	ar7
   2F1E C0 00              2181 	push	ar0
   2F20 12 32 41           2182 	lcall	_pow
   2F23 A9 82              2183 	mov	r1,dpl
   2F25 D0 00              2184 	pop	ar0
   2F27 D0 07              2185 	pop	ar7
   2F29 D0 06              2186 	pop	ar6
   2F2B 8F 82              2187 	mov	dpl,r7
   2F2D 8E 83              2188 	mov	dph,r6
   2F2F 88 F0              2189 	mov	b,r0
   2F31 12 35 CD           2190 	lcall	__gptrget
   2F34 FF                 2191 	mov	r7,a
   2F35 90 03 71           2192 	mov	dptr,#_serialControl_logic_op_1_1
   2F38 E9                 2193 	mov	a,r1
   2F39 5F                 2194 	anl	a,r7
   2F3A F0                 2195 	movx	@dptr,a
   2F3B 80 1B              2196 	sjmp	00154$
   2F3D                    2197 00149$:
                           2198 ;	SERIAL.c:148: else if(player->scol==1 && player->col == 1)
   2F3D ED                 2199 	mov	a,r5
   2F3E 60 18              2200 	jz	00154$
   2F40 74 03              2201 	mov	a,#0x03
   2F42 2A                 2202 	add	a,r2
   2F43 FA                 2203 	mov	r2,a
   2F44 E4                 2204 	clr	a
   2F45 3B                 2205 	addc	a,r3
   2F46 FB                 2206 	mov	r3,a
   2F47 8A 82              2207 	mov	dpl,r2
   2F49 8B 83              2208 	mov	dph,r3
   2F4B 8C F0              2209 	mov	b,r4
   2F4D 12 35 CD           2210 	lcall	__gptrget
   2F50 FA                 2211 	mov	r2,a
   2F51 BA 01 04           2212 	cjne	r2,#0x01,00154$
                           2213 ;	SERIAL.c:149: return 0;
   2F54 75 82 00           2214 	mov	dpl,#0x00
   2F57 22                 2215 	ret
   2F58                    2216 00154$:
                           2217 ;	SERIAL.c:152: if(logic_op == 0){
   2F58 90 03 71           2218 	mov	dptr,#_serialControl_logic_op_1_1
   2F5B E0                 2219 	movx	a,@dptr
   2F5C FA                 2220 	mov	r2,a
   2F5D 70 5C              2221 	jnz	00175$
                           2222 ;	SERIAL.c:153: if(player->scol != 1)
   2F5F 90 03 62           2223 	mov	dptr,#_player
   2F62 E0                 2224 	movx	a,@dptr
   2F63 FA                 2225 	mov	r2,a
   2F64 A3                 2226 	inc	dptr
   2F65 E0                 2227 	movx	a,@dptr
   2F66 FB                 2228 	mov	r3,a
   2F67 A3                 2229 	inc	dptr
   2F68 E0                 2230 	movx	a,@dptr
   2F69 FC                 2231 	mov	r4,a
   2F6A 74 01              2232 	mov	a,#0x01
   2F6C 2A                 2233 	add	a,r2
   2F6D FD                 2234 	mov	r5,a
   2F6E E4                 2235 	clr	a
   2F6F 3B                 2236 	addc	a,r3
   2F70 FE                 2237 	mov	r6,a
   2F71 8C 07              2238 	mov	ar7,r4
   2F73 8D 82              2239 	mov	dpl,r5
   2F75 8E 83              2240 	mov	dph,r6
   2F77 8F F0              2241 	mov	b,r7
   2F79 12 35 CD           2242 	lcall	__gptrget
   2F7C F8                 2243 	mov	r0,a
   2F7D B8 01 02           2244 	cjne	r0,#0x01,00266$
   2F80 80 0D              2245 	sjmp	00158$
   2F82                    2246 00266$:
                           2247 ;	SERIAL.c:154: player->scol--;
   2F82 18                 2248 	dec	r0
   2F83 8D 82              2249 	mov	dpl,r5
   2F85 8E 83              2250 	mov	dph,r6
   2F87 8F F0              2251 	mov	b,r7
   2F89 E8                 2252 	mov	a,r0
   2F8A 12 34 09           2253 	lcall	__gptrput
   2F8D 80 2C              2254 	sjmp	00175$
   2F8F                    2255 00158$:
                           2256 ;	SERIAL.c:156: if(player->col != 1){
   2F8F 74 03              2257 	mov	a,#0x03
   2F91 2A                 2258 	add	a,r2
   2F92 FA                 2259 	mov	r2,a
   2F93 E4                 2260 	clr	a
   2F94 3B                 2261 	addc	a,r3
   2F95 FB                 2262 	mov	r3,a
   2F96 8A 82              2263 	mov	dpl,r2
   2F98 8B 83              2264 	mov	dph,r3
   2F9A 8C F0              2265 	mov	b,r4
   2F9C 12 35 CD           2266 	lcall	__gptrget
   2F9F F8                 2267 	mov	r0,a
   2FA0 B8 01 02           2268 	cjne	r0,#0x01,00267$
   2FA3 80 16              2269 	sjmp	00175$
   2FA5                    2270 00267$:
                           2271 ;	SERIAL.c:157: player->scol = 5;
   2FA5 8D 82              2272 	mov	dpl,r5
   2FA7 8E 83              2273 	mov	dph,r6
   2FA9 8F F0              2274 	mov	b,r7
   2FAB 74 05              2275 	mov	a,#0x05
   2FAD 12 34 09           2276 	lcall	__gptrput
                           2277 ;	SERIAL.c:158: player->col--;
   2FB0 18                 2278 	dec	r0
   2FB1 8A 82              2279 	mov	dpl,r2
   2FB3 8B 83              2280 	mov	dph,r3
   2FB5 8C F0              2281 	mov	b,r4
   2FB7 E8                 2282 	mov	a,r0
   2FB8 12 34 09           2283 	lcall	__gptrput
   2FBB                    2284 00175$:
                           2285 ;	SERIAL.c:169: printMap();
   2FBB 12 08 67           2286 	lcall	_printMap
                           2287 ;	SERIAL.c:170: RI = 0;
   2FBE C2 98              2288 	clr	_RI
   2FC0                    2289 00178$:
                           2290 ;	SERIAL.c:173: return 1;
   2FC0 75 82 01           2291 	mov	dpl,#0x01
   2FC3 22                 2292 	ret
                           2293 	.area CSEG    (CODE)
                           2294 	.area CONST   (CODE)
                           2295 	.area XINIT   (CODE)
   376A                    2296 __xinit__rxMsg:
   376A 00                 2297 	.db #0x00
                           2298 	.area CABS    (ABS,CODE)
