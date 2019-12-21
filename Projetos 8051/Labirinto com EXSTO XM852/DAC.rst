                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Wed Aug 21 09:12:24 2019
                              5 ;--------------------------------------------------------
                              6 	.module DAC
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _i
                             13 	.globl _beep2_noteTime
                             14 	.globl _beep2_melody
                             15 	.globl _beep1_noteTime
                             16 	.globl _beep1_melody
                             17 	.globl _adobe_noteTime
                             18 	.globl _adobe_melody
                             19 	.globl _underworld_noteTime
                             20 	.globl _underworld_melody
                             21 	.globl _mainMario_noteTime
                             22 	.globl _mainMario_melody
                             23 	.globl _squareWave_PARM_2
                             24 	.globl _speaker_PARM_2
                             25 	.globl _Timer0
                             26 	.globl _dacWrite
                             27 	.globl _speaker
                             28 	.globl _squareWave
                             29 	.globl _sing
                             30 ;--------------------------------------------------------
                             31 ; special function registers
                             32 ;--------------------------------------------------------
                             33 	.area RSEG    (DATA)
                             34 ;--------------------------------------------------------
                             35 ; special function bits
                             36 ;--------------------------------------------------------
                             37 	.area RSEG    (DATA)
                             38 ;--------------------------------------------------------
                             39 ; overlayable register banks
                             40 ;--------------------------------------------------------
                             41 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      42 	.ds 8
                             43 ;--------------------------------------------------------
                             44 ; internal ram data
                             45 ;--------------------------------------------------------
                             46 	.area DSEG    (DATA)
   000C                      47 _speaker_sloc0_1_0:
   000C                      48 	.ds 4
   0010                      49 _speaker_sloc1_1_0:
   0010                      50 	.ds 2
                             51 ;--------------------------------------------------------
                             52 ; overlayable items in internal ram 
                             53 ;--------------------------------------------------------
                             54 	.area OSEG    (OVR,DATA)
                             55 ;--------------------------------------------------------
                             56 ; indirectly addressable internal ram data
                             57 ;--------------------------------------------------------
                             58 	.area ISEG    (DATA)
                             59 ;--------------------------------------------------------
                             60 ; absolute internal ram data
                             61 ;--------------------------------------------------------
                             62 	.area IABS    (ABS,DATA)
                             63 	.area IABS    (ABS,DATA)
                             64 ;--------------------------------------------------------
                             65 ; bit data
                             66 ;--------------------------------------------------------
                             67 	.area BSEG    (BIT)
                             68 ;--------------------------------------------------------
                             69 ; paged external ram data
                             70 ;--------------------------------------------------------
                             71 	.area PSEG    (PAG,XDATA)
                             72 ;--------------------------------------------------------
                             73 ; external ram data
                             74 ;--------------------------------------------------------
                             75 	.area XSEG    (XDATA)
                    FFE4     76 _dacWrite	=	0xffe4
   02D6                      77 _Timer0::
   02D6                      78 	.ds 7
   02DD                      79 _speaker_PARM_2:
   02DD                      80 	.ds 2
   02DF                      81 _speaker_note_1_1:
   02DF                      82 	.ds 2
   02E1                      83 _squareWave_PARM_2:
   02E1                      84 	.ds 2
   02E3                      85 _squareWave_note_1_1:
   02E3                      86 	.ds 2
   02E5                      87 _sing_song_1_1:
   02E5                      88 	.ds 1
                             89 ;--------------------------------------------------------
                             90 ; absolute external ram data
                             91 ;--------------------------------------------------------
                             92 	.area XABS    (ABS,XDATA)
                             93 ;--------------------------------------------------------
                             94 ; external initialized ram data
                             95 ;--------------------------------------------------------
                             96 	.area XISEG   (XDATA)
   0738                      97 _mainMario_melody::
   0738                      98 	.ds 156
   07D4                      99 _mainMario_noteTime::
   07D4                     100 	.ds 78
   0822                     101 _underworld_melody::
   0822                     102 	.ds 112
   0892                     103 _underworld_noteTime::
   0892                     104 	.ds 56
   08CA                     105 _adobe_melody::
   08CA                     106 	.ds 32
   08EA                     107 _adobe_noteTime::
   08EA                     108 	.ds 16
   08FA                     109 _beep1_melody::
   08FA                     110 	.ds 4
   08FE                     111 _beep1_noteTime::
   08FE                     112 	.ds 2
   0900                     113 _beep2_melody::
   0900                     114 	.ds 4
   0904                     115 _beep2_noteTime::
   0904                     116 	.ds 2
   0906                     117 _i::
   0906                     118 	.ds 2
                            119 	.area HOME    (CODE)
                            120 	.area GSINIT0 (CODE)
                            121 	.area GSINIT1 (CODE)
                            122 	.area GSINIT2 (CODE)
                            123 	.area GSINIT3 (CODE)
                            124 	.area GSINIT4 (CODE)
                            125 	.area GSINIT5 (CODE)
                            126 	.area GSINIT  (CODE)
                            127 	.area GSFINAL (CODE)
                            128 	.area CSEG    (CODE)
                            129 ;--------------------------------------------------------
                            130 ; global & static initialisations
                            131 ;--------------------------------------------------------
                            132 	.area HOME    (CODE)
                            133 	.area GSINIT  (CODE)
                            134 	.area GSFINAL (CODE)
                            135 	.area GSINIT  (CODE)
                            136 ;--------------------------------------------------------
                            137 ; Home
                            138 ;--------------------------------------------------------
                            139 	.area HOME    (CODE)
                            140 	.area HOME    (CODE)
                            141 ;--------------------------------------------------------
                            142 ; code
                            143 ;--------------------------------------------------------
                            144 	.area CSEG    (CODE)
                            145 ;------------------------------------------------------------
                            146 ;Allocation info for local variables in function 'speaker'
                            147 ;------------------------------------------------------------
                            148 ;sloc0                     Allocated with name '_speaker_sloc0_1_0'
                            149 ;sloc1                     Allocated with name '_speaker_sloc1_1_0'
                            150 ;noteDuration              Allocated with name '_speaker_PARM_2'
                            151 ;note                      Allocated with name '_speaker_note_1_1'
                            152 ;numCycles                 Allocated with name '_speaker_numCycles_1_1'
                            153 ;i                         Allocated with name '_speaker_i_1_1'
                            154 ;n                         Allocated with name '_speaker_n_1_1'
                            155 ;------------------------------------------------------------
                            156 ;	DAC.c:9: void speaker(unsigned int note, unsigned int noteDuration){
                            157 ;	-----------------------------------------
                            158 ;	 function speaker
                            159 ;	-----------------------------------------
   242A                     160 _speaker:
                    0002    161 	ar2 = 0x02
                    0003    162 	ar3 = 0x03
                    0004    163 	ar4 = 0x04
                    0005    164 	ar5 = 0x05
                    0006    165 	ar6 = 0x06
                    0007    166 	ar7 = 0x07
                    0000    167 	ar0 = 0x00
                    0001    168 	ar1 = 0x01
   242A AA 83               169 	mov	r2,dph
   242C E5 82               170 	mov	a,dpl
   242E 90 02 DF            171 	mov	dptr,#_speaker_note_1_1
   2431 F0                  172 	movx	@dptr,a
   2432 A3                  173 	inc	dptr
   2433 EA                  174 	mov	a,r2
   2434 F0                  175 	movx	@dptr,a
                            176 ;	DAC.c:10: long numCycles = note * noteDuration / 1000; 
   2435 90 02 DD            177 	mov	dptr,#_speaker_PARM_2
   2438 E0                  178 	movx	a,@dptr
   2439 FA                  179 	mov	r2,a
   243A A3                  180 	inc	dptr
   243B E0                  181 	movx	a,@dptr
   243C FB                  182 	mov	r3,a
   243D 90 02 DF            183 	mov	dptr,#_speaker_note_1_1
   2440 E0                  184 	movx	a,@dptr
   2441 FC                  185 	mov	r4,a
   2442 A3                  186 	inc	dptr
   2443 E0                  187 	movx	a,@dptr
   2444 FD                  188 	mov	r5,a
   2445 90 03 8F            189 	mov	dptr,#__mulint_PARM_2
   2448 EA                  190 	mov	a,r2
   2449 F0                  191 	movx	@dptr,a
   244A A3                  192 	inc	dptr
   244B EB                  193 	mov	a,r3
   244C F0                  194 	movx	@dptr,a
   244D 8C 82               195 	mov	dpl,r4
   244F 8D 83               196 	mov	dph,r5
   2451 C0 04               197 	push	ar4
   2453 C0 05               198 	push	ar5
   2455 12 33 73            199 	lcall	__mulint
   2458 AA 82               200 	mov	r2,dpl
   245A AB 83               201 	mov	r3,dph
   245C 90 03 88            202 	mov	dptr,#__divuint_PARM_2
   245F 74 E8               203 	mov	a,#0xE8
   2461 F0                  204 	movx	@dptr,a
   2462 A3                  205 	inc	dptr
   2463 74 03               206 	mov	a,#0x03
   2465 F0                  207 	movx	@dptr,a
   2466 8A 82               208 	mov	dpl,r2
   2468 8B 83               209 	mov	dph,r3
   246A 12 32 C0            210 	lcall	__divuint
   246D AA 82               211 	mov	r2,dpl
   246F AB 83               212 	mov	r3,dph
   2471 D0 05               213 	pop	ar5
   2473 D0 04               214 	pop	ar4
   2475 7E 00               215 	mov	r6,#0x00
   2477 7F 00               216 	mov	r7,#0x00
                            217 ;	DAC.c:14: for (i = 0; i < numCycles; i++) { 
   2479 8C 00               218 	mov	ar0,r4
   247B 8D 01               219 	mov	ar1,r5
   247D E4                  220 	clr	a
   247E F5 0C               221 	mov	_speaker_sloc0_1_0,a
   2480 F5 0D               222 	mov	(_speaker_sloc0_1_0 + 1),a
   2482 F5 0E               223 	mov	(_speaker_sloc0_1_0 + 2),a
   2484 F5 0F               224 	mov	(_speaker_sloc0_1_0 + 3),a
   2486                     225 00109$:
   2486 C3                  226 	clr	c
   2487 E5 0C               227 	mov	a,_speaker_sloc0_1_0
   2489 9A                  228 	subb	a,r2
   248A E5 0D               229 	mov	a,(_speaker_sloc0_1_0 + 1)
   248C 9B                  230 	subb	a,r3
   248D E5 0E               231 	mov	a,(_speaker_sloc0_1_0 + 2)
   248F 9E                  232 	subb	a,r6
   2490 E5 0F               233 	mov	a,(_speaker_sloc0_1_0 + 3)
   2492 64 80               234 	xrl	a,#0x80
   2494 8F F0               235 	mov	b,r7
   2496 63 F0 80            236 	xrl	b,#0x80
   2499 95 F0               237 	subb	a,b
   249B 50 4F               238 	jnc	00113$
                            239 ;	DAC.c:15: dacWrite = 255;
   249D 90 FF E4            240 	mov	dptr,#_dacWrite
   24A0 74 FF               241 	mov	a,#0xFF
   24A2 F0                  242 	movx	@dptr,a
                            243 ;	DAC.c:16: for(n = 0;n< note ;n++);
   24A3 E4                  244 	clr	a
   24A4 F5 10               245 	mov	_speaker_sloc1_1_0,a
   24A6 F5 11               246 	mov	(_speaker_sloc1_1_0 + 1),a
   24A8                     247 00101$:
   24A8 C3                  248 	clr	c
   24A9 E5 10               249 	mov	a,_speaker_sloc1_1_0
   24AB 98                  250 	subb	a,r0
   24AC E5 11               251 	mov	a,(_speaker_sloc1_1_0 + 1)
   24AE 99                  252 	subb	a,r1
   24AF 50 0A               253 	jnc	00104$
   24B1 05 10               254 	inc	_speaker_sloc1_1_0
   24B3 E4                  255 	clr	a
   24B4 B5 10 F1            256 	cjne	a,_speaker_sloc1_1_0,00101$
   24B7 05 11               257 	inc	(_speaker_sloc1_1_0 + 1)
   24B9 80 ED               258 	sjmp	00101$
   24BB                     259 00104$:
                            260 ;	DAC.c:17: dacWrite = 0;
   24BB 90 FF E4            261 	mov	dptr,#_dacWrite
   24BE E4                  262 	clr	a
   24BF F0                  263 	movx	@dptr,a
                            264 ;	DAC.c:18: for(n = 0;n< note;n++);
   24C0 E4                  265 	clr	a
   24C1 F5 10               266 	mov	_speaker_sloc1_1_0,a
   24C3 F5 11               267 	mov	(_speaker_sloc1_1_0 + 1),a
   24C5                     268 00105$:
   24C5 C3                  269 	clr	c
   24C6 E5 10               270 	mov	a,_speaker_sloc1_1_0
   24C8 9C                  271 	subb	a,r4
   24C9 E5 11               272 	mov	a,(_speaker_sloc1_1_0 + 1)
   24CB 9D                  273 	subb	a,r5
   24CC 50 0A               274 	jnc	00111$
   24CE 05 10               275 	inc	_speaker_sloc1_1_0
   24D0 E4                  276 	clr	a
   24D1 B5 10 F1            277 	cjne	a,_speaker_sloc1_1_0,00105$
   24D4 05 11               278 	inc	(_speaker_sloc1_1_0 + 1)
   24D6 80 ED               279 	sjmp	00105$
   24D8                     280 00111$:
                            281 ;	DAC.c:14: for (i = 0; i < numCycles; i++) { 
   24D8 05 0C               282 	inc	_speaker_sloc0_1_0
   24DA E4                  283 	clr	a
   24DB B5 0C 0C            284 	cjne	a,_speaker_sloc0_1_0,00127$
   24DE 05 0D               285 	inc	(_speaker_sloc0_1_0 + 1)
   24E0 B5 0D 07            286 	cjne	a,(_speaker_sloc0_1_0 + 1),00127$
   24E3 05 0E               287 	inc	(_speaker_sloc0_1_0 + 2)
   24E5 B5 0E 9E            288 	cjne	a,(_speaker_sloc0_1_0 + 2),00109$
   24E8 05 0F               289 	inc	(_speaker_sloc0_1_0 + 3)
   24EA                     290 00127$:
   24EA 80 9A               291 	sjmp	00109$
   24EC                     292 00113$:
   24EC 22                  293 	ret
                            294 ;------------------------------------------------------------
                            295 ;Allocation info for local variables in function 'squareWave'
                            296 ;------------------------------------------------------------
                            297 ;tempo                     Allocated with name '_squareWave_PARM_2'
                            298 ;note                      Allocated with name '_squareWave_note_1_1'
                            299 ;noteDuration              Allocated with name '_squareWave_noteDuration_1_1'
                            300 ;pauseBetweenNotes         Allocated with name '_squareWave_pauseBetweenNotes_1_1'
                            301 ;------------------------------------------------------------
                            302 ;	DAC.c:25: void squareWave(unsigned int note, unsigned int tempo){
                            303 ;	-----------------------------------------
                            304 ;	 function squareWave
                            305 ;	-----------------------------------------
   24ED                     306 _squareWave:
   24ED AA 83               307 	mov	r2,dph
   24EF E5 82               308 	mov	a,dpl
   24F1 90 02 E3            309 	mov	dptr,#_squareWave_note_1_1
   24F4 F0                  310 	movx	@dptr,a
   24F5 A3                  311 	inc	dptr
   24F6 EA                  312 	mov	a,r2
   24F7 F0                  313 	movx	@dptr,a
                            314 ;	DAC.c:27: unsigned int noteDuration = 1000 / tempo;
   24F8 90 02 E1            315 	mov	dptr,#_squareWave_PARM_2
   24FB E0                  316 	movx	a,@dptr
   24FC FA                  317 	mov	r2,a
   24FD A3                  318 	inc	dptr
   24FE E0                  319 	movx	a,@dptr
   24FF FB                  320 	mov	r3,a
   2500 90 03 88            321 	mov	dptr,#__divuint_PARM_2
   2503 EA                  322 	mov	a,r2
   2504 F0                  323 	movx	@dptr,a
   2505 A3                  324 	inc	dptr
   2506 EB                  325 	mov	a,r3
   2507 F0                  326 	movx	@dptr,a
                            327 ;	DAC.c:30: speaker(note,noteDuration);  
   2508 90 03 E8            328 	mov	dptr,#0x03E8
   250B 12 32 C0            329 	lcall	__divuint
   250E AA 82               330 	mov	r2,dpl
   2510 AB 83               331 	mov	r3,dph
   2512 90 02 E3            332 	mov	dptr,#_squareWave_note_1_1
   2515 E0                  333 	movx	a,@dptr
   2516 FC                  334 	mov	r4,a
   2517 A3                  335 	inc	dptr
   2518 E0                  336 	movx	a,@dptr
   2519 FD                  337 	mov	r5,a
   251A 90 02 DD            338 	mov	dptr,#_speaker_PARM_2
   251D EA                  339 	mov	a,r2
   251E F0                  340 	movx	@dptr,a
   251F A3                  341 	inc	dptr
   2520 EB                  342 	mov	a,r3
   2521 F0                  343 	movx	@dptr,a
   2522 8C 82               344 	mov	dpl,r4
   2524 8D 83               345 	mov	dph,r5
   2526 C0 02               346 	push	ar2
   2528 C0 03               347 	push	ar3
   252A 12 24 2A            348 	lcall	_speaker
   252D D0 03               349 	pop	ar3
   252F D0 02               350 	pop	ar2
                            351 ;	DAC.c:35: speaker(PAUSE,noteDuration); 
   2531 90 02 DD            352 	mov	dptr,#_speaker_PARM_2
   2534 EA                  353 	mov	a,r2
   2535 F0                  354 	movx	@dptr,a
   2536 A3                  355 	inc	dptr
   2537 EB                  356 	mov	a,r3
   2538 F0                  357 	movx	@dptr,a
   2539 90 00 00            358 	mov	dptr,#0x0000
   253C 02 24 2A            359 	ljmp	_speaker
                            360 ;------------------------------------------------------------
                            361 ;Allocation info for local variables in function 'sing'
                            362 ;------------------------------------------------------------
                            363 ;song                      Allocated with name '_sing_song_1_1'
                            364 ;------------------------------------------------------------
                            365 ;	DAC.c:41: void sing(unsigned char song) {
                            366 ;	-----------------------------------------
                            367 ;	 function sing
                            368 ;	-----------------------------------------
   253F                     369 _sing:
   253F E5 82               370 	mov	a,dpl
   2541 90 02 E5            371 	mov	dptr,#_sing_song_1_1
   2544 F0                  372 	movx	@dptr,a
                            373 ;	DAC.c:44: if(song == 1){
   2545 90 02 E5            374 	mov	dptr,#_sing_song_1_1
   2548 E0                  375 	movx	a,@dptr
   2549 FA                  376 	mov	r2,a
   254A BA 01 64            377 	cjne	r2,#0x01,00122$
                            378 ;	DAC.c:46: squareWave(adobe_melody[i],adobe_noteTime[i]);
   254D 90 09 06            379 	mov	dptr,#_i
   2550 E0                  380 	movx	a,@dptr
   2551 FB                  381 	mov	r3,a
   2552 A3                  382 	inc	dptr
   2553 E0                  383 	movx	a,@dptr
   2554 FC                  384 	mov	r4,a
   2555 8B 05               385 	mov	ar5,r3
   2557 CD                  386 	xch	a,r5
   2558 25 E0               387 	add	a,acc
   255A CD                  388 	xch	a,r5
   255B 33                  389 	rlc	a
   255C FE                  390 	mov	r6,a
   255D ED                  391 	mov	a,r5
   255E 24 CA               392 	add	a,#_adobe_melody
   2560 F5 82               393 	mov	dpl,a
   2562 EE                  394 	mov	a,r6
   2563 34 08               395 	addc	a,#(_adobe_melody >> 8)
   2565 F5 83               396 	mov	dph,a
   2567 E0                  397 	movx	a,@dptr
   2568 FD                  398 	mov	r5,a
   2569 A3                  399 	inc	dptr
   256A E0                  400 	movx	a,@dptr
   256B FE                  401 	mov	r6,a
   256C EB                  402 	mov	a,r3
   256D 24 EA               403 	add	a,#_adobe_noteTime
   256F F5 82               404 	mov	dpl,a
   2571 EC                  405 	mov	a,r4
   2572 34 08               406 	addc	a,#(_adobe_noteTime >> 8)
   2574 F5 83               407 	mov	dph,a
   2576 E0                  408 	movx	a,@dptr
   2577 90 02 E1            409 	mov	dptr,#_squareWave_PARM_2
   257A F0                  410 	movx	@dptr,a
   257B A3                  411 	inc	dptr
   257C E4                  412 	clr	a
   257D F0                  413 	movx	@dptr,a
   257E 8D 82               414 	mov	dpl,r5
   2580 8E 83               415 	mov	dph,r6
   2582 12 24 ED            416 	lcall	_squareWave
                            417 ;	DAC.c:48: if(i+1<(sizeof(adobe_melody)/sizeof(unsigned int)))
   2585 90 09 06            418 	mov	dptr,#_i
   2588 E0                  419 	movx	a,@dptr
   2589 FB                  420 	mov	r3,a
   258A A3                  421 	inc	dptr
   258B E0                  422 	movx	a,@dptr
   258C FC                  423 	mov	r4,a
   258D 74 01               424 	mov	a,#0x01
   258F 2B                  425 	add	a,r3
   2590 FD                  426 	mov	r5,a
   2591 E4                  427 	clr	a
   2592 3C                  428 	addc	a,r4
   2593 FE                  429 	mov	r6,a
   2594 C3                  430 	clr	c
   2595 ED                  431 	mov	a,r5
   2596 94 10               432 	subb	a,#0x10
   2598 EE                  433 	mov	a,r6
   2599 94 00               434 	subb	a,#0x00
   259B 50 0C               435 	jnc	00102$
                            436 ;	DAC.c:49: i++;
   259D 90 09 06            437 	mov	dptr,#_i
   25A0 74 01               438 	mov	a,#0x01
   25A2 2B                  439 	add	a,r3
   25A3 F0                  440 	movx	@dptr,a
   25A4 E4                  441 	clr	a
   25A5 3C                  442 	addc	a,r4
   25A6 A3                  443 	inc	dptr
   25A7 F0                  444 	movx	@dptr,a
   25A8 22                  445 	ret
   25A9                     446 00102$:
                            447 ;	DAC.c:51: i = 0;
   25A9 90 09 06            448 	mov	dptr,#_i
   25AC E4                  449 	clr	a
   25AD F0                  450 	movx	@dptr,a
   25AE A3                  451 	inc	dptr
   25AF F0                  452 	movx	@dptr,a
   25B0 22                  453 	ret
   25B1                     454 00122$:
                            455 ;	DAC.c:54: else if(song == 2){
   25B1 BA 02 64            456 	cjne	r2,#0x02,00119$
                            457 ;	DAC.c:55: squareWave(underworld_melody[i],underworld_noteTime[i]);
   25B4 90 09 06            458 	mov	dptr,#_i
   25B7 E0                  459 	movx	a,@dptr
   25B8 FB                  460 	mov	r3,a
   25B9 A3                  461 	inc	dptr
   25BA E0                  462 	movx	a,@dptr
   25BB FC                  463 	mov	r4,a
   25BC 8B 05               464 	mov	ar5,r3
   25BE CD                  465 	xch	a,r5
   25BF 25 E0               466 	add	a,acc
   25C1 CD                  467 	xch	a,r5
   25C2 33                  468 	rlc	a
   25C3 FE                  469 	mov	r6,a
   25C4 ED                  470 	mov	a,r5
   25C5 24 22               471 	add	a,#_underworld_melody
   25C7 F5 82               472 	mov	dpl,a
   25C9 EE                  473 	mov	a,r6
   25CA 34 08               474 	addc	a,#(_underworld_melody >> 8)
   25CC F5 83               475 	mov	dph,a
   25CE E0                  476 	movx	a,@dptr
   25CF FD                  477 	mov	r5,a
   25D0 A3                  478 	inc	dptr
   25D1 E0                  479 	movx	a,@dptr
   25D2 FE                  480 	mov	r6,a
   25D3 EB                  481 	mov	a,r3
   25D4 24 92               482 	add	a,#_underworld_noteTime
   25D6 F5 82               483 	mov	dpl,a
   25D8 EC                  484 	mov	a,r4
   25D9 34 08               485 	addc	a,#(_underworld_noteTime >> 8)
   25DB F5 83               486 	mov	dph,a
   25DD E0                  487 	movx	a,@dptr
   25DE 90 02 E1            488 	mov	dptr,#_squareWave_PARM_2
   25E1 F0                  489 	movx	@dptr,a
   25E2 A3                  490 	inc	dptr
   25E3 E4                  491 	clr	a
   25E4 F0                  492 	movx	@dptr,a
   25E5 8D 82               493 	mov	dpl,r5
   25E7 8E 83               494 	mov	dph,r6
   25E9 12 24 ED            495 	lcall	_squareWave
                            496 ;	DAC.c:57: if(i+1<(sizeof(underworld_melody)/sizeof(unsigned int)))
   25EC 90 09 06            497 	mov	dptr,#_i
   25EF E0                  498 	movx	a,@dptr
   25F0 FB                  499 	mov	r3,a
   25F1 A3                  500 	inc	dptr
   25F2 E0                  501 	movx	a,@dptr
   25F3 FC                  502 	mov	r4,a
   25F4 74 01               503 	mov	a,#0x01
   25F6 2B                  504 	add	a,r3
   25F7 FD                  505 	mov	r5,a
   25F8 E4                  506 	clr	a
   25F9 3C                  507 	addc	a,r4
   25FA FE                  508 	mov	r6,a
   25FB C3                  509 	clr	c
   25FC ED                  510 	mov	a,r5
   25FD 94 38               511 	subb	a,#0x38
   25FF EE                  512 	mov	a,r6
   2600 94 00               513 	subb	a,#0x00
   2602 50 0C               514 	jnc	00105$
                            515 ;	DAC.c:58: i++;
   2604 90 09 06            516 	mov	dptr,#_i
   2607 74 01               517 	mov	a,#0x01
   2609 2B                  518 	add	a,r3
   260A F0                  519 	movx	@dptr,a
   260B E4                  520 	clr	a
   260C 3C                  521 	addc	a,r4
   260D A3                  522 	inc	dptr
   260E F0                  523 	movx	@dptr,a
   260F 22                  524 	ret
   2610                     525 00105$:
                            526 ;	DAC.c:60: i = 0;
   2610 90 09 06            527 	mov	dptr,#_i
   2613 E4                  528 	clr	a
   2614 F0                  529 	movx	@dptr,a
   2615 A3                  530 	inc	dptr
   2616 F0                  531 	movx	@dptr,a
   2617 22                  532 	ret
   2618                     533 00119$:
                            534 ;	DAC.c:62: else if(song == 3){
   2618 BA 03 64            535 	cjne	r2,#0x03,00116$
                            536 ;	DAC.c:63: squareWave(mainMario_melody[i],mainMario_noteTime[i]);
   261B 90 09 06            537 	mov	dptr,#_i
   261E E0                  538 	movx	a,@dptr
   261F FB                  539 	mov	r3,a
   2620 A3                  540 	inc	dptr
   2621 E0                  541 	movx	a,@dptr
   2622 FC                  542 	mov	r4,a
   2623 8B 05               543 	mov	ar5,r3
   2625 CD                  544 	xch	a,r5
   2626 25 E0               545 	add	a,acc
   2628 CD                  546 	xch	a,r5
   2629 33                  547 	rlc	a
   262A FE                  548 	mov	r6,a
   262B ED                  549 	mov	a,r5
   262C 24 38               550 	add	a,#_mainMario_melody
   262E F5 82               551 	mov	dpl,a
   2630 EE                  552 	mov	a,r6
   2631 34 07               553 	addc	a,#(_mainMario_melody >> 8)
   2633 F5 83               554 	mov	dph,a
   2635 E0                  555 	movx	a,@dptr
   2636 FD                  556 	mov	r5,a
   2637 A3                  557 	inc	dptr
   2638 E0                  558 	movx	a,@dptr
   2639 FE                  559 	mov	r6,a
   263A EB                  560 	mov	a,r3
   263B 24 D4               561 	add	a,#_mainMario_noteTime
   263D F5 82               562 	mov	dpl,a
   263F EC                  563 	mov	a,r4
   2640 34 07               564 	addc	a,#(_mainMario_noteTime >> 8)
   2642 F5 83               565 	mov	dph,a
   2644 E0                  566 	movx	a,@dptr
   2645 90 02 E1            567 	mov	dptr,#_squareWave_PARM_2
   2648 F0                  568 	movx	@dptr,a
   2649 A3                  569 	inc	dptr
   264A E4                  570 	clr	a
   264B F0                  571 	movx	@dptr,a
   264C 8D 82               572 	mov	dpl,r5
   264E 8E 83               573 	mov	dph,r6
   2650 12 24 ED            574 	lcall	_squareWave
                            575 ;	DAC.c:65: if(i+1<(sizeof(mainMario_melody)/sizeof(unsigned int)))
   2653 90 09 06            576 	mov	dptr,#_i
   2656 E0                  577 	movx	a,@dptr
   2657 FB                  578 	mov	r3,a
   2658 A3                  579 	inc	dptr
   2659 E0                  580 	movx	a,@dptr
   265A FC                  581 	mov	r4,a
   265B 74 01               582 	mov	a,#0x01
   265D 2B                  583 	add	a,r3
   265E FD                  584 	mov	r5,a
   265F E4                  585 	clr	a
   2660 3C                  586 	addc	a,r4
   2661 FE                  587 	mov	r6,a
   2662 C3                  588 	clr	c
   2663 ED                  589 	mov	a,r5
   2664 94 4E               590 	subb	a,#0x4E
   2666 EE                  591 	mov	a,r6
   2667 94 00               592 	subb	a,#0x00
   2669 50 0C               593 	jnc	00108$
                            594 ;	DAC.c:66: i++;
   266B 90 09 06            595 	mov	dptr,#_i
   266E 74 01               596 	mov	a,#0x01
   2670 2B                  597 	add	a,r3
   2671 F0                  598 	movx	@dptr,a
   2672 E4                  599 	clr	a
   2673 3C                  600 	addc	a,r4
   2674 A3                  601 	inc	dptr
   2675 F0                  602 	movx	@dptr,a
   2676 22                  603 	ret
   2677                     604 00108$:
                            605 ;	DAC.c:68: i = 0;
   2677 90 09 06            606 	mov	dptr,#_i
   267A E4                  607 	clr	a
   267B F0                  608 	movx	@dptr,a
   267C A3                  609 	inc	dptr
   267D F0                  610 	movx	@dptr,a
   267E 22                  611 	ret
   267F                     612 00116$:
                            613 ;	DAC.c:70: else if(song == 4){
   267F BA 04 5F            614 	cjne	r2,#0x04,00113$
                            615 ;	DAC.c:71: for( i =0;i<(sizeof(beep1_melody)/sizeof(int));i++)
   2682 90 09 06            616 	mov	dptr,#_i
   2685 E4                  617 	clr	a
   2686 F0                  618 	movx	@dptr,a
   2687 A3                  619 	inc	dptr
   2688 F0                  620 	movx	@dptr,a
   2689                     621 00124$:
   2689 90 09 06            622 	mov	dptr,#_i
   268C E0                  623 	movx	a,@dptr
   268D FB                  624 	mov	r3,a
   268E A3                  625 	inc	dptr
   268F E0                  626 	movx	a,@dptr
   2690 FC                  627 	mov	r4,a
   2691 C3                  628 	clr	c
   2692 EB                  629 	mov	a,r3
   2693 94 02               630 	subb	a,#0x02
   2695 EC                  631 	mov	a,r4
   2696 94 00               632 	subb	a,#0x00
   2698 40 01               633 	jc	00157$
   269A 22                  634 	ret
   269B                     635 00157$:
                            636 ;	DAC.c:72: squareWave(beep1_melody[i],beep1_noteTime[i]);
   269B 8B 05               637 	mov	ar5,r3
   269D EC                  638 	mov	a,r4
   269E CD                  639 	xch	a,r5
   269F 25 E0               640 	add	a,acc
   26A1 CD                  641 	xch	a,r5
   26A2 33                  642 	rlc	a
   26A3 FE                  643 	mov	r6,a
   26A4 ED                  644 	mov	a,r5
   26A5 24 FA               645 	add	a,#_beep1_melody
   26A7 F5 82               646 	mov	dpl,a
   26A9 EE                  647 	mov	a,r6
   26AA 34 08               648 	addc	a,#(_beep1_melody >> 8)
   26AC F5 83               649 	mov	dph,a
   26AE E0                  650 	movx	a,@dptr
   26AF FD                  651 	mov	r5,a
   26B0 A3                  652 	inc	dptr
   26B1 E0                  653 	movx	a,@dptr
   26B2 FE                  654 	mov	r6,a
   26B3 EB                  655 	mov	a,r3
   26B4 24 FE               656 	add	a,#_beep1_noteTime
   26B6 F5 82               657 	mov	dpl,a
   26B8 EC                  658 	mov	a,r4
   26B9 34 08               659 	addc	a,#(_beep1_noteTime >> 8)
   26BB F5 83               660 	mov	dph,a
   26BD E0                  661 	movx	a,@dptr
   26BE 90 02 E1            662 	mov	dptr,#_squareWave_PARM_2
   26C1 F0                  663 	movx	@dptr,a
   26C2 A3                  664 	inc	dptr
   26C3 E4                  665 	clr	a
   26C4 F0                  666 	movx	@dptr,a
   26C5 8D 82               667 	mov	dpl,r5
   26C7 8E 83               668 	mov	dph,r6
   26C9 12 24 ED            669 	lcall	_squareWave
                            670 ;	DAC.c:71: for( i =0;i<(sizeof(beep1_melody)/sizeof(int));i++)
   26CC 90 09 06            671 	mov	dptr,#_i
   26CF E0                  672 	movx	a,@dptr
   26D0 FB                  673 	mov	r3,a
   26D1 A3                  674 	inc	dptr
   26D2 E0                  675 	movx	a,@dptr
   26D3 FC                  676 	mov	r4,a
   26D4 90 09 06            677 	mov	dptr,#_i
   26D7 74 01               678 	mov	a,#0x01
   26D9 2B                  679 	add	a,r3
   26DA F0                  680 	movx	@dptr,a
   26DB E4                  681 	clr	a
   26DC 3C                  682 	addc	a,r4
   26DD A3                  683 	inc	dptr
   26DE F0                  684 	movx	@dptr,a
   26DF 80 A8               685 	sjmp	00124$
   26E1                     686 00113$:
                            687 ;	DAC.c:74: else if(song == 5){
   26E1 BA 05 5E            688 	cjne	r2,#0x05,00132$
                            689 ;	DAC.c:75: for( i =0;i<(sizeof(beep2_melody)/sizeof(int));i++)
   26E4 90 09 06            690 	mov	dptr,#_i
   26E7 E4                  691 	clr	a
   26E8 F0                  692 	movx	@dptr,a
   26E9 A3                  693 	inc	dptr
   26EA F0                  694 	movx	@dptr,a
   26EB                     695 00128$:
   26EB 90 09 06            696 	mov	dptr,#_i
   26EE E0                  697 	movx	a,@dptr
   26EF FA                  698 	mov	r2,a
   26F0 A3                  699 	inc	dptr
   26F1 E0                  700 	movx	a,@dptr
   26F2 FB                  701 	mov	r3,a
   26F3 C3                  702 	clr	c
   26F4 EA                  703 	mov	a,r2
   26F5 94 02               704 	subb	a,#0x02
   26F7 EB                  705 	mov	a,r3
   26F8 94 00               706 	subb	a,#0x00
   26FA 50 46               707 	jnc	00132$
                            708 ;	DAC.c:76: squareWave(beep2_melody[i],beep2_noteTime[i]);
   26FC 8A 04               709 	mov	ar4,r2
   26FE EB                  710 	mov	a,r3
   26FF CC                  711 	xch	a,r4
   2700 25 E0               712 	add	a,acc
   2702 CC                  713 	xch	a,r4
   2703 33                  714 	rlc	a
   2704 FD                  715 	mov	r5,a
   2705 EC                  716 	mov	a,r4
   2706 24 00               717 	add	a,#_beep2_melody
   2708 F5 82               718 	mov	dpl,a
   270A ED                  719 	mov	a,r5
   270B 34 09               720 	addc	a,#(_beep2_melody >> 8)
   270D F5 83               721 	mov	dph,a
   270F E0                  722 	movx	a,@dptr
   2710 FC                  723 	mov	r4,a
   2711 A3                  724 	inc	dptr
   2712 E0                  725 	movx	a,@dptr
   2713 FD                  726 	mov	r5,a
   2714 EA                  727 	mov	a,r2
   2715 24 04               728 	add	a,#_beep2_noteTime
   2717 F5 82               729 	mov	dpl,a
   2719 EB                  730 	mov	a,r3
   271A 34 09               731 	addc	a,#(_beep2_noteTime >> 8)
   271C F5 83               732 	mov	dph,a
   271E E0                  733 	movx	a,@dptr
   271F 90 02 E1            734 	mov	dptr,#_squareWave_PARM_2
   2722 F0                  735 	movx	@dptr,a
   2723 A3                  736 	inc	dptr
   2724 E4                  737 	clr	a
   2725 F0                  738 	movx	@dptr,a
   2726 8C 82               739 	mov	dpl,r4
   2728 8D 83               740 	mov	dph,r5
   272A 12 24 ED            741 	lcall	_squareWave
                            742 ;	DAC.c:75: for( i =0;i<(sizeof(beep2_melody)/sizeof(int));i++)
   272D 90 09 06            743 	mov	dptr,#_i
   2730 E0                  744 	movx	a,@dptr
   2731 FA                  745 	mov	r2,a
   2732 A3                  746 	inc	dptr
   2733 E0                  747 	movx	a,@dptr
   2734 FB                  748 	mov	r3,a
   2735 90 09 06            749 	mov	dptr,#_i
   2738 74 01               750 	mov	a,#0x01
   273A 2A                  751 	add	a,r2
   273B F0                  752 	movx	@dptr,a
   273C E4                  753 	clr	a
   273D 3B                  754 	addc	a,r3
   273E A3                  755 	inc	dptr
   273F F0                  756 	movx	@dptr,a
   2740 80 A9               757 	sjmp	00128$
   2742                     758 00132$:
   2742 22                  759 	ret
                            760 	.area CSEG    (CODE)
                            761 	.area CONST   (CODE)
                            762 	.area XINIT   (CODE)
   3919                     763 __xinit__mainMario_melody:
   3919 63 00               764 	.byte #0x63,#0x00
   391B 63 00               765 	.byte #0x63,#0x00
   391D 00 00               766 	.byte #0x00,#0x00
   391F 63 00               767 	.byte #0x63,#0x00
   3921 00 00               768 	.byte #0x00,#0x00
   3923 7D 00               769 	.byte #0x7D,#0x00
   3925 63 00               770 	.byte #0x63,#0x00
   3927 00 00               771 	.byte #0x00,#0x00
   3929 54 00               772 	.byte #0x54,#0x00
   392B 00 00               773 	.byte #0x00,#0x00
   392D 00 00               774 	.byte #0x00,#0x00
   392F 00 00               775 	.byte #0x00,#0x00
   3931 A7 00               776 	.byte #0xA7,#0x00
   3933 00 00               777 	.byte #0x00,#0x00
   3935 00 00               778 	.byte #0x00,#0x00
   3937 00 00               779 	.byte #0x00,#0x00
   3939 7D 00               780 	.byte #0x7D,#0x00
   393B 00 00               781 	.byte #0x00,#0x00
   393D 00 00               782 	.byte #0x00,#0x00
   393F A7 00               783 	.byte #0xA7,#0x00
   3941 00 00               784 	.byte #0x00,#0x00
   3943 00 00               785 	.byte #0x00,#0x00
   3945 C7 00               786 	.byte #0xC7,#0x00
   3947 00 00               787 	.byte #0x00,#0x00
   3949 00 00               788 	.byte #0x00,#0x00
   394B 95 00               789 	.byte #0x95,#0x00
   394D 00 00               790 	.byte #0x00,#0x00
   394F 85 00               791 	.byte #0x85,#0x00
   3951 00 00               792 	.byte #0x00,#0x00
   3953 8D 00               793 	.byte #0x8D,#0x00
   3955 95 00               794 	.byte #0x95,#0x00
   3957 00 00               795 	.byte #0x00,#0x00
   3959 A7 00               796 	.byte #0xA7,#0x00
   395B 63 00               797 	.byte #0x63,#0x00
   395D 54 00               798 	.byte #0x54,#0x00
   395F 4B 00               799 	.byte #0x4B,#0x00
   3961 00 00               800 	.byte #0x00,#0x00
   3963 5E 00               801 	.byte #0x5E,#0x00
   3965 54 00               802 	.byte #0x54,#0x00
   3967 00 00               803 	.byte #0x00,#0x00
   3969 63 00               804 	.byte #0x63,#0x00
   396B 00 00               805 	.byte #0x00,#0x00
   396D 7D 00               806 	.byte #0x7D,#0x00
   396F 70 00               807 	.byte #0x70,#0x00
   3971 85 00               808 	.byte #0x85,#0x00
   3973 00 00               809 	.byte #0x00,#0x00
   3975 00 00               810 	.byte #0x00,#0x00
   3977 7D 00               811 	.byte #0x7D,#0x00
   3979 00 00               812 	.byte #0x00,#0x00
   397B 00 00               813 	.byte #0x00,#0x00
   397D A7 00               814 	.byte #0xA7,#0x00
   397F 00 00               815 	.byte #0x00,#0x00
   3981 00 00               816 	.byte #0x00,#0x00
   3983 C7 00               817 	.byte #0xC7,#0x00
   3985 00 00               818 	.byte #0x00,#0x00
   3987 00 00               819 	.byte #0x00,#0x00
   3989 95 00               820 	.byte #0x95,#0x00
   398B 00 00               821 	.byte #0x00,#0x00
   398D 85 00               822 	.byte #0x85,#0x00
   398F 00 00               823 	.byte #0x00,#0x00
   3991 8D 00               824 	.byte #0x8D,#0x00
   3993 95 00               825 	.byte #0x95,#0x00
   3995 00 00               826 	.byte #0x00,#0x00
   3997 A7 00               827 	.byte #0xA7,#0x00
   3999 63 00               828 	.byte #0x63,#0x00
   399B 54 00               829 	.byte #0x54,#0x00
   399D 4B 00               830 	.byte #0x4B,#0x00
   399F 00 00               831 	.byte #0x00,#0x00
   39A1 5E 00               832 	.byte #0x5E,#0x00
   39A3 54 00               833 	.byte #0x54,#0x00
   39A5 00 00               834 	.byte #0x00,#0x00
   39A7 63 00               835 	.byte #0x63,#0x00
   39A9 00 00               836 	.byte #0x00,#0x00
   39AB 7D 00               837 	.byte #0x7D,#0x00
   39AD 70 00               838 	.byte #0x70,#0x00
   39AF 85 00               839 	.byte #0x85,#0x00
   39B1 00 00               840 	.byte #0x00,#0x00
   39B3 00 00               841 	.byte #0x00,#0x00
   39B5                     842 __xinit__mainMario_noteTime:
   39B5 0F                  843 	.db #0x0F
   39B6 0F                  844 	.db #0x0F
   39B7 0F                  845 	.db #0x0F
   39B8 0F                  846 	.db #0x0F
   39B9 0F                  847 	.db #0x0F
   39BA 0F                  848 	.db #0x0F
   39BB 0F                  849 	.db #0x0F
   39BC 0F                  850 	.db #0x0F
   39BD 0F                  851 	.db #0x0F
   39BE 0F                  852 	.db #0x0F
   39BF 0F                  853 	.db #0x0F
   39C0 0F                  854 	.db #0x0F
   39C1 0F                  855 	.db #0x0F
   39C2 0F                  856 	.db #0x0F
   39C3 0F                  857 	.db #0x0F
   39C4 0F                  858 	.db #0x0F
   39C5 0F                  859 	.db #0x0F
   39C6 0F                  860 	.db #0x0F
   39C7 0F                  861 	.db #0x0F
   39C8 0F                  862 	.db #0x0F
   39C9 0F                  863 	.db #0x0F
   39CA 0F                  864 	.db #0x0F
   39CB 0F                  865 	.db #0x0F
   39CC 0F                  866 	.db #0x0F
   39CD 0F                  867 	.db #0x0F
   39CE 0F                  868 	.db #0x0F
   39CF 0F                  869 	.db #0x0F
   39D0 0F                  870 	.db #0x0F
   39D1 0F                  871 	.db #0x0F
   39D2 0F                  872 	.db #0x0F
   39D3 0F                  873 	.db #0x0F
   39D4 0F                  874 	.db #0x0F
   39D5 0C                  875 	.db #0x0C
   39D6 0C                  876 	.db #0x0C
   39D7 0C                  877 	.db #0x0C
   39D8 0F                  878 	.db #0x0F
   39D9 0F                  879 	.db #0x0F
   39DA 0F                  880 	.db #0x0F
   39DB 0F                  881 	.db #0x0F
   39DC 0F                  882 	.db #0x0F
   39DD 0F                  883 	.db #0x0F
   39DE 0F                  884 	.db #0x0F
   39DF 0F                  885 	.db #0x0F
   39E0 0F                  886 	.db #0x0F
   39E1 0F                  887 	.db #0x0F
   39E2 0F                  888 	.db #0x0F
   39E3 0F                  889 	.db #0x0F
   39E4 0F                  890 	.db #0x0F
   39E5 0F                  891 	.db #0x0F
   39E6 0F                  892 	.db #0x0F
   39E7 0F                  893 	.db #0x0F
   39E8 0F                  894 	.db #0x0F
   39E9 0F                  895 	.db #0x0F
   39EA 0F                  896 	.db #0x0F
   39EB 0F                  897 	.db #0x0F
   39EC 0F                  898 	.db #0x0F
   39ED 0F                  899 	.db #0x0F
   39EE 0F                  900 	.db #0x0F
   39EF 0F                  901 	.db #0x0F
   39F0 0F                  902 	.db #0x0F
   39F1 0F                  903 	.db #0x0F
   39F2 0F                  904 	.db #0x0F
   39F3 0F                  905 	.db #0x0F
   39F4 0C                  906 	.db #0x0C
   39F5 0C                  907 	.db #0x0C
   39F6 0C                  908 	.db #0x0C
   39F7 0F                  909 	.db #0x0F
   39F8 0F                  910 	.db #0x0F
   39F9 0F                  911 	.db #0x0F
   39FA 0F                  912 	.db #0x0F
   39FB 0F                  913 	.db #0x0F
   39FC 0F                  914 	.db #0x0F
   39FD 0F                  915 	.db #0x0F
   39FE 0F                  916 	.db #0x0F
   39FF 0F                  917 	.db #0x0F
   3A00 0F                  918 	.db #0x0F
   3A01 0F                  919 	.db #0x0F
   3A02 0F                  920 	.db #0x0F
   3A03                     921 __xinit__underworld_melody:
   3A03 FB 00               922 	.byte #0xFB,#0x00
   3A05 7D 00               923 	.byte #0x7D,#0x00
   3A07 2A 01               924 	.byte #0x2A,#0x01
   3A09 95 00               925 	.byte #0x95,#0x00
   3A0B 1A 01               926 	.byte #0x1A,#0x01
   3A0D 8D 00               927 	.byte #0x8D,#0x00
   3A0F 00 00               928 	.byte #0x00,#0x00
   3A11 00 00               929 	.byte #0x00,#0x00
   3A13 FB 00               930 	.byte #0xFB,#0x00
   3A15 7D 00               931 	.byte #0x7D,#0x00
   3A17 2A 01               932 	.byte #0x2A,#0x01
   3A19 95 00               933 	.byte #0x95,#0x00
   3A1B 1A 01               934 	.byte #0x1A,#0x01
   3A1D 8D 00               935 	.byte #0x8D,#0x00
   3A1F 00 00               936 	.byte #0x00,#0x00
   3A21 00 00               937 	.byte #0x00,#0x00
   3A23 78 01               938 	.byte #0x78,#0x01
   3A25 BC 00               939 	.byte #0xBC,#0x00
   3A27 BF 01               940 	.byte #0xBF,#0x01
   3A29 DF 00               941 	.byte #0xDF,#0x00
   3A2B A6 01               942 	.byte #0xA6,#0x01
   3A2D D3 00               943 	.byte #0xD3,#0x00
   3A2F 00 00               944 	.byte #0x00,#0x00
   3A31 00 00               945 	.byte #0x00,#0x00
   3A33 78 01               946 	.byte #0x78,#0x01
   3A35 BC 00               947 	.byte #0xBC,#0x00
   3A37 BF 01               948 	.byte #0xBF,#0x01
   3A39 DF 00               949 	.byte #0xDF,#0x00
   3A3B A6 01               950 	.byte #0xA6,#0x01
   3A3D D3 00               951 	.byte #0xD3,#0x00
   3A3F 00 00               952 	.byte #0x00,#0x00
   3A41 00 00               953 	.byte #0x00,#0x00
   3A43 D3 00               954 	.byte #0xD3,#0x00
   3A45 ED 00               955 	.byte #0xED,#0x00
   3A47 DF 00               956 	.byte #0xDF,#0x00
   3A49 ED 00               957 	.byte #0xED,#0x00
   3A4B D3 00               958 	.byte #0xD3,#0x00
   3A4D D3 00               959 	.byte #0xD3,#0x00
   3A4F 3C 01               960 	.byte #0x3C,#0x01
   3A51 4F 01               961 	.byte #0x4F,#0x01
   3A53 ED 00               962 	.byte #0xED,#0x00
   3A55 FB 00               963 	.byte #0xFB,#0x00
   3A57 B1 00               964 	.byte #0xB1,#0x00
   3A59 BC 00               965 	.byte #0xBC,#0x00
   3A5B 8E 01               966 	.byte #0x8E,#0x01
   3A5D 8D 00               967 	.byte #0x8D,#0x00
   3A5F 95 00               968 	.byte #0x95,#0x00
   3A61 9E 00               969 	.byte #0x9E,#0x00
   3A63 D3 00               970 	.byte #0xD3,#0x00
   3A65 0A 01               971 	.byte #0x0A,#0x01
   3A67 1A 01               972 	.byte #0x1A,#0x01
   3A69 2A 01               973 	.byte #0x2A,#0x01
   3A6B 3C 01               974 	.byte #0x3C,#0x01
   3A6D 00 00               975 	.byte #0x00,#0x00
   3A6F 00 00               976 	.byte #0x00,#0x00
   3A71 00 00               977 	.byte #0x00,#0x00
   3A73                     978 __xinit__underworld_noteTime:
   3A73 0C                  979 	.db #0x0C
   3A74 0C                  980 	.db #0x0C
   3A75 0C                  981 	.db #0x0C
   3A76 0C                  982 	.db #0x0C
   3A77 0C                  983 	.db #0x0C
   3A78 0C                  984 	.db #0x0C
   3A79 06                  985 	.db #0x06
   3A7A 03                  986 	.db #0x03
   3A7B 0C                  987 	.db #0x0C
   3A7C 0C                  988 	.db #0x0C
   3A7D 0C                  989 	.db #0x0C
   3A7E 0C                  990 	.db #0x0C
   3A7F 0C                  991 	.db #0x0C
   3A80 0C                  992 	.db #0x0C
   3A81 06                  993 	.db #0x06
   3A82 03                  994 	.db #0x03
   3A83 0C                  995 	.db #0x0C
   3A84 0C                  996 	.db #0x0C
   3A85 0C                  997 	.db #0x0C
   3A86 0C                  998 	.db #0x0C
   3A87 0C                  999 	.db #0x0C
   3A88 0C                 1000 	.db #0x0C
   3A89 06                 1001 	.db #0x06
   3A8A 03                 1002 	.db #0x03
   3A8B 0C                 1003 	.db #0x0C
   3A8C 0C                 1004 	.db #0x0C
   3A8D 0C                 1005 	.db #0x0C
   3A8E 0C                 1006 	.db #0x0C
   3A8F 0C                 1007 	.db #0x0C
   3A90 0C                 1008 	.db #0x0C
   3A91 06                 1009 	.db #0x06
   3A92 06                 1010 	.db #0x06
   3A93 12                 1011 	.db #0x12
   3A94 12                 1012 	.db #0x12
   3A95 12                 1013 	.db #0x12
   3A96 06                 1014 	.db #0x06
   3A97 06                 1015 	.db #0x06
   3A98 06                 1016 	.db #0x06
   3A99 06                 1017 	.db #0x06
   3A9A 06                 1018 	.db #0x06
   3A9B 06                 1019 	.db #0x06
   3A9C 12                 1020 	.db #0x12
   3A9D 12                 1021 	.db #0x12
   3A9E 12                 1022 	.db #0x12
   3A9F 12                 1023 	.db #0x12
   3AA0 12                 1024 	.db #0x12
   3AA1 12                 1025 	.db #0x12
   3AA2 0A                 1026 	.db #0x0A
   3AA3 0A                 1027 	.db #0x0A
   3AA4 0A                 1028 	.db #0x0A
   3AA5 0A                 1029 	.db #0x0A
   3AA6 0A                 1030 	.db #0x0A
   3AA7 0A                 1031 	.db #0x0A
   3AA8 03                 1032 	.db #0x03
   3AA9 03                 1033 	.db #0x03
   3AAA 03                 1034 	.db #0x03
   3AAB                    1035 __xinit__adobe_melody:
   3AAB 85 00              1036 	.byte #0x85,#0x00
   3AAD 85 00              1037 	.byte #0x85,#0x00
   3AAF 00 00              1038 	.byte #0x00,#0x00
   3AB1 85 00              1039 	.byte #0x85,#0x00
   3AB3 70 00              1040 	.byte #0x70,#0x00
   3AB5 70 00              1041 	.byte #0x70,#0x00
   3AB7 00 00              1042 	.byte #0x00,#0x00
   3AB9 70 00              1043 	.byte #0x70,#0x00
   3ABB 95 00              1044 	.byte #0x95,#0x00
   3ABD 95 00              1045 	.byte #0x95,#0x00
   3ABF 00 00              1046 	.byte #0x00,#0x00
   3AC1 95 00              1047 	.byte #0x95,#0x00
   3AC3 85 00              1048 	.byte #0x85,#0x00
   3AC5 85 00              1049 	.byte #0x85,#0x00
   3AC7 00 00              1050 	.byte #0x00,#0x00
   3AC9 00 00              1051 	.byte #0x00,#0x00
   3ACB                    1052 __xinit__adobe_noteTime:
   3ACB 06                 1053 	.db #0x06
   3ACC 06                 1054 	.db #0x06
   3ACD 06                 1055 	.db #0x06
   3ACE 06                 1056 	.db #0x06
   3ACF 06                 1057 	.db #0x06
   3AD0 06                 1058 	.db #0x06
   3AD1 06                 1059 	.db #0x06
   3AD2 06                 1060 	.db #0x06
   3AD3 06                 1061 	.db #0x06
   3AD4 06                 1062 	.db #0x06
   3AD5 06                 1063 	.db #0x06
   3AD6 06                 1064 	.db #0x06
   3AD7 06                 1065 	.db #0x06
   3AD8 06                 1066 	.db #0x06
   3AD9 06                 1067 	.db #0x06
   3ADA 06                 1068 	.db #0x06
   3ADB                    1069 __xinit__beep1_melody:
   3ADB FB 00              1070 	.byte #0xFB,#0x00
   3ADD 00 00              1071 	.byte #0x00,#0x00
   3ADF                    1072 __xinit__beep1_noteTime:
   3ADF 06                 1073 	.db #0x06
   3AE0 0C                 1074 	.db #0x0C
   3AE1                    1075 __xinit__beep2_melody:
   3AE1 ED 00              1076 	.byte #0xED,#0x00
   3AE3 00 00              1077 	.byte #0x00,#0x00
   3AE5                    1078 __xinit__beep2_noteTime:
   3AE5 06                 1079 	.db #0x06
   3AE6 0C                 1080 	.db #0x0C
   3AE7                    1081 __xinit__i:
   3AE7 00 00              1082 	.byte #0x00,#0x00
                           1083 	.area CABS    (ABS,CODE)
