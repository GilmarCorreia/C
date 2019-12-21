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
   0012                     234 _serialControl_sloc0_1_0:
   0012                     235 	.ds 2
   0014                     236 _serialControl_sloc1_1_0:
   0014                     237 	.ds 3
   0017                     238 _serialControl_sloc2_1_0:
   0017                     239 	.ds 3
   001A                     240 _serialControl_sloc3_1_0:
   001A                     241 	.ds 3
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
   02E6                     271 _point:
   02E6                     272 	.ds 8
   02EE                     273 _SCmap::
   02EE                     274 	.ds 64
   032E                     275 _map::
   032E                     276 	.ds 64
   036E                     277 _Timer0::
   036E                     278 	.ds 7
   0375                     279 _player::
   0375                     280 	.ds 3
   0378                     281 _transmitter_message_1_1:
   0378                     282 	.ds 1
   0379                     283 _transNumber_number_1_1:
   0379                     284 	.ds 1
   037A                     285 _serialConfig_PARM_2:
   037A                     286 	.ds 3
   037D                     287 _serialConfig_read_1_1:
   037D                     288 	.ds 1
   037E                     289 _serialControl_PARM_2:
   037E                     290 	.ds 3
   0381                     291 _serialControl_scmap_1_1:
   0381                     292 	.ds 3
   0384                     293 _serialControl_logic_op_1_1:
   0384                     294 	.ds 1
                            295 ;--------------------------------------------------------
                            296 ; absolute external ram data
                            297 ;--------------------------------------------------------
                            298 	.area XABS    (ABS,XDATA)
                            299 ;--------------------------------------------------------
                            300 ; external initialized ram data
                            301 ;--------------------------------------------------------
                            302 	.area XISEG   (XDATA)
   0908                     303 _rxMsg:
   0908                     304 	.ds 1
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
   2743                     340 _transmitter:
                    0002    341 	ar2 = 0x02
                    0003    342 	ar3 = 0x03
                    0004    343 	ar4 = 0x04
                    0005    344 	ar5 = 0x05
                    0006    345 	ar6 = 0x06
                    0007    346 	ar7 = 0x07
                    0000    347 	ar0 = 0x00
                    0001    348 	ar1 = 0x01
   2743 E5 82               349 	mov	a,dpl
   2745 90 03 78            350 	mov	dptr,#_transmitter_message_1_1
   2748 F0                  351 	movx	@dptr,a
                            352 ;	SERIAL.c:10: if(! TI){
   2749 20 99 0B            353 	jb	_TI,00106$
                            354 ;	SERIAL.c:11: SBUF = message;				// Manda a mensagem para o buffer
   274C 90 03 78            355 	mov	dptr,#_transmitter_message_1_1
   274F E0                  356 	movx	a,@dptr
   2750 F5 99               357 	mov	_SBUF,a
                            358 ;	SERIAL.c:13: while(TI == 0);		// Esperando a flag TI parar a transmissão
   2752                     359 00101$:
                            360 ;	SERIAL.c:14: TI = 0;			// Zerando a flag
   2752 10 99 02            361 	jbc	_TI,00112$
   2755 80 FB               362 	sjmp	00101$
   2757                     363 00112$:
   2757                     364 00106$:
   2757 22                  365 	ret
                            366 ;------------------------------------------------------------
                            367 ;Allocation info for local variables in function 'transNumber'
                            368 ;------------------------------------------------------------
                            369 ;number                    Allocated with name '_transNumber_number_1_1'
                            370 ;------------------------------------------------------------
                            371 ;	SERIAL.c:19: void transNumber(unsigned char number){
                            372 ;	-----------------------------------------
                            373 ;	 function transNumber
                            374 ;	-----------------------------------------
   2758                     375 _transNumber:
   2758 E5 82               376 	mov	a,dpl
   275A 90 03 79            377 	mov	dptr,#_transNumber_number_1_1
   275D F0                  378 	movx	@dptr,a
                            379 ;	SERIAL.c:21: transmitter(number/10 + '0'); 
   275E 90 03 79            380 	mov	dptr,#_transNumber_number_1_1
   2761 E0                  381 	movx	a,@dptr
   2762 FA                  382 	mov	r2,a
   2763 75 F0 0A            383 	mov	b,#0x0A
   2766 84                  384 	div	ab
   2767 24 30               385 	add	a,#0x30
   2769 F5 82               386 	mov	dpl,a
   276B C0 02               387 	push	ar2
   276D 12 27 43            388 	lcall	_transmitter
   2770 D0 02               389 	pop	ar2
                            390 ;	SERIAL.c:22: transmitter(number%10 + '0'); 
   2772 75 F0 0A            391 	mov	b,#0x0A
   2775 EA                  392 	mov	a,r2
   2776 84                  393 	div	ab
   2777 E5 F0               394 	mov	a,b
   2779 24 30               395 	add	a,#0x30
   277B F5 82               396 	mov	dpl,a
   277D 12 27 43            397 	lcall	_transmitter
                            398 ;	SERIAL.c:23: transmitter('\n'); 
   2780 75 82 0A            399 	mov	dpl,#0x0A
   2783 02 27 43            400 	ljmp	_transmitter
                            401 ;------------------------------------------------------------
                            402 ;Allocation info for local variables in function 'receiver'
                            403 ;------------------------------------------------------------
                            404 ;------------------------------------------------------------
                            405 ;	SERIAL.c:26: char receiver(){
                            406 ;	-----------------------------------------
                            407 ;	 function receiver
                            408 ;	-----------------------------------------
   2786                     409 _receiver:
                            410 ;	SERIAL.c:27: return SBUF;						// Recebe a mensagem do buffer
   2786 AA 99               411 	mov	r2,_SBUF
   2788 8A 82               412 	mov	dpl,r2
   278A 22                  413 	ret
                            414 ;------------------------------------------------------------
                            415 ;Allocation info for local variables in function 'receivedChar'
                            416 ;------------------------------------------------------------
                            417 ;------------------------------------------------------------
                            418 ;	SERIAL.c:30: char receivedChar(){
                            419 ;	-----------------------------------------
                            420 ;	 function receivedChar
                            421 ;	-----------------------------------------
   278B                     422 _receivedChar:
                            423 ;	SERIAL.c:31: return rxMsg;
   278B 90 09 08            424 	mov	dptr,#_rxMsg
   278E E0                  425 	movx	a,@dptr
   278F F5 82               426 	mov	dpl,a
   2791 22                  427 	ret
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
   2792                     438 _serialConfig:
   2792 E5 82               439 	mov	a,dpl
   2794 90 03 7D            440 	mov	dptr,#_serialConfig_read_1_1
   2797 F0                  441 	movx	@dptr,a
                            442 ;	SERIAL.c:35: player = gamer;
   2798 90 03 7A            443 	mov	dptr,#_serialConfig_PARM_2
   279B E0                  444 	movx	a,@dptr
   279C FA                  445 	mov	r2,a
   279D A3                  446 	inc	dptr
   279E E0                  447 	movx	a,@dptr
   279F FB                  448 	mov	r3,a
   27A0 A3                  449 	inc	dptr
   27A1 E0                  450 	movx	a,@dptr
   27A2 FC                  451 	mov	r4,a
   27A3 90 03 75            452 	mov	dptr,#_player
   27A6 EA                  453 	mov	a,r2
   27A7 F0                  454 	movx	@dptr,a
   27A8 A3                  455 	inc	dptr
   27A9 EB                  456 	mov	a,r3
   27AA F0                  457 	movx	@dptr,a
   27AB A3                  458 	inc	dptr
   27AC EC                  459 	mov	a,r4
   27AD F0                  460 	movx	@dptr,a
                            461 ;	SERIAL.c:37: if(read)
   27AE 90 03 7D            462 	mov	dptr,#_serialConfig_read_1_1
   27B1 E0                  463 	movx	a,@dptr
   27B2 FA                  464 	mov	r2,a
   27B3 60 04               465 	jz	00102$
                            466 ;	SERIAL.c:38: SCON = 0x50; 						// Configurando o modo 1 para serial (05 Serial.pdf de sistmicro)
   27B5 75 98 50            467 	mov	_SCON,#0x50
                            468 ;	SERIAL.c:40: SCON = 0x40;
   27B8 22                  469 	ret
   27B9                     470 00102$:
   27B9 75 98 40            471 	mov	_SCON,#0x40
   27BC 22                  472 	ret
                            473 ;------------------------------------------------------------
                            474 ;Allocation info for local variables in function 'serialBegin'
                            475 ;------------------------------------------------------------
                            476 ;------------------------------------------------------------
                            477 ;	SERIAL.c:44: unsigned char serialBegin(){
                            478 ;	-----------------------------------------
                            479 ;	 function serialBegin
                            480 ;	-----------------------------------------
   27BD                     481 _serialBegin:
                            482 ;	SERIAL.c:46: if(RI){
   27BD 30 98 11            483 	jnb	_RI,00104$
                            484 ;	SERIAL.c:47: rxMsg = receiver();
   27C0 12 27 86            485 	lcall	_receiver
   27C3 AA 82               486 	mov	r2,dpl
   27C5 90 09 08            487 	mov	dptr,#_rxMsg
   27C8 EA                  488 	mov	a,r2
   27C9 F0                  489 	movx	@dptr,a
                            490 ;	SERIAL.c:49: if(rxMsg == ' ')
   27CA BA 20 04            491 	cjne	r2,#0x20,00104$
                            492 ;	SERIAL.c:50: return 0;
   27CD 75 82 00            493 	mov	dpl,#0x00
                            494 ;	SERIAL.c:53: return 1;
   27D0 22                  495 	ret
   27D1                     496 00104$:
   27D1 75 82 01            497 	mov	dpl,#0x01
   27D4 22                  498 	ret
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
   27D5                     514 _serialControl:
   27D5 AA F0               515 	mov	r2,b
   27D7 AB 83               516 	mov	r3,dph
   27D9 E5 82               517 	mov	a,dpl
   27DB 90 03 81            518 	mov	dptr,#_serialControl_scmap_1_1
   27DE F0                  519 	movx	@dptr,a
   27DF A3                  520 	inc	dptr
   27E0 EB                  521 	mov	a,r3
   27E1 F0                  522 	movx	@dptr,a
   27E2 A3                  523 	inc	dptr
   27E3 EA                  524 	mov	a,r2
   27E4 F0                  525 	movx	@dptr,a
                            526 ;	SERIAL.c:58: unsigned char logic_op = 1;
   27E5 90 03 84            527 	mov	dptr,#_serialControl_logic_op_1_1
   27E8 74 01               528 	mov	a,#0x01
   27EA F0                  529 	movx	@dptr,a
                            530 ;	SERIAL.c:60: LCD_putSCharAt(player->sline,player->scol, player->line,player->col);
   27EB 90 03 75            531 	mov	dptr,#_player
   27EE E0                  532 	movx	a,@dptr
   27EF FA                  533 	mov	r2,a
   27F0 A3                  534 	inc	dptr
   27F1 E0                  535 	movx	a,@dptr
   27F2 FB                  536 	mov	r3,a
   27F3 A3                  537 	inc	dptr
   27F4 E0                  538 	movx	a,@dptr
   27F5 FC                  539 	mov	r4,a
   27F6 8A 82               540 	mov	dpl,r2
   27F8 8B 83               541 	mov	dph,r3
   27FA 8C F0               542 	mov	b,r4
   27FC 12 34 B8            543 	lcall	__gptrget
   27FF FD                  544 	mov	r5,a
   2800 74 01               545 	mov	a,#0x01
   2802 2A                  546 	add	a,r2
   2803 FE                  547 	mov	r6,a
   2804 E4                  548 	clr	a
   2805 3B                  549 	addc	a,r3
   2806 FF                  550 	mov	r7,a
   2807 8C 00               551 	mov	ar0,r4
   2809 8E 82               552 	mov	dpl,r6
   280B 8F 83               553 	mov	dph,r7
   280D 88 F0               554 	mov	b,r0
   280F 12 34 B8            555 	lcall	__gptrget
   2812 FE                  556 	mov	r6,a
   2813 74 02               557 	mov	a,#0x02
   2815 2A                  558 	add	a,r2
   2816 FF                  559 	mov	r7,a
   2817 E4                  560 	clr	a
   2818 3B                  561 	addc	a,r3
   2819 F8                  562 	mov	r0,a
   281A 8C 01               563 	mov	ar1,r4
   281C 8F 82               564 	mov	dpl,r7
   281E 88 83               565 	mov	dph,r0
   2820 89 F0               566 	mov	b,r1
   2822 12 34 B8            567 	lcall	__gptrget
   2825 FF                  568 	mov	r7,a
   2826 74 03               569 	mov	a,#0x03
   2828 2A                  570 	add	a,r2
   2829 FA                  571 	mov	r2,a
   282A E4                  572 	clr	a
   282B 3B                  573 	addc	a,r3
   282C FB                  574 	mov	r3,a
   282D 8A 82               575 	mov	dpl,r2
   282F 8B 83               576 	mov	dph,r3
   2831 8C F0               577 	mov	b,r4
   2833 12 34 B8            578 	lcall	__gptrget
   2836 FA                  579 	mov	r2,a
   2837 90 02 C8            580 	mov	dptr,#_LCD_putSCharAt_PARM_2
   283A EE                  581 	mov	a,r6
   283B F0                  582 	movx	@dptr,a
   283C 90 02 C9            583 	mov	dptr,#_LCD_putSCharAt_PARM_3
   283F EF                  584 	mov	a,r7
   2840 F0                  585 	movx	@dptr,a
   2841 90 02 CA            586 	mov	dptr,#_LCD_putSCharAt_PARM_4
   2844 EA                  587 	mov	a,r2
   2845 F0                  588 	movx	@dptr,a
   2846 8D 82               589 	mov	dpl,r5
   2848 12 22 54            590 	lcall	_LCD_putSCharAt
                            591 ;	SERIAL.c:62: if(RI){
   284B 20 98 03            592 	jb	_RI,00214$
   284E 02 32 88            593 	ljmp	00178$
   2851                     594 00214$:
                            595 ;	SERIAL.c:63: rxMsg = receiver();
   2851 12 27 86            596 	lcall	_receiver
   2854 AA 82               597 	mov	r2,dpl
   2856 90 09 08            598 	mov	dptr,#_rxMsg
   2859 EA                  599 	mov	a,r2
   285A F0                  600 	movx	@dptr,a
                            601 ;	SERIAL.c:65: if(rxMsg == 'w' || rxMsg == 'W'){		
   285B BA 77 02            602 	cjne	r2,#0x77,00215$
   285E 80 08               603 	sjmp	00173$
   2860                     604 00215$:
   2860 BA 57 02            605 	cjne	r2,#0x57,00216$
   2863 80 03               606 	sjmp	00217$
   2865                     607 00216$:
   2865 02 2A FE            608 	ljmp	00174$
   2868                     609 00217$:
   2868                     610 00173$:
                            611 ;	SERIAL.c:67: if((player->sline - 1) >0)
   2868 90 03 75            612 	mov	dptr,#_player
   286B E0                  613 	movx	a,@dptr
   286C FB                  614 	mov	r3,a
   286D A3                  615 	inc	dptr
   286E E0                  616 	movx	a,@dptr
   286F FC                  617 	mov	r4,a
   2870 A3                  618 	inc	dptr
   2871 E0                  619 	movx	a,@dptr
   2872 FD                  620 	mov	r5,a
   2873 8B 82               621 	mov	dpl,r3
   2875 8C 83               622 	mov	dph,r4
   2877 8D F0               623 	mov	b,r5
   2879 12 34 B8            624 	lcall	__gptrget
   287C FE                  625 	mov	r6,a
   287D FF                  626 	mov	r7,a
   287E 78 00               627 	mov	r0,#0x00
   2880 1F                  628 	dec	r7
   2881 BF FF 01            629 	cjne	r7,#0xff,00218$
   2884 18                  630 	dec	r0
   2885                     631 00218$:
   2885 C3                  632 	clr	c
   2886 E4                  633 	clr	a
   2887 9F                  634 	subb	a,r7
   2888 74 80               635 	mov	a,#(0x00 ^ 0x80)
   288A 88 F0               636 	mov	b,r0
   288C 63 F0 80            637 	xrl	b,#0x80
   288F 95 F0               638 	subb	a,b
   2891 40 03               639 	jc	00219$
   2893 02 29 80            640 	ljmp	00109$
   2896                     641 00219$:
                            642 ;	SERIAL.c:68: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-2] & (pow(2,5-player->scol));
   2896 74 02               643 	mov	a,#0x02
   2898 2B                  644 	add	a,r3
   2899 FF                  645 	mov	r7,a
   289A E4                  646 	clr	a
   289B 3C                  647 	addc	a,r4
   289C F8                  648 	mov	r0,a
   289D 8D 01               649 	mov	ar1,r5
   289F 8F 82               650 	mov	dpl,r7
   28A1 88 83               651 	mov	dph,r0
   28A3 89 F0               652 	mov	b,r1
   28A5 12 34 B8            653 	lcall	__gptrget
   28A8 78 00               654 	mov	r0,#0x00
   28AA 24 FF               655 	add	a,#0xff
   28AC F5 12               656 	mov	_serialControl_sloc0_1_0,a
   28AE E8                  657 	mov	a,r0
   28AF 34 FF               658 	addc	a,#0xff
   28B1 F5 13               659 	mov	(_serialControl_sloc0_1_0 + 1),a
   28B3 90 03 7E            660 	mov	dptr,#_serialControl_PARM_2
   28B6 E0                  661 	movx	a,@dptr
   28B7 F5 14               662 	mov	_serialControl_sloc1_1_0,a
   28B9 A3                  663 	inc	dptr
   28BA E0                  664 	movx	a,@dptr
   28BB F5 15               665 	mov	(_serialControl_sloc1_1_0 + 1),a
   28BD A3                  666 	inc	dptr
   28BE E0                  667 	movx	a,@dptr
   28BF F5 16               668 	mov	(_serialControl_sloc1_1_0 + 2),a
   28C1 AF 12               669 	mov	r7,_serialControl_sloc0_1_0
   28C3 E5 13               670 	mov	a,(_serialControl_sloc0_1_0 + 1)
   28C5 C4                  671 	swap	a
   28C6 54 F0               672 	anl	a,#0xf0
   28C8 CF                  673 	xch	a,r7
   28C9 C4                  674 	swap	a
   28CA CF                  675 	xch	a,r7
   28CB 6F                  676 	xrl	a,r7
   28CC CF                  677 	xch	a,r7
   28CD 54 F0               678 	anl	a,#0xf0
   28CF CF                  679 	xch	a,r7
   28D0 6F                  680 	xrl	a,r7
   28D1 F8                  681 	mov	r0,a
   28D2 EF                  682 	mov	a,r7
   28D3 25 14               683 	add	a,_serialControl_sloc1_1_0
   28D5 F5 14               684 	mov	_serialControl_sloc1_1_0,a
   28D7 E8                  685 	mov	a,r0
   28D8 35 15               686 	addc	a,(_serialControl_sloc1_1_0 + 1)
   28DA F5 15               687 	mov	(_serialControl_sloc1_1_0 + 1),a
   28DC 74 03               688 	mov	a,#0x03
   28DE 2B                  689 	add	a,r3
   28DF FF                  690 	mov	r7,a
   28E0 E4                  691 	clr	a
   28E1 3C                  692 	addc	a,r4
   28E2 F8                  693 	mov	r0,a
   28E3 8D 01               694 	mov	ar1,r5
   28E5 8F 82               695 	mov	dpl,r7
   28E7 88 83               696 	mov	dph,r0
   28E9 89 F0               697 	mov	b,r1
   28EB 12 34 B8            698 	lcall	__gptrget
   28EE 14                  699 	dec	a
   28EF 25 14               700 	add	a,_serialControl_sloc1_1_0
   28F1 FF                  701 	mov	r7,a
   28F2 E4                  702 	clr	a
   28F3 35 15               703 	addc	a,(_serialControl_sloc1_1_0 + 1)
   28F5 F8                  704 	mov	r0,a
   28F6 A9 16               705 	mov	r1,(_serialControl_sloc1_1_0 + 2)
   28F8 8F 82               706 	mov	dpl,r7
   28FA 88 83               707 	mov	dph,r0
   28FC 89 F0               708 	mov	b,r1
   28FE 12 34 B8            709 	lcall	__gptrget
   2901 FF                  710 	mov	r7,a
   2902 33                  711 	rlc	a
   2903 95 E0               712 	subb	a,acc
   2905 F8                  713 	mov	r0,a
   2906 EF                  714 	mov	a,r7
   2907 24 FF               715 	add	a,#0xff
   2909 F5 14               716 	mov	_serialControl_sloc1_1_0,a
   290B E8                  717 	mov	a,r0
   290C 34 FF               718 	addc	a,#0xff
   290E F5 15               719 	mov	(_serialControl_sloc1_1_0 + 1),a
   2910 90 03 81            720 	mov	dptr,#_serialControl_scmap_1_1
   2913 E0                  721 	movx	a,@dptr
   2914 F5 17               722 	mov	_serialControl_sloc2_1_0,a
   2916 A3                  723 	inc	dptr
   2917 E0                  724 	movx	a,@dptr
   2918 F5 18               725 	mov	(_serialControl_sloc2_1_0 + 1),a
   291A A3                  726 	inc	dptr
   291B E0                  727 	movx	a,@dptr
   291C F5 19               728 	mov	(_serialControl_sloc2_1_0 + 2),a
   291E AF 14               729 	mov	r7,_serialControl_sloc1_1_0
   2920 E5 15               730 	mov	a,(_serialControl_sloc1_1_0 + 1)
   2922 C4                  731 	swap	a
   2923 03                  732 	rr	a
   2924 54 F8               733 	anl	a,#0xf8
   2926 CF                  734 	xch	a,r7
   2927 C4                  735 	swap	a
   2928 03                  736 	rr	a
   2929 CF                  737 	xch	a,r7
   292A 6F                  738 	xrl	a,r7
   292B CF                  739 	xch	a,r7
   292C 54 F8               740 	anl	a,#0xf8
   292E CF                  741 	xch	a,r7
   292F 6F                  742 	xrl	a,r7
   2930 F8                  743 	mov	r0,a
   2931 EF                  744 	mov	a,r7
   2932 25 17               745 	add	a,_serialControl_sloc2_1_0
   2934 FF                  746 	mov	r7,a
   2935 E8                  747 	mov	a,r0
   2936 35 18               748 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2938 F8                  749 	mov	r0,a
   2939 A9 19               750 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   293B EE                  751 	mov	a,r6
   293C 24 FE               752 	add	a,#0xfe
   293E 2F                  753 	add	a,r7
   293F F5 17               754 	mov	_serialControl_sloc2_1_0,a
   2941 E4                  755 	clr	a
   2942 38                  756 	addc	a,r0
   2943 F5 18               757 	mov	(_serialControl_sloc2_1_0 + 1),a
   2945 89 19               758 	mov	(_serialControl_sloc2_1_0 + 2),r1
   2947 74 01               759 	mov	a,#0x01
   2949 2B                  760 	add	a,r3
   294A FF                  761 	mov	r7,a
   294B E4                  762 	clr	a
   294C 3C                  763 	addc	a,r4
   294D F8                  764 	mov	r0,a
   294E 8D 01               765 	mov	ar1,r5
   2950 8F 82               766 	mov	dpl,r7
   2952 88 83               767 	mov	dph,r0
   2954 89 F0               768 	mov	b,r1
   2956 12 34 B8            769 	lcall	__gptrget
   2959 FF                  770 	mov	r7,a
   295A 90 03 85            771 	mov	dptr,#_pow_PARM_2
   295D 74 05               772 	mov	a,#0x05
   295F C3                  773 	clr	c
   2960 9F                  774 	subb	a,r7
   2961 F0                  775 	movx	@dptr,a
   2962 75 82 02            776 	mov	dpl,#0x02
   2965 12 32 8C            777 	lcall	_pow
   2968 AF 82               778 	mov	r7,dpl
   296A 85 17 82            779 	mov	dpl,_serialControl_sloc2_1_0
   296D 85 18 83            780 	mov	dph,(_serialControl_sloc2_1_0 + 1)
   2970 85 19 F0            781 	mov	b,(_serialControl_sloc2_1_0 + 2)
   2973 12 34 B8            782 	lcall	__gptrget
   2976 F8                  783 	mov	r0,a
   2977 90 03 84            784 	mov	dptr,#_serialControl_logic_op_1_1
   297A EF                  785 	mov	a,r7
   297B 58                  786 	anl	a,r0
   297C F0                  787 	movx	@dptr,a
   297D 02 2A 9A            788 	ljmp	00110$
   2980                     789 00109$:
                            790 ;	SERIAL.c:69: else if(player->sline == 1 && player->line > 1)
   2980 E4                  791 	clr	a
   2981 BE 01 01            792 	cjne	r6,#0x01,00220$
   2984 04                  793 	inc	a
   2985                     794 00220$:
   2985 FE                  795 	mov	r6,a
   2986 70 03               796 	jnz	00222$
   2988 02 2A 7F            797 	ljmp	00105$
   298B                     798 00222$:
   298B 74 02               799 	mov	a,#0x02
   298D 2B                  800 	add	a,r3
   298E FF                  801 	mov	r7,a
   298F E4                  802 	clr	a
   2990 3C                  803 	addc	a,r4
   2991 F8                  804 	mov	r0,a
   2992 8D 01               805 	mov	ar1,r5
   2994 8F 82               806 	mov	dpl,r7
   2996 88 83               807 	mov	dph,r0
   2998 89 F0               808 	mov	b,r1
   299A 12 34 B8            809 	lcall	__gptrget
   299D FF                  810 	mov  r7,a
   299E 24 FE               811 	add	a,#0xff - 0x01
   29A0 40 03               812 	jc	00223$
   29A2 02 2A 7F            813 	ljmp	00105$
   29A5                     814 00223$:
                            815 ;	SERIAL.c:70: logic_op = scmap[(map[player->line-2][player->col-1].schar) - 1].adds[7] & (pow(2,5-player->scol));
   29A5 78 00               816 	mov	r0,#0x00
   29A7 EF                  817 	mov	a,r7
   29A8 24 FE               818 	add	a,#0xfe
   29AA F5 17               819 	mov	_serialControl_sloc2_1_0,a
   29AC E8                  820 	mov	a,r0
   29AD 34 FF               821 	addc	a,#0xff
   29AF F5 18               822 	mov	(_serialControl_sloc2_1_0 + 1),a
   29B1 90 03 7E            823 	mov	dptr,#_serialControl_PARM_2
   29B4 E0                  824 	movx	a,@dptr
   29B5 F5 14               825 	mov	_serialControl_sloc1_1_0,a
   29B7 A3                  826 	inc	dptr
   29B8 E0                  827 	movx	a,@dptr
   29B9 F5 15               828 	mov	(_serialControl_sloc1_1_0 + 1),a
   29BB A3                  829 	inc	dptr
   29BC E0                  830 	movx	a,@dptr
   29BD F5 16               831 	mov	(_serialControl_sloc1_1_0 + 2),a
   29BF AF 17               832 	mov	r7,_serialControl_sloc2_1_0
   29C1 E5 18               833 	mov	a,(_serialControl_sloc2_1_0 + 1)
   29C3 C4                  834 	swap	a
   29C4 54 F0               835 	anl	a,#0xf0
   29C6 CF                  836 	xch	a,r7
   29C7 C4                  837 	swap	a
   29C8 CF                  838 	xch	a,r7
   29C9 6F                  839 	xrl	a,r7
   29CA CF                  840 	xch	a,r7
   29CB 54 F0               841 	anl	a,#0xf0
   29CD CF                  842 	xch	a,r7
   29CE 6F                  843 	xrl	a,r7
   29CF F8                  844 	mov	r0,a
   29D0 EF                  845 	mov	a,r7
   29D1 25 14               846 	add	a,_serialControl_sloc1_1_0
   29D3 F5 17               847 	mov	_serialControl_sloc2_1_0,a
   29D5 E8                  848 	mov	a,r0
   29D6 35 15               849 	addc	a,(_serialControl_sloc1_1_0 + 1)
   29D8 F5 18               850 	mov	(_serialControl_sloc2_1_0 + 1),a
   29DA 85 16 19            851 	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
   29DD 74 03               852 	mov	a,#0x03
   29DF 2B                  853 	add	a,r3
   29E0 FF                  854 	mov	r7,a
   29E1 E4                  855 	clr	a
   29E2 3C                  856 	addc	a,r4
   29E3 F8                  857 	mov	r0,a
   29E4 8D 01               858 	mov	ar1,r5
   29E6 8F 82               859 	mov	dpl,r7
   29E8 88 83               860 	mov	dph,r0
   29EA 89 F0               861 	mov	b,r1
   29EC 12 34 B8            862 	lcall	__gptrget
   29EF 14                  863 	dec	a
   29F0 25 17               864 	add	a,_serialControl_sloc2_1_0
   29F2 FF                  865 	mov	r7,a
   29F3 E4                  866 	clr	a
   29F4 35 18               867 	addc	a,(_serialControl_sloc2_1_0 + 1)
   29F6 F8                  868 	mov	r0,a
   29F7 A9 19               869 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   29F9 8F 82               870 	mov	dpl,r7
   29FB 88 83               871 	mov	dph,r0
   29FD 89 F0               872 	mov	b,r1
   29FF 12 34 B8            873 	lcall	__gptrget
   2A02 FF                  874 	mov	r7,a
   2A03 33                  875 	rlc	a
   2A04 95 E0               876 	subb	a,acc
   2A06 F8                  877 	mov	r0,a
   2A07 EF                  878 	mov	a,r7
   2A08 24 FF               879 	add	a,#0xff
   2A0A F5 17               880 	mov	_serialControl_sloc2_1_0,a
   2A0C E8                  881 	mov	a,r0
   2A0D 34 FF               882 	addc	a,#0xff
   2A0F F5 18               883 	mov	(_serialControl_sloc2_1_0 + 1),a
   2A11 90 03 81            884 	mov	dptr,#_serialControl_scmap_1_1
   2A14 E0                  885 	movx	a,@dptr
   2A15 F5 14               886 	mov	_serialControl_sloc1_1_0,a
   2A17 A3                  887 	inc	dptr
   2A18 E0                  888 	movx	a,@dptr
   2A19 F5 15               889 	mov	(_serialControl_sloc1_1_0 + 1),a
   2A1B A3                  890 	inc	dptr
   2A1C E0                  891 	movx	a,@dptr
   2A1D F5 16               892 	mov	(_serialControl_sloc1_1_0 + 2),a
   2A1F AF 17               893 	mov	r7,_serialControl_sloc2_1_0
   2A21 E5 18               894 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2A23 C4                  895 	swap	a
   2A24 03                  896 	rr	a
   2A25 54 F8               897 	anl	a,#0xf8
   2A27 CF                  898 	xch	a,r7
   2A28 C4                  899 	swap	a
   2A29 03                  900 	rr	a
   2A2A CF                  901 	xch	a,r7
   2A2B 6F                  902 	xrl	a,r7
   2A2C CF                  903 	xch	a,r7
   2A2D 54 F8               904 	anl	a,#0xf8
   2A2F CF                  905 	xch	a,r7
   2A30 6F                  906 	xrl	a,r7
   2A31 F8                  907 	mov	r0,a
   2A32 EF                  908 	mov	a,r7
   2A33 25 14               909 	add	a,_serialControl_sloc1_1_0
   2A35 FF                  910 	mov	r7,a
   2A36 E8                  911 	mov	a,r0
   2A37 35 15               912 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2A39 F8                  913 	mov	r0,a
   2A3A A9 16               914 	mov	r1,(_serialControl_sloc1_1_0 + 2)
   2A3C 74 07               915 	mov	a,#0x07
   2A3E 2F                  916 	add	a,r7
   2A3F F5 17               917 	mov	_serialControl_sloc2_1_0,a
   2A41 E4                  918 	clr	a
   2A42 38                  919 	addc	a,r0
   2A43 F5 18               920 	mov	(_serialControl_sloc2_1_0 + 1),a
   2A45 89 19               921 	mov	(_serialControl_sloc2_1_0 + 2),r1
   2A47 74 01               922 	mov	a,#0x01
   2A49 2B                  923 	add	a,r3
   2A4A FF                  924 	mov	r7,a
   2A4B E4                  925 	clr	a
   2A4C 3C                  926 	addc	a,r4
   2A4D F8                  927 	mov	r0,a
   2A4E 8D 01               928 	mov	ar1,r5
   2A50 8F 82               929 	mov	dpl,r7
   2A52 88 83               930 	mov	dph,r0
   2A54 89 F0               931 	mov	b,r1
   2A56 12 34 B8            932 	lcall	__gptrget
   2A59 FF                  933 	mov	r7,a
   2A5A 90 03 85            934 	mov	dptr,#_pow_PARM_2
   2A5D 74 05               935 	mov	a,#0x05
   2A5F C3                  936 	clr	c
   2A60 9F                  937 	subb	a,r7
   2A61 F0                  938 	movx	@dptr,a
   2A62 75 82 02            939 	mov	dpl,#0x02
   2A65 12 32 8C            940 	lcall	_pow
   2A68 AF 82               941 	mov	r7,dpl
   2A6A 85 17 82            942 	mov	dpl,_serialControl_sloc2_1_0
   2A6D 85 18 83            943 	mov	dph,(_serialControl_sloc2_1_0 + 1)
   2A70 85 19 F0            944 	mov	b,(_serialControl_sloc2_1_0 + 2)
   2A73 12 34 B8            945 	lcall	__gptrget
   2A76 F8                  946 	mov	r0,a
   2A77 90 03 84            947 	mov	dptr,#_serialControl_logic_op_1_1
   2A7A EF                  948 	mov	a,r7
   2A7B 58                  949 	anl	a,r0
   2A7C F0                  950 	movx	@dptr,a
   2A7D 80 1B               951 	sjmp	00110$
   2A7F                     952 00105$:
                            953 ;	SERIAL.c:71: else if(player->sline == 1 && player->line == 1 )
   2A7F EE                  954 	mov	a,r6
   2A80 60 18               955 	jz	00110$
   2A82 74 02               956 	mov	a,#0x02
   2A84 2B                  957 	add	a,r3
   2A85 FB                  958 	mov	r3,a
   2A86 E4                  959 	clr	a
   2A87 3C                  960 	addc	a,r4
   2A88 FC                  961 	mov	r4,a
   2A89 8B 82               962 	mov	dpl,r3
   2A8B 8C 83               963 	mov	dph,r4
   2A8D 8D F0               964 	mov	b,r5
   2A8F 12 34 B8            965 	lcall	__gptrget
   2A92 FB                  966 	mov	r3,a
   2A93 BB 01 04            967 	cjne	r3,#0x01,00110$
                            968 ;	SERIAL.c:72: return 0;
   2A96 75 82 00            969 	mov	dpl,#0x00
   2A99 22                  970 	ret
   2A9A                     971 00110$:
                            972 ;	SERIAL.c:75: if(logic_op == 0){
   2A9A 90 03 84            973 	mov	dptr,#_serialControl_logic_op_1_1
   2A9D E0                  974 	movx	a,@dptr
   2A9E FB                  975 	mov	r3,a
   2A9F 60 03               976 	jz	00227$
   2AA1 02 32 83            977 	ljmp	00175$
   2AA4                     978 00227$:
                            979 ;	SERIAL.c:76: if(player->sline != 1)
   2AA4 90 03 75            980 	mov	dptr,#_player
   2AA7 E0                  981 	movx	a,@dptr
   2AA8 FB                  982 	mov	r3,a
   2AA9 A3                  983 	inc	dptr
   2AAA E0                  984 	movx	a,@dptr
   2AAB FC                  985 	mov	r4,a
   2AAC A3                  986 	inc	dptr
   2AAD E0                  987 	movx	a,@dptr
   2AAE FD                  988 	mov	r5,a
   2AAF 8B 82               989 	mov	dpl,r3
   2AB1 8C 83               990 	mov	dph,r4
   2AB3 8D F0               991 	mov	b,r5
   2AB5 12 34 B8            992 	lcall	__gptrget
   2AB8 FE                  993 	mov	r6,a
   2AB9 BE 01 02            994 	cjne	r6,#0x01,00228$
   2ABC 80 0E               995 	sjmp	00114$
   2ABE                     996 00228$:
                            997 ;	SERIAL.c:77: player->sline--;
   2ABE 1E                  998 	dec	r6
   2ABF 8B 82               999 	mov	dpl,r3
   2AC1 8C 83              1000 	mov	dph,r4
   2AC3 8D F0              1001 	mov	b,r5
   2AC5 EE                 1002 	mov	a,r6
   2AC6 12 33 5A           1003 	lcall	__gptrput
   2AC9 02 32 83           1004 	ljmp	00175$
   2ACC                    1005 00114$:
                           1006 ;	SERIAL.c:79: if(player->line != 1){
   2ACC 74 02              1007 	mov	a,#0x02
   2ACE 2B                 1008 	add	a,r3
   2ACF FE                 1009 	mov	r6,a
   2AD0 E4                 1010 	clr	a
   2AD1 3C                 1011 	addc	a,r4
   2AD2 FF                 1012 	mov	r7,a
   2AD3 8D 00              1013 	mov	ar0,r5
   2AD5 8E 82              1014 	mov	dpl,r6
   2AD7 8F 83              1015 	mov	dph,r7
   2AD9 88 F0              1016 	mov	b,r0
   2ADB 12 34 B8           1017 	lcall	__gptrget
   2ADE F9                 1018 	mov	r1,a
   2ADF B9 01 03           1019 	cjne	r1,#0x01,00229$
   2AE2 02 32 83           1020 	ljmp	00175$
   2AE5                    1021 00229$:
                           1022 ;	SERIAL.c:80: player->sline = 8;
   2AE5 8B 82              1023 	mov	dpl,r3
   2AE7 8C 83              1024 	mov	dph,r4
   2AE9 8D F0              1025 	mov	b,r5
   2AEB 74 08              1026 	mov	a,#0x08
   2AED 12 33 5A           1027 	lcall	__gptrput
                           1028 ;	SERIAL.c:81: player->line--;
   2AF0 19                 1029 	dec	r1
   2AF1 8E 82              1030 	mov	dpl,r6
   2AF3 8F 83              1031 	mov	dph,r7
   2AF5 88 F0              1032 	mov	b,r0
   2AF7 E9                 1033 	mov	a,r1
   2AF8 12 33 5A           1034 	lcall	__gptrput
   2AFB 02 32 83           1035 	ljmp	00175$
   2AFE                    1036 00174$:
                           1037 ;	SERIAL.c:89: else if(rxMsg == 's' || rxMsg == 'S'){
   2AFE BA 73 02           1038 	cjne	r2,#0x73,00230$
   2B01 80 08              1039 	sjmp	00169$
   2B03                    1040 00230$:
   2B03 BA 53 02           1041 	cjne	r2,#0x53,00231$
   2B06 80 03              1042 	sjmp	00232$
   2B08                    1043 00231$:
   2B08 02 2D 4A           1044 	ljmp	00170$
   2B0B                    1045 00232$:
   2B0B                    1046 00169$:
                           1047 ;	SERIAL.c:92: if((player->sline-1) < 7)
   2B0B 90 03 75           1048 	mov	dptr,#_player
   2B0E E0                 1049 	movx	a,@dptr
   2B0F FB                 1050 	mov	r3,a
   2B10 A3                 1051 	inc	dptr
   2B11 E0                 1052 	movx	a,@dptr
   2B12 FC                 1053 	mov	r4,a
   2B13 A3                 1054 	inc	dptr
   2B14 E0                 1055 	movx	a,@dptr
   2B15 FD                 1056 	mov	r5,a
   2B16 8B 82              1057 	mov	dpl,r3
   2B18 8C 83              1058 	mov	dph,r4
   2B1A 8D F0              1059 	mov	b,r5
   2B1C 12 34 B8           1060 	lcall	__gptrget
   2B1F FE                 1061 	mov	r6,a
   2B20 FF                 1062 	mov	r7,a
   2B21 78 00              1063 	mov	r0,#0x00
   2B23 1F                 1064 	dec	r7
   2B24 BF FF 01           1065 	cjne	r7,#0xff,00233$
   2B27 18                 1066 	dec	r0
   2B28                    1067 00233$:
   2B28 C3                 1068 	clr	c
   2B29 EF                 1069 	mov	a,r7
   2B2A 94 07              1070 	subb	a,#0x07
   2B2C E8                 1071 	mov	a,r0
   2B2D 64 80              1072 	xrl	a,#0x80
   2B2F 94 80              1073 	subb	a,#0x80
   2B31 40 03              1074 	jc	00234$
   2B33 02 2C 21           1075 	ljmp	00119$
   2B36                    1076 00234$:
                           1077 ;	SERIAL.c:93: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline] & (pow(2,5-player->scol));
   2B36 74 02              1078 	mov	a,#0x02
   2B38 2B                 1079 	add	a,r3
   2B39 FF                 1080 	mov	r7,a
   2B3A E4                 1081 	clr	a
   2B3B 3C                 1082 	addc	a,r4
   2B3C F8                 1083 	mov	r0,a
   2B3D 8D 01              1084 	mov	ar1,r5
   2B3F 8F 82              1085 	mov	dpl,r7
   2B41 88 83              1086 	mov	dph,r0
   2B43 89 F0              1087 	mov	b,r1
   2B45 12 34 B8           1088 	lcall	__gptrget
   2B48 78 00              1089 	mov	r0,#0x00
   2B4A 24 FF              1090 	add	a,#0xff
   2B4C F5 17              1091 	mov	_serialControl_sloc2_1_0,a
   2B4E E8                 1092 	mov	a,r0
   2B4F 34 FF              1093 	addc	a,#0xff
   2B51 F5 18              1094 	mov	(_serialControl_sloc2_1_0 + 1),a
   2B53 90 03 7E           1095 	mov	dptr,#_serialControl_PARM_2
   2B56 E0                 1096 	movx	a,@dptr
   2B57 F5 14              1097 	mov	_serialControl_sloc1_1_0,a
   2B59 A3                 1098 	inc	dptr
   2B5A E0                 1099 	movx	a,@dptr
   2B5B F5 15              1100 	mov	(_serialControl_sloc1_1_0 + 1),a
   2B5D A3                 1101 	inc	dptr
   2B5E E0                 1102 	movx	a,@dptr
   2B5F F5 16              1103 	mov	(_serialControl_sloc1_1_0 + 2),a
   2B61 AF 17              1104 	mov	r7,_serialControl_sloc2_1_0
   2B63 E5 18              1105 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2B65 C4                 1106 	swap	a
   2B66 54 F0              1107 	anl	a,#0xf0
   2B68 CF                 1108 	xch	a,r7
   2B69 C4                 1109 	swap	a
   2B6A CF                 1110 	xch	a,r7
   2B6B 6F                 1111 	xrl	a,r7
   2B6C CF                 1112 	xch	a,r7
   2B6D 54 F0              1113 	anl	a,#0xf0
   2B6F CF                 1114 	xch	a,r7
   2B70 6F                 1115 	xrl	a,r7
   2B71 F8                 1116 	mov	r0,a
   2B72 EF                 1117 	mov	a,r7
   2B73 25 14              1118 	add	a,_serialControl_sloc1_1_0
   2B75 F5 17              1119 	mov	_serialControl_sloc2_1_0,a
   2B77 E8                 1120 	mov	a,r0
   2B78 35 15              1121 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2B7A F5 18              1122 	mov	(_serialControl_sloc2_1_0 + 1),a
   2B7C 85 16 19           1123 	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
   2B7F 74 03              1124 	mov	a,#0x03
   2B81 2B                 1125 	add	a,r3
   2B82 FF                 1126 	mov	r7,a
   2B83 E4                 1127 	clr	a
   2B84 3C                 1128 	addc	a,r4
   2B85 F8                 1129 	mov	r0,a
   2B86 8D 01              1130 	mov	ar1,r5
   2B88 8F 82              1131 	mov	dpl,r7
   2B8A 88 83              1132 	mov	dph,r0
   2B8C 89 F0              1133 	mov	b,r1
   2B8E 12 34 B8           1134 	lcall	__gptrget
   2B91 14                 1135 	dec	a
   2B92 25 17              1136 	add	a,_serialControl_sloc2_1_0
   2B94 FF                 1137 	mov	r7,a
   2B95 E4                 1138 	clr	a
   2B96 35 18              1139 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2B98 F8                 1140 	mov	r0,a
   2B99 A9 19              1141 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   2B9B 8F 82              1142 	mov	dpl,r7
   2B9D 88 83              1143 	mov	dph,r0
   2B9F 89 F0              1144 	mov	b,r1
   2BA1 12 34 B8           1145 	lcall	__gptrget
   2BA4 FF                 1146 	mov	r7,a
   2BA5 33                 1147 	rlc	a
   2BA6 95 E0              1148 	subb	a,acc
   2BA8 F8                 1149 	mov	r0,a
   2BA9 EF                 1150 	mov	a,r7
   2BAA 24 FF              1151 	add	a,#0xff
   2BAC F5 17              1152 	mov	_serialControl_sloc2_1_0,a
   2BAE E8                 1153 	mov	a,r0
   2BAF 34 FF              1154 	addc	a,#0xff
   2BB1 F5 18              1155 	mov	(_serialControl_sloc2_1_0 + 1),a
   2BB3 90 03 81           1156 	mov	dptr,#_serialControl_scmap_1_1
   2BB6 E0                 1157 	movx	a,@dptr
   2BB7 F5 14              1158 	mov	_serialControl_sloc1_1_0,a
   2BB9 A3                 1159 	inc	dptr
   2BBA E0                 1160 	movx	a,@dptr
   2BBB F5 15              1161 	mov	(_serialControl_sloc1_1_0 + 1),a
   2BBD A3                 1162 	inc	dptr
   2BBE E0                 1163 	movx	a,@dptr
   2BBF F5 16              1164 	mov	(_serialControl_sloc1_1_0 + 2),a
   2BC1 AF 17              1165 	mov	r7,_serialControl_sloc2_1_0
   2BC3 E5 18              1166 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2BC5 C4                 1167 	swap	a
   2BC6 03                 1168 	rr	a
   2BC7 54 F8              1169 	anl	a,#0xf8
   2BC9 CF                 1170 	xch	a,r7
   2BCA C4                 1171 	swap	a
   2BCB 03                 1172 	rr	a
   2BCC CF                 1173 	xch	a,r7
   2BCD 6F                 1174 	xrl	a,r7
   2BCE CF                 1175 	xch	a,r7
   2BCF 54 F8              1176 	anl	a,#0xf8
   2BD1 CF                 1177 	xch	a,r7
   2BD2 6F                 1178 	xrl	a,r7
   2BD3 F8                 1179 	mov	r0,a
   2BD4 EF                 1180 	mov	a,r7
   2BD5 25 14              1181 	add	a,_serialControl_sloc1_1_0
   2BD7 FF                 1182 	mov	r7,a
   2BD8 E8                 1183 	mov	a,r0
   2BD9 35 15              1184 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2BDB F8                 1185 	mov	r0,a
   2BDC A9 16              1186 	mov	r1,(_serialControl_sloc1_1_0 + 2)
   2BDE EE                 1187 	mov	a,r6
   2BDF 2F                 1188 	add	a,r7
   2BE0 F5 17              1189 	mov	_serialControl_sloc2_1_0,a
   2BE2 E4                 1190 	clr	a
   2BE3 38                 1191 	addc	a,r0
   2BE4 F5 18              1192 	mov	(_serialControl_sloc2_1_0 + 1),a
   2BE6 89 19              1193 	mov	(_serialControl_sloc2_1_0 + 2),r1
   2BE8 74 01              1194 	mov	a,#0x01
   2BEA 2B                 1195 	add	a,r3
   2BEB FE                 1196 	mov	r6,a
   2BEC E4                 1197 	clr	a
   2BED 3C                 1198 	addc	a,r4
   2BEE FF                 1199 	mov	r7,a
   2BEF 8D 00              1200 	mov	ar0,r5
   2BF1 8E 82              1201 	mov	dpl,r6
   2BF3 8F 83              1202 	mov	dph,r7
   2BF5 88 F0              1203 	mov	b,r0
   2BF7 12 34 B8           1204 	lcall	__gptrget
   2BFA FE                 1205 	mov	r6,a
   2BFB 90 03 85           1206 	mov	dptr,#_pow_PARM_2
   2BFE 74 05              1207 	mov	a,#0x05
   2C00 C3                 1208 	clr	c
   2C01 9E                 1209 	subb	a,r6
   2C02 F0                 1210 	movx	@dptr,a
   2C03 75 82 02           1211 	mov	dpl,#0x02
   2C06 12 32 8C           1212 	lcall	_pow
   2C09 AE 82              1213 	mov	r6,dpl
   2C0B 85 17 82           1214 	mov	dpl,_serialControl_sloc2_1_0
   2C0E 85 18 83           1215 	mov	dph,(_serialControl_sloc2_1_0 + 1)
   2C11 85 19 F0           1216 	mov	b,(_serialControl_sloc2_1_0 + 2)
   2C14 12 34 B8           1217 	lcall	__gptrget
   2C17 FF                 1218 	mov	r7,a
   2C18 90 03 84           1219 	mov	dptr,#_serialControl_logic_op_1_1
   2C1B EE                 1220 	mov	a,r6
   2C1C 5F                 1221 	anl	a,r7
   2C1D F0                 1222 	movx	@dptr,a
   2C1E 02 2C E6           1223 	ljmp	00120$
   2C21                    1224 00119$:
                           1225 ;	SERIAL.c:95: logic_op = scmap[(map[player->line][player->col-1].schar) - 1].adds[0] & (pow(2,5-player->scol));	
   2C21 74 02              1226 	mov	a,#0x02
   2C23 2B                 1227 	add	a,r3
   2C24 FE                 1228 	mov	r6,a
   2C25 E4                 1229 	clr	a
   2C26 3C                 1230 	addc	a,r4
   2C27 FF                 1231 	mov	r7,a
   2C28 8D 00              1232 	mov	ar0,r5
   2C2A 8E 82              1233 	mov	dpl,r6
   2C2C 8F 83              1234 	mov	dph,r7
   2C2E 88 F0              1235 	mov	b,r0
   2C30 12 34 B8           1236 	lcall	__gptrget
   2C33 FE                 1237 	mov	r6,a
   2C34 90 03 7E           1238 	mov	dptr,#_serialControl_PARM_2
   2C37 E0                 1239 	movx	a,@dptr
   2C38 FF                 1240 	mov	r7,a
   2C39 A3                 1241 	inc	dptr
   2C3A E0                 1242 	movx	a,@dptr
   2C3B F8                 1243 	mov	r0,a
   2C3C A3                 1244 	inc	dptr
   2C3D E0                 1245 	movx	a,@dptr
   2C3E F9                 1246 	mov	r1,a
   2C3F EE                 1247 	mov	a,r6
   2C40 C4                 1248 	swap	a
   2C41 54 F0              1249 	anl	a,#0xf0
   2C43 2F                 1250 	add	a,r7
   2C44 F5 17              1251 	mov	_serialControl_sloc2_1_0,a
   2C46 E4                 1252 	clr	a
   2C47 38                 1253 	addc	a,r0
   2C48 F5 18              1254 	mov	(_serialControl_sloc2_1_0 + 1),a
   2C4A 89 19              1255 	mov	(_serialControl_sloc2_1_0 + 2),r1
   2C4C 74 03              1256 	mov	a,#0x03
   2C4E 2B                 1257 	add	a,r3
   2C4F FE                 1258 	mov	r6,a
   2C50 E4                 1259 	clr	a
   2C51 3C                 1260 	addc	a,r4
   2C52 FF                 1261 	mov	r7,a
   2C53 8D 00              1262 	mov	ar0,r5
   2C55 8E 82              1263 	mov	dpl,r6
   2C57 8F 83              1264 	mov	dph,r7
   2C59 88 F0              1265 	mov	b,r0
   2C5B 12 34 B8           1266 	lcall	__gptrget
   2C5E 14                 1267 	dec	a
   2C5F 25 17              1268 	add	a,_serialControl_sloc2_1_0
   2C61 FE                 1269 	mov	r6,a
   2C62 E4                 1270 	clr	a
   2C63 35 18              1271 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2C65 FF                 1272 	mov	r7,a
   2C66 A8 19              1273 	mov	r0,(_serialControl_sloc2_1_0 + 2)
   2C68 8E 82              1274 	mov	dpl,r6
   2C6A 8F 83              1275 	mov	dph,r7
   2C6C 88 F0              1276 	mov	b,r0
   2C6E 12 34 B8           1277 	lcall	__gptrget
   2C71 FE                 1278 	mov	r6,a
   2C72 33                 1279 	rlc	a
   2C73 95 E0              1280 	subb	a,acc
   2C75 FF                 1281 	mov	r7,a
   2C76 EE                 1282 	mov	a,r6
   2C77 24 FF              1283 	add	a,#0xff
   2C79 F5 17              1284 	mov	_serialControl_sloc2_1_0,a
   2C7B EF                 1285 	mov	a,r7
   2C7C 34 FF              1286 	addc	a,#0xff
   2C7E F5 18              1287 	mov	(_serialControl_sloc2_1_0 + 1),a
   2C80 90 03 81           1288 	mov	dptr,#_serialControl_scmap_1_1
   2C83 E0                 1289 	movx	a,@dptr
   2C84 F5 14              1290 	mov	_serialControl_sloc1_1_0,a
   2C86 A3                 1291 	inc	dptr
   2C87 E0                 1292 	movx	a,@dptr
   2C88 F5 15              1293 	mov	(_serialControl_sloc1_1_0 + 1),a
   2C8A A3                 1294 	inc	dptr
   2C8B E0                 1295 	movx	a,@dptr
   2C8C F5 16              1296 	mov	(_serialControl_sloc1_1_0 + 2),a
   2C8E AF 17              1297 	mov	r7,_serialControl_sloc2_1_0
   2C90 E5 18              1298 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2C92 C4                 1299 	swap	a
   2C93 03                 1300 	rr	a
   2C94 54 F8              1301 	anl	a,#0xf8
   2C96 CF                 1302 	xch	a,r7
   2C97 C4                 1303 	swap	a
   2C98 03                 1304 	rr	a
   2C99 CF                 1305 	xch	a,r7
   2C9A 6F                 1306 	xrl	a,r7
   2C9B CF                 1307 	xch	a,r7
   2C9C 54 F8              1308 	anl	a,#0xf8
   2C9E CF                 1309 	xch	a,r7
   2C9F 6F                 1310 	xrl	a,r7
   2CA0 FE                 1311 	mov	r6,a
   2CA1 EF                 1312 	mov	a,r7
   2CA2 25 14              1313 	add	a,_serialControl_sloc1_1_0
   2CA4 FF                 1314 	mov	r7,a
   2CA5 EE                 1315 	mov	a,r6
   2CA6 35 15              1316 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2CA8 FE                 1317 	mov	r6,a
   2CA9 A8 16              1318 	mov	r0,(_serialControl_sloc1_1_0 + 2)
   2CAB 0B                 1319 	inc	r3
   2CAC BB 00 01           1320 	cjne	r3,#0x00,00235$
   2CAF 0C                 1321 	inc	r4
   2CB0                    1322 00235$:
   2CB0 8B 82              1323 	mov	dpl,r3
   2CB2 8C 83              1324 	mov	dph,r4
   2CB4 8D F0              1325 	mov	b,r5
   2CB6 12 34 B8           1326 	lcall	__gptrget
   2CB9 FB                 1327 	mov	r3,a
   2CBA 90 03 85           1328 	mov	dptr,#_pow_PARM_2
   2CBD 74 05              1329 	mov	a,#0x05
   2CBF C3                 1330 	clr	c
   2CC0 9B                 1331 	subb	a,r3
   2CC1 F0                 1332 	movx	@dptr,a
   2CC2 75 82 02           1333 	mov	dpl,#0x02
   2CC5 C0 06              1334 	push	ar6
   2CC7 C0 07              1335 	push	ar7
   2CC9 C0 00              1336 	push	ar0
   2CCB 12 32 8C           1337 	lcall	_pow
   2CCE AB 82              1338 	mov	r3,dpl
   2CD0 D0 00              1339 	pop	ar0
   2CD2 D0 07              1340 	pop	ar7
   2CD4 D0 06              1341 	pop	ar6
   2CD6 8F 82              1342 	mov	dpl,r7
   2CD8 8E 83              1343 	mov	dph,r6
   2CDA 88 F0              1344 	mov	b,r0
   2CDC 12 34 B8           1345 	lcall	__gptrget
   2CDF FF                 1346 	mov	r7,a
   2CE0 90 03 84           1347 	mov	dptr,#_serialControl_logic_op_1_1
   2CE3 EB                 1348 	mov	a,r3
   2CE4 5F                 1349 	anl	a,r7
   2CE5 F0                 1350 	movx	@dptr,a
   2CE6                    1351 00120$:
                           1352 ;	SERIAL.c:100: if(logic_op == 0){
   2CE6 90 03 84           1353 	mov	dptr,#_serialControl_logic_op_1_1
   2CE9 E0                 1354 	movx	a,@dptr
   2CEA FB                 1355 	mov	r3,a
   2CEB 60 03              1356 	jz	00236$
   2CED 02 32 83           1357 	ljmp	00175$
   2CF0                    1358 00236$:
                           1359 ;	SERIAL.c:101: if(player->sline != 8)
   2CF0 90 03 75           1360 	mov	dptr,#_player
   2CF3 E0                 1361 	movx	a,@dptr
   2CF4 FB                 1362 	mov	r3,a
   2CF5 A3                 1363 	inc	dptr
   2CF6 E0                 1364 	movx	a,@dptr
   2CF7 FC                 1365 	mov	r4,a
   2CF8 A3                 1366 	inc	dptr
   2CF9 E0                 1367 	movx	a,@dptr
   2CFA FD                 1368 	mov	r5,a
   2CFB 8B 82              1369 	mov	dpl,r3
   2CFD 8C 83              1370 	mov	dph,r4
   2CFF 8D F0              1371 	mov	b,r5
   2D01 12 34 B8           1372 	lcall	__gptrget
   2D04 FE                 1373 	mov	r6,a
   2D05 BE 08 02           1374 	cjne	r6,#0x08,00237$
   2D08 80 0E              1375 	sjmp	00124$
   2D0A                    1376 00237$:
                           1377 ;	SERIAL.c:102: player->sline++;
   2D0A 0E                 1378 	inc	r6
   2D0B 8B 82              1379 	mov	dpl,r3
   2D0D 8C 83              1380 	mov	dph,r4
   2D0F 8D F0              1381 	mov	b,r5
   2D11 EE                 1382 	mov	a,r6
   2D12 12 33 5A           1383 	lcall	__gptrput
   2D15 02 32 83           1384 	ljmp	00175$
   2D18                    1385 00124$:
                           1386 ;	SERIAL.c:104: if(player->line != 4){
   2D18 74 02              1387 	mov	a,#0x02
   2D1A 2B                 1388 	add	a,r3
   2D1B FE                 1389 	mov	r6,a
   2D1C E4                 1390 	clr	a
   2D1D 3C                 1391 	addc	a,r4
   2D1E FF                 1392 	mov	r7,a
   2D1F 8D 00              1393 	mov	ar0,r5
   2D21 8E 82              1394 	mov	dpl,r6
   2D23 8F 83              1395 	mov	dph,r7
   2D25 88 F0              1396 	mov	b,r0
   2D27 12 34 B8           1397 	lcall	__gptrget
   2D2A F9                 1398 	mov	r1,a
   2D2B B9 04 03           1399 	cjne	r1,#0x04,00238$
   2D2E 02 32 83           1400 	ljmp	00175$
   2D31                    1401 00238$:
                           1402 ;	SERIAL.c:105: player->sline = 1;
   2D31 8B 82              1403 	mov	dpl,r3
   2D33 8C 83              1404 	mov	dph,r4
   2D35 8D F0              1405 	mov	b,r5
   2D37 74 01              1406 	mov	a,#0x01
   2D39 12 33 5A           1407 	lcall	__gptrput
                           1408 ;	SERIAL.c:106: player->line++;
   2D3C 09                 1409 	inc	r1
   2D3D 8E 82              1410 	mov	dpl,r6
   2D3F 8F 83              1411 	mov	dph,r7
   2D41 88 F0              1412 	mov	b,r0
   2D43 E9                 1413 	mov	a,r1
   2D44 12 33 5A           1414 	lcall	__gptrput
   2D47 02 32 83           1415 	ljmp	00175$
   2D4A                    1416 00170$:
                           1417 ;	SERIAL.c:115: else if(rxMsg == 'd' || rxMsg == 'D'){
   2D4A BA 64 02           1418 	cjne	r2,#0x64,00239$
   2D4D 80 08              1419 	sjmp	00165$
   2D4F                    1420 00239$:
   2D4F BA 44 02           1421 	cjne	r2,#0x44,00240$
   2D52 80 03              1422 	sjmp	00241$
   2D54                    1423 00240$:
   2D54 02 2F E7           1424 	ljmp	00166$
   2D57                    1425 00241$:
   2D57                    1426 00165$:
                           1427 ;	SERIAL.c:118: if((player->scol+1)<6)
   2D57 90 03 75           1428 	mov	dptr,#_player
   2D5A E0                 1429 	movx	a,@dptr
   2D5B FB                 1430 	mov	r3,a
   2D5C A3                 1431 	inc	dptr
   2D5D E0                 1432 	movx	a,@dptr
   2D5E FC                 1433 	mov	r4,a
   2D5F A3                 1434 	inc	dptr
   2D60 E0                 1435 	movx	a,@dptr
   2D61 FD                 1436 	mov	r5,a
   2D62 74 01              1437 	mov	a,#0x01
   2D64 2B                 1438 	add	a,r3
   2D65 FE                 1439 	mov	r6,a
   2D66 E4                 1440 	clr	a
   2D67 3C                 1441 	addc	a,r4
   2D68 FF                 1442 	mov	r7,a
   2D69 8D 00              1443 	mov	ar0,r5
   2D6B 8E 82              1444 	mov	dpl,r6
   2D6D 8F 83              1445 	mov	dph,r7
   2D6F 88 F0              1446 	mov	b,r0
   2D71 12 34 B8           1447 	lcall	__gptrget
   2D74 FE                 1448 	mov	r6,a
   2D75 FF                 1449 	mov	r7,a
   2D76 78 00              1450 	mov	r0,#0x00
   2D78 0F                 1451 	inc	r7
   2D79 BF 00 01           1452 	cjne	r7,#0x00,00242$
   2D7C 08                 1453 	inc	r0
   2D7D                    1454 00242$:
   2D7D C3                 1455 	clr	c
   2D7E EF                 1456 	mov	a,r7
   2D7F 94 06              1457 	subb	a,#0x06
   2D81 E8                 1458 	mov	a,r0
   2D82 64 80              1459 	xrl	a,#0x80
   2D84 94 80              1460 	subb	a,#0x80
   2D86 40 03              1461 	jc	00243$
   2D88 02 2E 71           1462 	ljmp	00136$
   2D8B                    1463 00243$:
                           1464 ;	SERIAL.c:119: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-1] & (pow(2,5-(player->scol+1)));
   2D8B 74 02              1465 	mov	a,#0x02
   2D8D 2B                 1466 	add	a,r3
   2D8E FF                 1467 	mov	r7,a
   2D8F E4                 1468 	clr	a
   2D90 3C                 1469 	addc	a,r4
   2D91 F8                 1470 	mov	r0,a
   2D92 8D 01              1471 	mov	ar1,r5
   2D94 8F 82              1472 	mov	dpl,r7
   2D96 88 83              1473 	mov	dph,r0
   2D98 89 F0              1474 	mov	b,r1
   2D9A 12 34 B8           1475 	lcall	__gptrget
   2D9D 78 00              1476 	mov	r0,#0x00
   2D9F 24 FF              1477 	add	a,#0xff
   2DA1 F5 17              1478 	mov	_serialControl_sloc2_1_0,a
   2DA3 E8                 1479 	mov	a,r0
   2DA4 34 FF              1480 	addc	a,#0xff
   2DA6 F5 18              1481 	mov	(_serialControl_sloc2_1_0 + 1),a
   2DA8 90 03 7E           1482 	mov	dptr,#_serialControl_PARM_2
   2DAB E0                 1483 	movx	a,@dptr
   2DAC F5 14              1484 	mov	_serialControl_sloc1_1_0,a
   2DAE A3                 1485 	inc	dptr
   2DAF E0                 1486 	movx	a,@dptr
   2DB0 F5 15              1487 	mov	(_serialControl_sloc1_1_0 + 1),a
   2DB2 A3                 1488 	inc	dptr
   2DB3 E0                 1489 	movx	a,@dptr
   2DB4 F5 16              1490 	mov	(_serialControl_sloc1_1_0 + 2),a
   2DB6 AF 17              1491 	mov	r7,_serialControl_sloc2_1_0
   2DB8 E5 18              1492 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2DBA C4                 1493 	swap	a
   2DBB 54 F0              1494 	anl	a,#0xf0
   2DBD CF                 1495 	xch	a,r7
   2DBE C4                 1496 	swap	a
   2DBF CF                 1497 	xch	a,r7
   2DC0 6F                 1498 	xrl	a,r7
   2DC1 CF                 1499 	xch	a,r7
   2DC2 54 F0              1500 	anl	a,#0xf0
   2DC4 CF                 1501 	xch	a,r7
   2DC5 6F                 1502 	xrl	a,r7
   2DC6 F8                 1503 	mov	r0,a
   2DC7 EF                 1504 	mov	a,r7
   2DC8 25 14              1505 	add	a,_serialControl_sloc1_1_0
   2DCA F5 17              1506 	mov	_serialControl_sloc2_1_0,a
   2DCC E8                 1507 	mov	a,r0
   2DCD 35 15              1508 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2DCF F5 18              1509 	mov	(_serialControl_sloc2_1_0 + 1),a
   2DD1 85 16 19           1510 	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
   2DD4 74 03              1511 	mov	a,#0x03
   2DD6 2B                 1512 	add	a,r3
   2DD7 FF                 1513 	mov	r7,a
   2DD8 E4                 1514 	clr	a
   2DD9 3C                 1515 	addc	a,r4
   2DDA F8                 1516 	mov	r0,a
   2DDB 8D 01              1517 	mov	ar1,r5
   2DDD 8F 82              1518 	mov	dpl,r7
   2DDF 88 83              1519 	mov	dph,r0
   2DE1 89 F0              1520 	mov	b,r1
   2DE3 12 34 B8           1521 	lcall	__gptrget
   2DE6 14                 1522 	dec	a
   2DE7 25 17              1523 	add	a,_serialControl_sloc2_1_0
   2DE9 FF                 1524 	mov	r7,a
   2DEA E4                 1525 	clr	a
   2DEB 35 18              1526 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2DED F8                 1527 	mov	r0,a
   2DEE A9 19              1528 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   2DF0 8F 82              1529 	mov	dpl,r7
   2DF2 88 83              1530 	mov	dph,r0
   2DF4 89 F0              1531 	mov	b,r1
   2DF6 12 34 B8           1532 	lcall	__gptrget
   2DF9 FF                 1533 	mov	r7,a
   2DFA 33                 1534 	rlc	a
   2DFB 95 E0              1535 	subb	a,acc
   2DFD F8                 1536 	mov	r0,a
   2DFE EF                 1537 	mov	a,r7
   2DFF 24 FF              1538 	add	a,#0xff
   2E01 F5 17              1539 	mov	_serialControl_sloc2_1_0,a
   2E03 E8                 1540 	mov	a,r0
   2E04 34 FF              1541 	addc	a,#0xff
   2E06 F5 18              1542 	mov	(_serialControl_sloc2_1_0 + 1),a
   2E08 90 03 81           1543 	mov	dptr,#_serialControl_scmap_1_1
   2E0B E0                 1544 	movx	a,@dptr
   2E0C F5 14              1545 	mov	_serialControl_sloc1_1_0,a
   2E0E A3                 1546 	inc	dptr
   2E0F E0                 1547 	movx	a,@dptr
   2E10 F5 15              1548 	mov	(_serialControl_sloc1_1_0 + 1),a
   2E12 A3                 1549 	inc	dptr
   2E13 E0                 1550 	movx	a,@dptr
   2E14 F5 16              1551 	mov	(_serialControl_sloc1_1_0 + 2),a
   2E16 AF 17              1552 	mov	r7,_serialControl_sloc2_1_0
   2E18 E5 18              1553 	mov	a,(_serialControl_sloc2_1_0 + 1)
   2E1A C4                 1554 	swap	a
   2E1B 03                 1555 	rr	a
   2E1C 54 F8              1556 	anl	a,#0xf8
   2E1E CF                 1557 	xch	a,r7
   2E1F C4                 1558 	swap	a
   2E20 03                 1559 	rr	a
   2E21 CF                 1560 	xch	a,r7
   2E22 6F                 1561 	xrl	a,r7
   2E23 CF                 1562 	xch	a,r7
   2E24 54 F8              1563 	anl	a,#0xf8
   2E26 CF                 1564 	xch	a,r7
   2E27 6F                 1565 	xrl	a,r7
   2E28 F8                 1566 	mov	r0,a
   2E29 EF                 1567 	mov	a,r7
   2E2A 25 14              1568 	add	a,_serialControl_sloc1_1_0
   2E2C F5 17              1569 	mov	_serialControl_sloc2_1_0,a
   2E2E E8                 1570 	mov	a,r0
   2E2F 35 15              1571 	addc	a,(_serialControl_sloc1_1_0 + 1)
   2E31 F5 18              1572 	mov	(_serialControl_sloc2_1_0 + 1),a
   2E33 85 16 19           1573 	mov	(_serialControl_sloc2_1_0 + 2),(_serialControl_sloc1_1_0 + 2)
   2E36 8B 82              1574 	mov	dpl,r3
   2E38 8C 83              1575 	mov	dph,r4
   2E3A 8D F0              1576 	mov	b,r5
   2E3C 12 34 B8           1577 	lcall	__gptrget
   2E3F 14                 1578 	dec	a
   2E40 25 17              1579 	add	a,_serialControl_sloc2_1_0
   2E42 F5 17              1580 	mov	_serialControl_sloc2_1_0,a
   2E44 E4                 1581 	clr	a
   2E45 35 18              1582 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2E47 F5 18              1583 	mov	(_serialControl_sloc2_1_0 + 1),a
   2E49 EE                 1584 	mov	a,r6
   2E4A 04                 1585 	inc	a
   2E4B 90 03 85           1586 	mov	dptr,#_pow_PARM_2
   2E4E D3                 1587 	setb	c
   2E4F 94 05              1588 	subb	a,#0x05
   2E51 F4                 1589 	cpl	a
   2E52 F0                 1590 	movx	@dptr,a
   2E53 75 82 02           1591 	mov	dpl,#0x02
   2E56 12 32 8C           1592 	lcall	_pow
   2E59 AF 82              1593 	mov	r7,dpl
   2E5B 85 17 82           1594 	mov	dpl,_serialControl_sloc2_1_0
   2E5E 85 18 83           1595 	mov	dph,(_serialControl_sloc2_1_0 + 1)
   2E61 85 19 F0           1596 	mov	b,(_serialControl_sloc2_1_0 + 2)
   2E64 12 34 B8           1597 	lcall	__gptrget
   2E67 F8                 1598 	mov	r0,a
   2E68 90 03 84           1599 	mov	dptr,#_serialControl_logic_op_1_1
   2E6B EF                 1600 	mov	a,r7
   2E6C 58                 1601 	anl	a,r0
   2E6D F0                 1602 	movx	@dptr,a
   2E6E 02 2F 7C           1603 	ljmp	00137$
   2E71                    1604 00136$:
                           1605 ;	SERIAL.c:120: else if(player->scol==5 && player->col <16)
   2E71 E4                 1606 	clr	a
   2E72 BE 05 01           1607 	cjne	r6,#0x05,00244$
   2E75 04                 1608 	inc	a
   2E76                    1609 00244$:
   2E76 FE                 1610 	mov	r6,a
   2E77 70 03              1611 	jnz	00246$
   2E79 02 2F 61           1612 	ljmp	00132$
   2E7C                    1613 00246$:
   2E7C 74 03              1614 	mov	a,#0x03
   2E7E 2B                 1615 	add	a,r3
   2E7F FF                 1616 	mov	r7,a
   2E80 E4                 1617 	clr	a
   2E81 3C                 1618 	addc	a,r4
   2E82 F8                 1619 	mov	r0,a
   2E83 8D 01              1620 	mov	ar1,r5
   2E85 8F 82              1621 	mov	dpl,r7
   2E87 88 83              1622 	mov	dph,r0
   2E89 89 F0              1623 	mov	b,r1
   2E8B 12 34 B8           1624 	lcall	__gptrget
   2E8E F5 17              1625 	mov	_serialControl_sloc2_1_0,a
   2E90 C3                 1626 	clr	c
   2E91 94 10              1627 	subb	a,#0x10
   2E93 40 03              1628 	jc	00247$
   2E95 02 2F 61           1629 	ljmp	00132$
   2E98                    1630 00247$:
                           1631 ;	SERIAL.c:121: logic_op = scmap[(map[player->line-1][player->col].schar) - 1].adds[player->sline-1] & (pow(2,5-(1)));
   2E98 74 02              1632 	mov	a,#0x02
   2E9A 2B                 1633 	add	a,r3
   2E9B F8                 1634 	mov	r0,a
   2E9C E4                 1635 	clr	a
   2E9D 3C                 1636 	addc	a,r4
   2E9E F9                 1637 	mov	r1,a
   2E9F 8D 07              1638 	mov	ar7,r5
   2EA1 88 82              1639 	mov	dpl,r0
   2EA3 89 83              1640 	mov	dph,r1
   2EA5 8F F0              1641 	mov	b,r7
   2EA7 12 34 B8           1642 	lcall	__gptrget
   2EAA 7F 00              1643 	mov	r7,#0x00
   2EAC 24 FF              1644 	add	a,#0xff
   2EAE F5 14              1645 	mov	_serialControl_sloc1_1_0,a
   2EB0 EF                 1646 	mov	a,r7
   2EB1 34 FF              1647 	addc	a,#0xff
   2EB3 F5 15              1648 	mov	(_serialControl_sloc1_1_0 + 1),a
   2EB5 90 03 7E           1649 	mov	dptr,#_serialControl_PARM_2
   2EB8 E0                 1650 	movx	a,@dptr
   2EB9 F5 1A              1651 	mov	_serialControl_sloc3_1_0,a
   2EBB A3                 1652 	inc	dptr
   2EBC E0                 1653 	movx	a,@dptr
   2EBD F5 1B              1654 	mov	(_serialControl_sloc3_1_0 + 1),a
   2EBF A3                 1655 	inc	dptr
   2EC0 E0                 1656 	movx	a,@dptr
   2EC1 F5 1C              1657 	mov	(_serialControl_sloc3_1_0 + 2),a
   2EC3 AF 14              1658 	mov	r7,_serialControl_sloc1_1_0
   2EC5 E5 15              1659 	mov	a,(_serialControl_sloc1_1_0 + 1)
   2EC7 C4                 1660 	swap	a
   2EC8 54 F0              1661 	anl	a,#0xf0
   2ECA CF                 1662 	xch	a,r7
   2ECB C4                 1663 	swap	a
   2ECC CF                 1664 	xch	a,r7
   2ECD 6F                 1665 	xrl	a,r7
   2ECE CF                 1666 	xch	a,r7
   2ECF 54 F0              1667 	anl	a,#0xf0
   2ED1 CF                 1668 	xch	a,r7
   2ED2 6F                 1669 	xrl	a,r7
   2ED3 F8                 1670 	mov	r0,a
   2ED4 EF                 1671 	mov	a,r7
   2ED5 25 1A              1672 	add	a,_serialControl_sloc3_1_0
   2ED7 FF                 1673 	mov	r7,a
   2ED8 E8                 1674 	mov	a,r0
   2ED9 35 1B              1675 	addc	a,(_serialControl_sloc3_1_0 + 1)
   2EDB F8                 1676 	mov	r0,a
   2EDC A9 1C              1677 	mov	r1,(_serialControl_sloc3_1_0 + 2)
   2EDE E5 17              1678 	mov	a,_serialControl_sloc2_1_0
   2EE0 2F                 1679 	add	a,r7
   2EE1 FF                 1680 	mov	r7,a
   2EE2 E4                 1681 	clr	a
   2EE3 38                 1682 	addc	a,r0
   2EE4 F8                 1683 	mov	r0,a
   2EE5 8F 82              1684 	mov	dpl,r7
   2EE7 88 83              1685 	mov	dph,r0
   2EE9 89 F0              1686 	mov	b,r1
   2EEB 12 34 B8           1687 	lcall	__gptrget
   2EEE FF                 1688 	mov	r7,a
   2EEF 33                 1689 	rlc	a
   2EF0 95 E0              1690 	subb	a,acc
   2EF2 F8                 1691 	mov	r0,a
   2EF3 EF                 1692 	mov	a,r7
   2EF4 24 FF              1693 	add	a,#0xff
   2EF6 F5 1A              1694 	mov	_serialControl_sloc3_1_0,a
   2EF8 E8                 1695 	mov	a,r0
   2EF9 34 FF              1696 	addc	a,#0xff
   2EFB F5 1B              1697 	mov	(_serialControl_sloc3_1_0 + 1),a
   2EFD 90 03 81           1698 	mov	dptr,#_serialControl_scmap_1_1
   2F00 E0                 1699 	movx	a,@dptr
   2F01 F5 17              1700 	mov	_serialControl_sloc2_1_0,a
   2F03 A3                 1701 	inc	dptr
   2F04 E0                 1702 	movx	a,@dptr
   2F05 F5 18              1703 	mov	(_serialControl_sloc2_1_0 + 1),a
   2F07 A3                 1704 	inc	dptr
   2F08 E0                 1705 	movx	a,@dptr
   2F09 F5 19              1706 	mov	(_serialControl_sloc2_1_0 + 2),a
   2F0B AF 1A              1707 	mov	r7,_serialControl_sloc3_1_0
   2F0D E5 1B              1708 	mov	a,(_serialControl_sloc3_1_0 + 1)
   2F0F C4                 1709 	swap	a
   2F10 03                 1710 	rr	a
   2F11 54 F8              1711 	anl	a,#0xf8
   2F13 CF                 1712 	xch	a,r7
   2F14 C4                 1713 	swap	a
   2F15 03                 1714 	rr	a
   2F16 CF                 1715 	xch	a,r7
   2F17 6F                 1716 	xrl	a,r7
   2F18 CF                 1717 	xch	a,r7
   2F19 54 F8              1718 	anl	a,#0xf8
   2F1B CF                 1719 	xch	a,r7
   2F1C 6F                 1720 	xrl	a,r7
   2F1D F8                 1721 	mov	r0,a
   2F1E EF                 1722 	mov	a,r7
   2F1F 25 17              1723 	add	a,_serialControl_sloc2_1_0
   2F21 F5 1A              1724 	mov	_serialControl_sloc3_1_0,a
   2F23 E8                 1725 	mov	a,r0
   2F24 35 18              1726 	addc	a,(_serialControl_sloc2_1_0 + 1)
   2F26 F5 1B              1727 	mov	(_serialControl_sloc3_1_0 + 1),a
   2F28 85 19 1C           1728 	mov	(_serialControl_sloc3_1_0 + 2),(_serialControl_sloc2_1_0 + 2)
   2F2B 8B 82              1729 	mov	dpl,r3
   2F2D 8C 83              1730 	mov	dph,r4
   2F2F 8D F0              1731 	mov	b,r5
   2F31 12 34 B8           1732 	lcall	__gptrget
   2F34 14                 1733 	dec	a
   2F35 25 1A              1734 	add	a,_serialControl_sloc3_1_0
   2F37 F5 1A              1735 	mov	_serialControl_sloc3_1_0,a
   2F39 E4                 1736 	clr	a
   2F3A 35 1B              1737 	addc	a,(_serialControl_sloc3_1_0 + 1)
   2F3C F5 1B              1738 	mov	(_serialControl_sloc3_1_0 + 1),a
   2F3E 90 03 85           1739 	mov	dptr,#_pow_PARM_2
   2F41 74 04              1740 	mov	a,#0x04
   2F43 F0                 1741 	movx	@dptr,a
   2F44 75 82 02           1742 	mov	dpl,#0x02
   2F47 12 32 8C           1743 	lcall	_pow
   2F4A AF 82              1744 	mov	r7,dpl
   2F4C 85 1A 82           1745 	mov	dpl,_serialControl_sloc3_1_0
   2F4F 85 1B 83           1746 	mov	dph,(_serialControl_sloc3_1_0 + 1)
   2F52 85 1C F0           1747 	mov	b,(_serialControl_sloc3_1_0 + 2)
   2F55 12 34 B8           1748 	lcall	__gptrget
   2F58 F8                 1749 	mov	r0,a
   2F59 90 03 84           1750 	mov	dptr,#_serialControl_logic_op_1_1
   2F5C EF                 1751 	mov	a,r7
   2F5D 58                 1752 	anl	a,r0
   2F5E F0                 1753 	movx	@dptr,a
   2F5F 80 1B              1754 	sjmp	00137$
   2F61                    1755 00132$:
                           1756 ;	SERIAL.c:122: else if(player->scol==5 && player->col ==16)
   2F61 EE                 1757 	mov	a,r6
   2F62 60 18              1758 	jz	00137$
   2F64 74 03              1759 	mov	a,#0x03
   2F66 2B                 1760 	add	a,r3
   2F67 FB                 1761 	mov	r3,a
   2F68 E4                 1762 	clr	a
   2F69 3C                 1763 	addc	a,r4
   2F6A FC                 1764 	mov	r4,a
   2F6B 8B 82              1765 	mov	dpl,r3
   2F6D 8C 83              1766 	mov	dph,r4
   2F6F 8D F0              1767 	mov	b,r5
   2F71 12 34 B8           1768 	lcall	__gptrget
   2F74 FB                 1769 	mov	r3,a
   2F75 BB 10 04           1770 	cjne	r3,#0x10,00137$
                           1771 ;	SERIAL.c:123: return 0;
   2F78 75 82 00           1772 	mov	dpl,#0x00
   2F7B 22                 1773 	ret
   2F7C                    1774 00137$:
                           1775 ;	SERIAL.c:126: if(logic_op == 0){
   2F7C 90 03 84           1776 	mov	dptr,#_serialControl_logic_op_1_1
   2F7F E0                 1777 	movx	a,@dptr
   2F80 FB                 1778 	mov	r3,a
   2F81 60 03              1779 	jz	00251$
   2F83 02 32 83           1780 	ljmp	00175$
   2F86                    1781 00251$:
                           1782 ;	SERIAL.c:128: if(player->scol != 5)
   2F86 90 03 75           1783 	mov	dptr,#_player
   2F89 E0                 1784 	movx	a,@dptr
   2F8A FB                 1785 	mov	r3,a
   2F8B A3                 1786 	inc	dptr
   2F8C E0                 1787 	movx	a,@dptr
   2F8D FC                 1788 	mov	r4,a
   2F8E A3                 1789 	inc	dptr
   2F8F E0                 1790 	movx	a,@dptr
   2F90 FD                 1791 	mov	r5,a
   2F91 74 01              1792 	mov	a,#0x01
   2F93 2B                 1793 	add	a,r3
   2F94 FE                 1794 	mov	r6,a
   2F95 E4                 1795 	clr	a
   2F96 3C                 1796 	addc	a,r4
   2F97 FF                 1797 	mov	r7,a
   2F98 8D 00              1798 	mov	ar0,r5
   2F9A 8E 82              1799 	mov	dpl,r6
   2F9C 8F 83              1800 	mov	dph,r7
   2F9E 88 F0              1801 	mov	b,r0
   2FA0 12 34 B8           1802 	lcall	__gptrget
   2FA3 F9                 1803 	mov	r1,a
   2FA4 B9 05 02           1804 	cjne	r1,#0x05,00252$
   2FA7 80 0E              1805 	sjmp	00141$
   2FA9                    1806 00252$:
                           1807 ;	SERIAL.c:129: player->scol++;
   2FA9 09                 1808 	inc	r1
   2FAA 8E 82              1809 	mov	dpl,r6
   2FAC 8F 83              1810 	mov	dph,r7
   2FAE 88 F0              1811 	mov	b,r0
   2FB0 E9                 1812 	mov	a,r1
   2FB1 12 33 5A           1813 	lcall	__gptrput
   2FB4 02 32 83           1814 	ljmp	00175$
   2FB7                    1815 00141$:
                           1816 ;	SERIAL.c:131: if(player->col != 16){
   2FB7 74 03              1817 	mov	a,#0x03
   2FB9 2B                 1818 	add	a,r3
   2FBA FB                 1819 	mov	r3,a
   2FBB E4                 1820 	clr	a
   2FBC 3C                 1821 	addc	a,r4
   2FBD FC                 1822 	mov	r4,a
   2FBE 8B 82              1823 	mov	dpl,r3
   2FC0 8C 83              1824 	mov	dph,r4
   2FC2 8D F0              1825 	mov	b,r5
   2FC4 12 34 B8           1826 	lcall	__gptrget
   2FC7 F9                 1827 	mov	r1,a
   2FC8 B9 10 03           1828 	cjne	r1,#0x10,00253$
   2FCB 02 32 83           1829 	ljmp	00175$
   2FCE                    1830 00253$:
                           1831 ;	SERIAL.c:132: player->scol = 1;
   2FCE 8E 82              1832 	mov	dpl,r6
   2FD0 8F 83              1833 	mov	dph,r7
   2FD2 88 F0              1834 	mov	b,r0
   2FD4 74 01              1835 	mov	a,#0x01
   2FD6 12 33 5A           1836 	lcall	__gptrput
                           1837 ;	SERIAL.c:133: player->col++;
   2FD9 09                 1838 	inc	r1
   2FDA 8B 82              1839 	mov	dpl,r3
   2FDC 8C 83              1840 	mov	dph,r4
   2FDE 8D F0              1841 	mov	b,r5
   2FE0 E9                 1842 	mov	a,r1
   2FE1 12 33 5A           1843 	lcall	__gptrput
   2FE4 02 32 83           1844 	ljmp	00175$
   2FE7                    1845 00166$:
                           1846 ;	SERIAL.c:141: else if(rxMsg == 'a' || rxMsg == 'A'){
   2FE7 BA 61 02           1847 	cjne	r2,#0x61,00254$
   2FEA 80 08              1848 	sjmp	00162$
   2FEC                    1849 00254$:
   2FEC BA 41 02           1850 	cjne	r2,#0x41,00255$
   2FEF 80 03              1851 	sjmp	00256$
   2FF1                    1852 00255$:
   2FF1 02 32 83           1853 	ljmp	00175$
   2FF4                    1854 00256$:
   2FF4                    1855 00162$:
                           1856 ;	SERIAL.c:144: if((player->scol-2)>-1)
   2FF4 90 03 75           1857 	mov	dptr,#_player
   2FF7 E0                 1858 	movx	a,@dptr
   2FF8 FA                 1859 	mov	r2,a
   2FF9 A3                 1860 	inc	dptr
   2FFA E0                 1861 	movx	a,@dptr
   2FFB FB                 1862 	mov	r3,a
   2FFC A3                 1863 	inc	dptr
   2FFD E0                 1864 	movx	a,@dptr
   2FFE FC                 1865 	mov	r4,a
   2FFF 74 01              1866 	mov	a,#0x01
   3001 2A                 1867 	add	a,r2
   3002 FD                 1868 	mov	r5,a
   3003 E4                 1869 	clr	a
   3004 3B                 1870 	addc	a,r3
   3005 FE                 1871 	mov	r6,a
   3006 8C 07              1872 	mov	ar7,r4
   3008 8D 82              1873 	mov	dpl,r5
   300A 8E 83              1874 	mov	dph,r6
   300C 8F F0              1875 	mov	b,r7
   300E 12 34 B8           1876 	lcall	__gptrget
   3011 FD                 1877 	mov	r5,a
   3012 7F 00              1878 	mov	r7,#0x00
   3014 24 FE              1879 	add	a,#0xfe
   3016 FE                 1880 	mov	r6,a
   3017 EF                 1881 	mov	a,r7
   3018 34 FF              1882 	addc	a,#0xff
   301A FF                 1883 	mov	r7,a
   301B C3                 1884 	clr	c
   301C 74 FF              1885 	mov	a,#0xFF
   301E 9E                 1886 	subb	a,r6
   301F 74 7F              1887 	mov	a,#(0xFF ^ 0x80)
   3021 8F F0              1888 	mov	b,r7
   3023 63 F0 80           1889 	xrl	b,#0x80
   3026 95 F0              1890 	subb	a,b
   3028 40 03              1891 	jc	00257$
   302A 02 31 15           1892 	ljmp	00153$
   302D                    1893 00257$:
                           1894 ;	SERIAL.c:145: logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-1] & (pow(2,5-(player->scol-1)));
   302D 74 02              1895 	mov	a,#0x02
   302F 2A                 1896 	add	a,r2
   3030 FE                 1897 	mov	r6,a
   3031 E4                 1898 	clr	a
   3032 3B                 1899 	addc	a,r3
   3033 FF                 1900 	mov	r7,a
   3034 8C 00              1901 	mov	ar0,r4
   3036 8E 82              1902 	mov	dpl,r6
   3038 8F 83              1903 	mov	dph,r7
   303A 88 F0              1904 	mov	b,r0
   303C 12 34 B8           1905 	lcall	__gptrget
   303F 7F 00              1906 	mov	r7,#0x00
   3041 24 FF              1907 	add	a,#0xff
   3043 F5 1A              1908 	mov	_serialControl_sloc3_1_0,a
   3045 EF                 1909 	mov	a,r7
   3046 34 FF              1910 	addc	a,#0xff
   3048 F5 1B              1911 	mov	(_serialControl_sloc3_1_0 + 1),a
   304A 90 03 7E           1912 	mov	dptr,#_serialControl_PARM_2
   304D E0                 1913 	movx	a,@dptr
   304E F5 17              1914 	mov	_serialControl_sloc2_1_0,a
   3050 A3                 1915 	inc	dptr
   3051 E0                 1916 	movx	a,@dptr
   3052 F5 18              1917 	mov	(_serialControl_sloc2_1_0 + 1),a
   3054 A3                 1918 	inc	dptr
   3055 E0                 1919 	movx	a,@dptr
   3056 F5 19              1920 	mov	(_serialControl_sloc2_1_0 + 2),a
   3058 AF 1A              1921 	mov	r7,_serialControl_sloc3_1_0
   305A E5 1B              1922 	mov	a,(_serialControl_sloc3_1_0 + 1)
   305C C4                 1923 	swap	a
   305D 54 F0              1924 	anl	a,#0xf0
   305F CF                 1925 	xch	a,r7
   3060 C4                 1926 	swap	a
   3061 CF                 1927 	xch	a,r7
   3062 6F                 1928 	xrl	a,r7
   3063 CF                 1929 	xch	a,r7
   3064 54 F0              1930 	anl	a,#0xf0
   3066 CF                 1931 	xch	a,r7
   3067 6F                 1932 	xrl	a,r7
   3068 FE                 1933 	mov	r6,a
   3069 EF                 1934 	mov	a,r7
   306A 25 17              1935 	add	a,_serialControl_sloc2_1_0
   306C F5 1A              1936 	mov	_serialControl_sloc3_1_0,a
   306E EE                 1937 	mov	a,r6
   306F 35 18              1938 	addc	a,(_serialControl_sloc2_1_0 + 1)
   3071 F5 1B              1939 	mov	(_serialControl_sloc3_1_0 + 1),a
   3073 85 19 1C           1940 	mov	(_serialControl_sloc3_1_0 + 2),(_serialControl_sloc2_1_0 + 2)
   3076 74 03              1941 	mov	a,#0x03
   3078 2A                 1942 	add	a,r2
   3079 F9                 1943 	mov	r1,a
   307A E4                 1944 	clr	a
   307B 3B                 1945 	addc	a,r3
   307C FE                 1946 	mov	r6,a
   307D 8C 07              1947 	mov	ar7,r4
   307F 89 82              1948 	mov	dpl,r1
   3081 8E 83              1949 	mov	dph,r6
   3083 8F F0              1950 	mov	b,r7
   3085 12 34 B8           1951 	lcall	__gptrget
   3088 14                 1952 	dec	a
   3089 25 1A              1953 	add	a,_serialControl_sloc3_1_0
   308B FE                 1954 	mov	r6,a
   308C E4                 1955 	clr	a
   308D 35 1B              1956 	addc	a,(_serialControl_sloc3_1_0 + 1)
   308F FF                 1957 	mov	r7,a
   3090 A8 1C              1958 	mov	r0,(_serialControl_sloc3_1_0 + 2)
   3092 8E 82              1959 	mov	dpl,r6
   3094 8F 83              1960 	mov	dph,r7
   3096 88 F0              1961 	mov	b,r0
   3098 12 34 B8           1962 	lcall	__gptrget
   309B FE                 1963 	mov	r6,a
   309C 33                 1964 	rlc	a
   309D 95 E0              1965 	subb	a,acc
   309F FF                 1966 	mov	r7,a
   30A0 EE                 1967 	mov	a,r6
   30A1 24 FF              1968 	add	a,#0xff
   30A3 F5 1A              1969 	mov	_serialControl_sloc3_1_0,a
   30A5 EF                 1970 	mov	a,r7
   30A6 34 FF              1971 	addc	a,#0xff
   30A8 F5 1B              1972 	mov	(_serialControl_sloc3_1_0 + 1),a
   30AA 90 03 81           1973 	mov	dptr,#_serialControl_scmap_1_1
   30AD E0                 1974 	movx	a,@dptr
   30AE F5 17              1975 	mov	_serialControl_sloc2_1_0,a
   30B0 A3                 1976 	inc	dptr
   30B1 E0                 1977 	movx	a,@dptr
   30B2 F5 18              1978 	mov	(_serialControl_sloc2_1_0 + 1),a
   30B4 A3                 1979 	inc	dptr
   30B5 E0                 1980 	movx	a,@dptr
   30B6 F5 19              1981 	mov	(_serialControl_sloc2_1_0 + 2),a
   30B8 AF 1A              1982 	mov	r7,_serialControl_sloc3_1_0
   30BA E5 1B              1983 	mov	a,(_serialControl_sloc3_1_0 + 1)
   30BC C4                 1984 	swap	a
   30BD 03                 1985 	rr	a
   30BE 54 F8              1986 	anl	a,#0xf8
   30C0 CF                 1987 	xch	a,r7
   30C1 C4                 1988 	swap	a
   30C2 03                 1989 	rr	a
   30C3 CF                 1990 	xch	a,r7
   30C4 6F                 1991 	xrl	a,r7
   30C5 CF                 1992 	xch	a,r7
   30C6 54 F8              1993 	anl	a,#0xf8
   30C8 CF                 1994 	xch	a,r7
   30C9 6F                 1995 	xrl	a,r7
   30CA FE                 1996 	mov	r6,a
   30CB EF                 1997 	mov	a,r7
   30CC 25 17              1998 	add	a,_serialControl_sloc2_1_0
   30CE FF                 1999 	mov	r7,a
   30CF EE                 2000 	mov	a,r6
   30D0 35 18              2001 	addc	a,(_serialControl_sloc2_1_0 + 1)
   30D2 FE                 2002 	mov	r6,a
   30D3 A8 19              2003 	mov	r0,(_serialControl_sloc2_1_0 + 2)
   30D5 8A 82              2004 	mov	dpl,r2
   30D7 8B 83              2005 	mov	dph,r3
   30D9 8C F0              2006 	mov	b,r4
   30DB 12 34 B8           2007 	lcall	__gptrget
   30DE 14                 2008 	dec	a
   30DF 2F                 2009 	add	a,r7
   30E0 FF                 2010 	mov	r7,a
   30E1 E4                 2011 	clr	a
   30E2 3E                 2012 	addc	a,r6
   30E3 FE                 2013 	mov	r6,a
   30E4 ED                 2014 	mov	a,r5
   30E5 14                 2015 	dec	a
   30E6 90 03 85           2016 	mov	dptr,#_pow_PARM_2
   30E9 D3                 2017 	setb	c
   30EA 94 05              2018 	subb	a,#0x05
   30EC F4                 2019 	cpl	a
   30ED F0                 2020 	movx	@dptr,a
   30EE 75 82 02           2021 	mov	dpl,#0x02
   30F1 C0 06              2022 	push	ar6
   30F3 C0 07              2023 	push	ar7
   30F5 C0 00              2024 	push	ar0
   30F7 12 32 8C           2025 	lcall	_pow
   30FA A9 82              2026 	mov	r1,dpl
   30FC D0 00              2027 	pop	ar0
   30FE D0 07              2028 	pop	ar7
   3100 D0 06              2029 	pop	ar6
   3102 8F 82              2030 	mov	dpl,r7
   3104 8E 83              2031 	mov	dph,r6
   3106 88 F0              2032 	mov	b,r0
   3108 12 34 B8           2033 	lcall	__gptrget
   310B FF                 2034 	mov	r7,a
   310C 90 03 84           2035 	mov	dptr,#_serialControl_logic_op_1_1
   310F E9                 2036 	mov	a,r1
   3110 5F                 2037 	anl	a,r7
   3111 F0                 2038 	movx	@dptr,a
   3112 02 32 20           2039 	ljmp	00154$
   3115                    2040 00153$:
                           2041 ;	SERIAL.c:146: else if(player->scol==1 && player->col >1)
   3115 E4                 2042 	clr	a
   3116 BD 01 01           2043 	cjne	r5,#0x01,00258$
   3119 04                 2044 	inc	a
   311A                    2045 00258$:
   311A FD                 2046 	mov	r5,a
   311B 70 03              2047 	jnz	00260$
   311D 02 32 05           2048 	ljmp	00149$
   3120                    2049 00260$:
   3120 74 03              2050 	mov	a,#0x03
   3122 2A                 2051 	add	a,r2
   3123 FE                 2052 	mov	r6,a
   3124 E4                 2053 	clr	a
   3125 3B                 2054 	addc	a,r3
   3126 FF                 2055 	mov	r7,a
   3127 8C 00              2056 	mov	ar0,r4
   3129 8E 82              2057 	mov	dpl,r6
   312B 8F 83              2058 	mov	dph,r7
   312D 88 F0              2059 	mov	b,r0
   312F 12 34 B8           2060 	lcall	__gptrget
   3132 FE                 2061 	mov  r6,a
   3133 24 FE              2062 	add	a,#0xff - 0x01
   3135 40 03              2063 	jc	00261$
   3137 02 32 05           2064 	ljmp	00149$
   313A                    2065 00261$:
                           2066 ;	SERIAL.c:147: logic_op = scmap[(map[player->line-1][player->col-2].schar) - 1].adds[player->sline-1] & (pow(2,5-(5)));
   313A 74 02              2067 	mov	a,#0x02
   313C 2A                 2068 	add	a,r2
   313D FF                 2069 	mov	r7,a
   313E E4                 2070 	clr	a
   313F 3B                 2071 	addc	a,r3
   3140 F8                 2072 	mov	r0,a
   3141 8C 01              2073 	mov	ar1,r4
   3143 8F 82              2074 	mov	dpl,r7
   3145 88 83              2075 	mov	dph,r0
   3147 89 F0              2076 	mov	b,r1
   3149 12 34 B8           2077 	lcall	__gptrget
   314C 78 00              2078 	mov	r0,#0x00
   314E 24 FF              2079 	add	a,#0xff
   3150 F5 1A              2080 	mov	_serialControl_sloc3_1_0,a
   3152 E8                 2081 	mov	a,r0
   3153 34 FF              2082 	addc	a,#0xff
   3155 F5 1B              2083 	mov	(_serialControl_sloc3_1_0 + 1),a
   3157 90 03 7E           2084 	mov	dptr,#_serialControl_PARM_2
   315A E0                 2085 	movx	a,@dptr
   315B F5 17              2086 	mov	_serialControl_sloc2_1_0,a
   315D A3                 2087 	inc	dptr
   315E E0                 2088 	movx	a,@dptr
   315F F5 18              2089 	mov	(_serialControl_sloc2_1_0 + 1),a
   3161 A3                 2090 	inc	dptr
   3162 E0                 2091 	movx	a,@dptr
   3163 F5 19              2092 	mov	(_serialControl_sloc2_1_0 + 2),a
   3165 AF 1A              2093 	mov	r7,_serialControl_sloc3_1_0
   3167 E5 1B              2094 	mov	a,(_serialControl_sloc3_1_0 + 1)
   3169 C4                 2095 	swap	a
   316A 54 F0              2096 	anl	a,#0xf0
   316C CF                 2097 	xch	a,r7
   316D C4                 2098 	swap	a
   316E CF                 2099 	xch	a,r7
   316F 6F                 2100 	xrl	a,r7
   3170 CF                 2101 	xch	a,r7
   3171 54 F0              2102 	anl	a,#0xf0
   3173 CF                 2103 	xch	a,r7
   3174 6F                 2104 	xrl	a,r7
   3175 F8                 2105 	mov	r0,a
   3176 EF                 2106 	mov	a,r7
   3177 25 17              2107 	add	a,_serialControl_sloc2_1_0
   3179 FF                 2108 	mov	r7,a
   317A E8                 2109 	mov	a,r0
   317B 35 18              2110 	addc	a,(_serialControl_sloc2_1_0 + 1)
   317D F8                 2111 	mov	r0,a
   317E A9 19              2112 	mov	r1,(_serialControl_sloc2_1_0 + 2)
   3180 EE                 2113 	mov	a,r6
   3181 24 FE              2114 	add	a,#0xfe
   3183 2F                 2115 	add	a,r7
   3184 FF                 2116 	mov	r7,a
   3185 E4                 2117 	clr	a
   3186 38                 2118 	addc	a,r0
   3187 F8                 2119 	mov	r0,a
   3188 8F 82              2120 	mov	dpl,r7
   318A 88 83              2121 	mov	dph,r0
   318C 89 F0              2122 	mov	b,r1
   318E 12 34 B8           2123 	lcall	__gptrget
   3191 FF                 2124 	mov	r7,a
   3192 33                 2125 	rlc	a
   3193 95 E0              2126 	subb	a,acc
   3195 FE                 2127 	mov	r6,a
   3196 EF                 2128 	mov	a,r7
   3197 24 FF              2129 	add	a,#0xff
   3199 F5 1A              2130 	mov	_serialControl_sloc3_1_0,a
   319B EE                 2131 	mov	a,r6
   319C 34 FF              2132 	addc	a,#0xff
   319E F5 1B              2133 	mov	(_serialControl_sloc3_1_0 + 1),a
   31A0 90 03 81           2134 	mov	dptr,#_serialControl_scmap_1_1
   31A3 E0                 2135 	movx	a,@dptr
   31A4 F5 17              2136 	mov	_serialControl_sloc2_1_0,a
   31A6 A3                 2137 	inc	dptr
   31A7 E0                 2138 	movx	a,@dptr
   31A8 F5 18              2139 	mov	(_serialControl_sloc2_1_0 + 1),a
   31AA A3                 2140 	inc	dptr
   31AB E0                 2141 	movx	a,@dptr
   31AC F5 19              2142 	mov	(_serialControl_sloc2_1_0 + 2),a
   31AE AF 1A              2143 	mov	r7,_serialControl_sloc3_1_0
   31B0 E5 1B              2144 	mov	a,(_serialControl_sloc3_1_0 + 1)
   31B2 C4                 2145 	swap	a
   31B3 03                 2146 	rr	a
   31B4 54 F8              2147 	anl	a,#0xf8
   31B6 CF                 2148 	xch	a,r7
   31B7 C4                 2149 	swap	a
   31B8 03                 2150 	rr	a
   31B9 CF                 2151 	xch	a,r7
   31BA 6F                 2152 	xrl	a,r7
   31BB CF                 2153 	xch	a,r7
   31BC 54 F8              2154 	anl	a,#0xf8
   31BE CF                 2155 	xch	a,r7
   31BF 6F                 2156 	xrl	a,r7
   31C0 FE                 2157 	mov	r6,a
   31C1 EF                 2158 	mov	a,r7
   31C2 25 17              2159 	add	a,_serialControl_sloc2_1_0
   31C4 FF                 2160 	mov	r7,a
   31C5 EE                 2161 	mov	a,r6
   31C6 35 18              2162 	addc	a,(_serialControl_sloc2_1_0 + 1)
   31C8 FE                 2163 	mov	r6,a
   31C9 A8 19              2164 	mov	r0,(_serialControl_sloc2_1_0 + 2)
   31CB 8A 82              2165 	mov	dpl,r2
   31CD 8B 83              2166 	mov	dph,r3
   31CF 8C F0              2167 	mov	b,r4
   31D1 12 34 B8           2168 	lcall	__gptrget
   31D4 14                 2169 	dec	a
   31D5 2F                 2170 	add	a,r7
   31D6 FF                 2171 	mov	r7,a
   31D7 E4                 2172 	clr	a
   31D8 3E                 2173 	addc	a,r6
   31D9 FE                 2174 	mov	r6,a
   31DA 90 03 85           2175 	mov	dptr,#_pow_PARM_2
   31DD E4                 2176 	clr	a
   31DE F0                 2177 	movx	@dptr,a
   31DF 75 82 02           2178 	mov	dpl,#0x02
   31E2 C0 06              2179 	push	ar6
   31E4 C0 07              2180 	push	ar7
   31E6 C0 00              2181 	push	ar0
   31E8 12 32 8C           2182 	lcall	_pow
   31EB A9 82              2183 	mov	r1,dpl
   31ED D0 00              2184 	pop	ar0
   31EF D0 07              2185 	pop	ar7
   31F1 D0 06              2186 	pop	ar6
   31F3 8F 82              2187 	mov	dpl,r7
   31F5 8E 83              2188 	mov	dph,r6
   31F7 88 F0              2189 	mov	b,r0
   31F9 12 34 B8           2190 	lcall	__gptrget
   31FC FF                 2191 	mov	r7,a
   31FD 90 03 84           2192 	mov	dptr,#_serialControl_logic_op_1_1
   3200 E9                 2193 	mov	a,r1
   3201 5F                 2194 	anl	a,r7
   3202 F0                 2195 	movx	@dptr,a
   3203 80 1B              2196 	sjmp	00154$
   3205                    2197 00149$:
                           2198 ;	SERIAL.c:148: else if(player->scol==1 && player->col == 1)
   3205 ED                 2199 	mov	a,r5
   3206 60 18              2200 	jz	00154$
   3208 74 03              2201 	mov	a,#0x03
   320A 2A                 2202 	add	a,r2
   320B FA                 2203 	mov	r2,a
   320C E4                 2204 	clr	a
   320D 3B                 2205 	addc	a,r3
   320E FB                 2206 	mov	r3,a
   320F 8A 82              2207 	mov	dpl,r2
   3211 8B 83              2208 	mov	dph,r3
   3213 8C F0              2209 	mov	b,r4
   3215 12 34 B8           2210 	lcall	__gptrget
   3218 FA                 2211 	mov	r2,a
   3219 BA 01 04           2212 	cjne	r2,#0x01,00154$
                           2213 ;	SERIAL.c:149: return 0;
   321C 75 82 00           2214 	mov	dpl,#0x00
   321F 22                 2215 	ret
   3220                    2216 00154$:
                           2217 ;	SERIAL.c:152: if(logic_op == 0){
   3220 90 03 84           2218 	mov	dptr,#_serialControl_logic_op_1_1
   3223 E0                 2219 	movx	a,@dptr
   3224 FA                 2220 	mov	r2,a
   3225 70 5C              2221 	jnz	00175$
                           2222 ;	SERIAL.c:153: if(player->scol != 1)
   3227 90 03 75           2223 	mov	dptr,#_player
   322A E0                 2224 	movx	a,@dptr
   322B FA                 2225 	mov	r2,a
   322C A3                 2226 	inc	dptr
   322D E0                 2227 	movx	a,@dptr
   322E FB                 2228 	mov	r3,a
   322F A3                 2229 	inc	dptr
   3230 E0                 2230 	movx	a,@dptr
   3231 FC                 2231 	mov	r4,a
   3232 74 01              2232 	mov	a,#0x01
   3234 2A                 2233 	add	a,r2
   3235 FD                 2234 	mov	r5,a
   3236 E4                 2235 	clr	a
   3237 3B                 2236 	addc	a,r3
   3238 FE                 2237 	mov	r6,a
   3239 8C 07              2238 	mov	ar7,r4
   323B 8D 82              2239 	mov	dpl,r5
   323D 8E 83              2240 	mov	dph,r6
   323F 8F F0              2241 	mov	b,r7
   3241 12 34 B8           2242 	lcall	__gptrget
   3244 F8                 2243 	mov	r0,a
   3245 B8 01 02           2244 	cjne	r0,#0x01,00266$
   3248 80 0D              2245 	sjmp	00158$
   324A                    2246 00266$:
                           2247 ;	SERIAL.c:154: player->scol--;
   324A 18                 2248 	dec	r0
   324B 8D 82              2249 	mov	dpl,r5
   324D 8E 83              2250 	mov	dph,r6
   324F 8F F0              2251 	mov	b,r7
   3251 E8                 2252 	mov	a,r0
   3252 12 33 5A           2253 	lcall	__gptrput
   3255 80 2C              2254 	sjmp	00175$
   3257                    2255 00158$:
                           2256 ;	SERIAL.c:156: if(player->col != 1){
   3257 74 03              2257 	mov	a,#0x03
   3259 2A                 2258 	add	a,r2
   325A FA                 2259 	mov	r2,a
   325B E4                 2260 	clr	a
   325C 3B                 2261 	addc	a,r3
   325D FB                 2262 	mov	r3,a
   325E 8A 82              2263 	mov	dpl,r2
   3260 8B 83              2264 	mov	dph,r3
   3262 8C F0              2265 	mov	b,r4
   3264 12 34 B8           2266 	lcall	__gptrget
   3267 F8                 2267 	mov	r0,a
   3268 B8 01 02           2268 	cjne	r0,#0x01,00267$
   326B 80 16              2269 	sjmp	00175$
   326D                    2270 00267$:
                           2271 ;	SERIAL.c:157: player->scol = 5;
   326D 8D 82              2272 	mov	dpl,r5
   326F 8E 83              2273 	mov	dph,r6
   3271 8F F0              2274 	mov	b,r7
   3273 74 05              2275 	mov	a,#0x05
   3275 12 33 5A           2276 	lcall	__gptrput
                           2277 ;	SERIAL.c:158: player->col--;
   3278 18                 2278 	dec	r0
   3279 8A 82              2279 	mov	dpl,r2
   327B 8B 83              2280 	mov	dph,r3
   327D 8C F0              2281 	mov	b,r4
   327F E8                 2282 	mov	a,r0
   3280 12 33 5A           2283 	lcall	__gptrput
   3283                    2284 00175$:
                           2285 ;	SERIAL.c:169: printMap();
   3283 12 07 F3           2286 	lcall	_printMap
                           2287 ;	SERIAL.c:170: RI = 0;
   3286 C2 98              2288 	clr	_RI
   3288                    2289 00178$:
                           2290 ;	SERIAL.c:173: return 1;
   3288 75 82 01           2291 	mov	dpl,#0x01
   328B 22                 2292 	ret
                           2293 	.area CSEG    (CODE)
                           2294 	.area CONST   (CODE)
                           2295 	.area XINIT   (CODE)
   3AE9                    2296 __xinit__rxMsg:
   3AE9 00                 2297 	.db #0x00
                           2298 	.area CABS    (ABS,CODE)
