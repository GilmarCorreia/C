                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Tue Aug 20 11:45:56 2019
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
   000A                      47 _speaker_sloc0_1_0:
   000A                      48 	.ds 4
   000E                      49 _speaker_sloc1_1_0:
   000E                      50 	.ds 2
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
   02D5                      77 _Timer0::
   02D5                      78 	.ds 7
   02DC                      79 _speaker_PARM_2:
   02DC                      80 	.ds 2
   02DE                      81 _speaker_note_1_1:
   02DE                      82 	.ds 2
   02E0                      83 _squareWave_PARM_2:
   02E0                      84 	.ds 2
   02E2                      85 _squareWave_note_1_1:
   02E2                      86 	.ds 2
   02E4                      87 _sing_song_1_1:
   02E4                      88 	.ds 1
                             89 ;--------------------------------------------------------
                             90 ; absolute external ram data
                             91 ;--------------------------------------------------------
                             92 	.area XABS    (ABS,XDATA)
                             93 ;--------------------------------------------------------
                             94 ; external initialized ram data
                             95 ;--------------------------------------------------------
                             96 	.area XISEG   (XDATA)
   0737                      97 _mainMario_melody::
   0737                      98 	.ds 156
   07D3                      99 _mainMario_noteTime::
   07D3                     100 	.ds 78
   0821                     101 _underworld_melody::
   0821                     102 	.ds 112
   0891                     103 _underworld_noteTime::
   0891                     104 	.ds 56
   08C9                     105 _adobe_melody::
   08C9                     106 	.ds 32
   08E9                     107 _adobe_noteTime::
   08E9                     108 	.ds 16
   08F9                     109 _beep1_melody::
   08F9                     110 	.ds 4
   08FD                     111 _beep1_noteTime::
   08FD                     112 	.ds 2
   08FF                     113 _beep2_melody::
   08FF                     114 	.ds 4
   0903                     115 _beep2_noteTime::
   0903                     116 	.ds 2
   0905                     117 _i::
   0905                     118 	.ds 2
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
   23A5                     160 _speaker:
                    0002    161 	ar2 = 0x02
                    0003    162 	ar3 = 0x03
                    0004    163 	ar4 = 0x04
                    0005    164 	ar5 = 0x05
                    0006    165 	ar6 = 0x06
                    0007    166 	ar7 = 0x07
                    0000    167 	ar0 = 0x00
                    0001    168 	ar1 = 0x01
   23A5 AA 83               169 	mov	r2,dph
   23A7 E5 82               170 	mov	a,dpl
   23A9 90 02 DE            171 	mov	dptr,#_speaker_note_1_1
   23AC F0                  172 	movx	@dptr,a
   23AD A3                  173 	inc	dptr
   23AE EA                  174 	mov	a,r2
   23AF F0                  175 	movx	@dptr,a
                            176 ;	DAC.c:10: long numCycles = note * noteDuration / 1000; 
   23B0 90 02 DC            177 	mov	dptr,#_speaker_PARM_2
   23B3 E0                  178 	movx	a,@dptr
   23B4 FA                  179 	mov	r2,a
   23B5 A3                  180 	inc	dptr
   23B6 E0                  181 	movx	a,@dptr
   23B7 FB                  182 	mov	r3,a
   23B8 90 02 DE            183 	mov	dptr,#_speaker_note_1_1
   23BB E0                  184 	movx	a,@dptr
   23BC FC                  185 	mov	r4,a
   23BD A3                  186 	inc	dptr
   23BE E0                  187 	movx	a,@dptr
   23BF FD                  188 	mov	r5,a
   23C0 90 03 8E            189 	mov	dptr,#__mulint_PARM_2
   23C3 EA                  190 	mov	a,r2
   23C4 F0                  191 	movx	@dptr,a
   23C5 A3                  192 	inc	dptr
   23C6 EB                  193 	mov	a,r3
   23C7 F0                  194 	movx	@dptr,a
   23C8 8C 82               195 	mov	dpl,r4
   23CA 8D 83               196 	mov	dph,r5
   23CC C0 04               197 	push	ar4
   23CE C0 05               198 	push	ar5
   23D0 12 32 EE            199 	lcall	__mulint
   23D3 AA 82               200 	mov	r2,dpl
   23D5 AB 83               201 	mov	r3,dph
   23D7 90 03 87            202 	mov	dptr,#__divuint_PARM_2
   23DA 74 E8               203 	mov	a,#0xE8
   23DC F0                  204 	movx	@dptr,a
   23DD A3                  205 	inc	dptr
   23DE 74 03               206 	mov	a,#0x03
   23E0 F0                  207 	movx	@dptr,a
   23E1 8A 82               208 	mov	dpl,r2
   23E3 8B 83               209 	mov	dph,r3
   23E5 12 32 3B            210 	lcall	__divuint
   23E8 AA 82               211 	mov	r2,dpl
   23EA AB 83               212 	mov	r3,dph
   23EC D0 05               213 	pop	ar5
   23EE D0 04               214 	pop	ar4
   23F0 7E 00               215 	mov	r6,#0x00
   23F2 7F 00               216 	mov	r7,#0x00
                            217 ;	DAC.c:14: for (i = 0; i < numCycles; i++) { 
   23F4 8C 00               218 	mov	ar0,r4
   23F6 8D 01               219 	mov	ar1,r5
   23F8 E4                  220 	clr	a
   23F9 F5 0A               221 	mov	_speaker_sloc0_1_0,a
   23FB F5 0B               222 	mov	(_speaker_sloc0_1_0 + 1),a
   23FD F5 0C               223 	mov	(_speaker_sloc0_1_0 + 2),a
   23FF F5 0D               224 	mov	(_speaker_sloc0_1_0 + 3),a
   2401                     225 00109$:
   2401 C3                  226 	clr	c
   2402 E5 0A               227 	mov	a,_speaker_sloc0_1_0
   2404 9A                  228 	subb	a,r2
   2405 E5 0B               229 	mov	a,(_speaker_sloc0_1_0 + 1)
   2407 9B                  230 	subb	a,r3
   2408 E5 0C               231 	mov	a,(_speaker_sloc0_1_0 + 2)
   240A 9E                  232 	subb	a,r6
   240B E5 0D               233 	mov	a,(_speaker_sloc0_1_0 + 3)
   240D 64 80               234 	xrl	a,#0x80
   240F 8F F0               235 	mov	b,r7
   2411 63 F0 80            236 	xrl	b,#0x80
   2414 95 F0               237 	subb	a,b
   2416 50 4F               238 	jnc	00113$
                            239 ;	DAC.c:15: dacWrite = 255;
   2418 90 FF E4            240 	mov	dptr,#_dacWrite
   241B 74 FF               241 	mov	a,#0xFF
   241D F0                  242 	movx	@dptr,a
                            243 ;	DAC.c:16: for(n = 0;n< note ;n++);
   241E E4                  244 	clr	a
   241F F5 0E               245 	mov	_speaker_sloc1_1_0,a
   2421 F5 0F               246 	mov	(_speaker_sloc1_1_0 + 1),a
   2423                     247 00101$:
   2423 C3                  248 	clr	c
   2424 E5 0E               249 	mov	a,_speaker_sloc1_1_0
   2426 98                  250 	subb	a,r0
   2427 E5 0F               251 	mov	a,(_speaker_sloc1_1_0 + 1)
   2429 99                  252 	subb	a,r1
   242A 50 0A               253 	jnc	00104$
   242C 05 0E               254 	inc	_speaker_sloc1_1_0
   242E E4                  255 	clr	a
   242F B5 0E F1            256 	cjne	a,_speaker_sloc1_1_0,00101$
   2432 05 0F               257 	inc	(_speaker_sloc1_1_0 + 1)
   2434 80 ED               258 	sjmp	00101$
   2436                     259 00104$:
                            260 ;	DAC.c:17: dacWrite = 0;
   2436 90 FF E4            261 	mov	dptr,#_dacWrite
   2439 E4                  262 	clr	a
   243A F0                  263 	movx	@dptr,a
                            264 ;	DAC.c:18: for(n = 0;n< note;n++);
   243B E4                  265 	clr	a
   243C F5 0E               266 	mov	_speaker_sloc1_1_0,a
   243E F5 0F               267 	mov	(_speaker_sloc1_1_0 + 1),a
   2440                     268 00105$:
   2440 C3                  269 	clr	c
   2441 E5 0E               270 	mov	a,_speaker_sloc1_1_0
   2443 9C                  271 	subb	a,r4
   2444 E5 0F               272 	mov	a,(_speaker_sloc1_1_0 + 1)
   2446 9D                  273 	subb	a,r5
   2447 50 0A               274 	jnc	00111$
   2449 05 0E               275 	inc	_speaker_sloc1_1_0
   244B E4                  276 	clr	a
   244C B5 0E F1            277 	cjne	a,_speaker_sloc1_1_0,00105$
   244F 05 0F               278 	inc	(_speaker_sloc1_1_0 + 1)
   2451 80 ED               279 	sjmp	00105$
   2453                     280 00111$:
                            281 ;	DAC.c:14: for (i = 0; i < numCycles; i++) { 
   2453 05 0A               282 	inc	_speaker_sloc0_1_0
   2455 E4                  283 	clr	a
   2456 B5 0A 0C            284 	cjne	a,_speaker_sloc0_1_0,00127$
   2459 05 0B               285 	inc	(_speaker_sloc0_1_0 + 1)
   245B B5 0B 07            286 	cjne	a,(_speaker_sloc0_1_0 + 1),00127$
   245E 05 0C               287 	inc	(_speaker_sloc0_1_0 + 2)
   2460 B5 0C 9E            288 	cjne	a,(_speaker_sloc0_1_0 + 2),00109$
   2463 05 0D               289 	inc	(_speaker_sloc0_1_0 + 3)
   2465                     290 00127$:
   2465 80 9A               291 	sjmp	00109$
   2467                     292 00113$:
   2467 22                  293 	ret
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
   2468                     306 _squareWave:
   2468 AA 83               307 	mov	r2,dph
   246A E5 82               308 	mov	a,dpl
   246C 90 02 E2            309 	mov	dptr,#_squareWave_note_1_1
   246F F0                  310 	movx	@dptr,a
   2470 A3                  311 	inc	dptr
   2471 EA                  312 	mov	a,r2
   2472 F0                  313 	movx	@dptr,a
                            314 ;	DAC.c:27: unsigned int noteDuration = 1000 / tempo;
   2473 90 02 E0            315 	mov	dptr,#_squareWave_PARM_2
   2476 E0                  316 	movx	a,@dptr
   2477 FA                  317 	mov	r2,a
   2478 A3                  318 	inc	dptr
   2479 E0                  319 	movx	a,@dptr
   247A FB                  320 	mov	r3,a
   247B 90 03 87            321 	mov	dptr,#__divuint_PARM_2
   247E EA                  322 	mov	a,r2
   247F F0                  323 	movx	@dptr,a
   2480 A3                  324 	inc	dptr
   2481 EB                  325 	mov	a,r3
   2482 F0                  326 	movx	@dptr,a
                            327 ;	DAC.c:30: speaker(note,noteDuration);  
   2483 90 03 E8            328 	mov	dptr,#0x03E8
   2486 12 32 3B            329 	lcall	__divuint
   2489 AA 82               330 	mov	r2,dpl
   248B AB 83               331 	mov	r3,dph
   248D 90 02 E2            332 	mov	dptr,#_squareWave_note_1_1
   2490 E0                  333 	movx	a,@dptr
   2491 FC                  334 	mov	r4,a
   2492 A3                  335 	inc	dptr
   2493 E0                  336 	movx	a,@dptr
   2494 FD                  337 	mov	r5,a
   2495 90 02 DC            338 	mov	dptr,#_speaker_PARM_2
   2498 EA                  339 	mov	a,r2
   2499 F0                  340 	movx	@dptr,a
   249A A3                  341 	inc	dptr
   249B EB                  342 	mov	a,r3
   249C F0                  343 	movx	@dptr,a
   249D 8C 82               344 	mov	dpl,r4
   249F 8D 83               345 	mov	dph,r5
   24A1 C0 02               346 	push	ar2
   24A3 C0 03               347 	push	ar3
   24A5 12 23 A5            348 	lcall	_speaker
   24A8 D0 03               349 	pop	ar3
   24AA D0 02               350 	pop	ar2
                            351 ;	DAC.c:35: speaker(PAUSE,noteDuration); 
   24AC 90 02 DC            352 	mov	dptr,#_speaker_PARM_2
   24AF EA                  353 	mov	a,r2
   24B0 F0                  354 	movx	@dptr,a
   24B1 A3                  355 	inc	dptr
   24B2 EB                  356 	mov	a,r3
   24B3 F0                  357 	movx	@dptr,a
   24B4 90 00 00            358 	mov	dptr,#0x0000
   24B7 02 23 A5            359 	ljmp	_speaker
                            360 ;------------------------------------------------------------
                            361 ;Allocation info for local variables in function 'sing'
                            362 ;------------------------------------------------------------
                            363 ;song                      Allocated with name '_sing_song_1_1'
                            364 ;------------------------------------------------------------
                            365 ;	DAC.c:41: void sing(unsigned char song) {
                            366 ;	-----------------------------------------
                            367 ;	 function sing
                            368 ;	-----------------------------------------
   24BA                     369 _sing:
   24BA E5 82               370 	mov	a,dpl
   24BC 90 02 E4            371 	mov	dptr,#_sing_song_1_1
   24BF F0                  372 	movx	@dptr,a
                            373 ;	DAC.c:44: if(song == 1){
   24C0 90 02 E4            374 	mov	dptr,#_sing_song_1_1
   24C3 E0                  375 	movx	a,@dptr
   24C4 FA                  376 	mov	r2,a
   24C5 BA 01 64            377 	cjne	r2,#0x01,00122$
                            378 ;	DAC.c:46: squareWave(adobe_melody[i],adobe_noteTime[i]);
   24C8 90 09 05            379 	mov	dptr,#_i
   24CB E0                  380 	movx	a,@dptr
   24CC FB                  381 	mov	r3,a
   24CD A3                  382 	inc	dptr
   24CE E0                  383 	movx	a,@dptr
   24CF FC                  384 	mov	r4,a
   24D0 8B 05               385 	mov	ar5,r3
   24D2 CD                  386 	xch	a,r5
   24D3 25 E0               387 	add	a,acc
   24D5 CD                  388 	xch	a,r5
   24D6 33                  389 	rlc	a
   24D7 FE                  390 	mov	r6,a
   24D8 ED                  391 	mov	a,r5
   24D9 24 C9               392 	add	a,#_adobe_melody
   24DB F5 82               393 	mov	dpl,a
   24DD EE                  394 	mov	a,r6
   24DE 34 08               395 	addc	a,#(_adobe_melody >> 8)
   24E0 F5 83               396 	mov	dph,a
   24E2 E0                  397 	movx	a,@dptr
   24E3 FD                  398 	mov	r5,a
   24E4 A3                  399 	inc	dptr
   24E5 E0                  400 	movx	a,@dptr
   24E6 FE                  401 	mov	r6,a
   24E7 EB                  402 	mov	a,r3
   24E8 24 E9               403 	add	a,#_adobe_noteTime
   24EA F5 82               404 	mov	dpl,a
   24EC EC                  405 	mov	a,r4
   24ED 34 08               406 	addc	a,#(_adobe_noteTime >> 8)
   24EF F5 83               407 	mov	dph,a
   24F1 E0                  408 	movx	a,@dptr
   24F2 90 02 E0            409 	mov	dptr,#_squareWave_PARM_2
   24F5 F0                  410 	movx	@dptr,a
   24F6 A3                  411 	inc	dptr
   24F7 E4                  412 	clr	a
   24F8 F0                  413 	movx	@dptr,a
   24F9 8D 82               414 	mov	dpl,r5
   24FB 8E 83               415 	mov	dph,r6
   24FD 12 24 68            416 	lcall	_squareWave
                            417 ;	DAC.c:48: if(i+1<(sizeof(adobe_melody)/sizeof(unsigned int)))
   2500 90 09 05            418 	mov	dptr,#_i
   2503 E0                  419 	movx	a,@dptr
   2504 FB                  420 	mov	r3,a
   2505 A3                  421 	inc	dptr
   2506 E0                  422 	movx	a,@dptr
   2507 FC                  423 	mov	r4,a
   2508 74 01               424 	mov	a,#0x01
   250A 2B                  425 	add	a,r3
   250B FD                  426 	mov	r5,a
   250C E4                  427 	clr	a
   250D 3C                  428 	addc	a,r4
   250E FE                  429 	mov	r6,a
   250F C3                  430 	clr	c
   2510 ED                  431 	mov	a,r5
   2511 94 10               432 	subb	a,#0x10
   2513 EE                  433 	mov	a,r6
   2514 94 00               434 	subb	a,#0x00
   2516 50 0C               435 	jnc	00102$
                            436 ;	DAC.c:49: i++;
   2518 90 09 05            437 	mov	dptr,#_i
   251B 74 01               438 	mov	a,#0x01
   251D 2B                  439 	add	a,r3
   251E F0                  440 	movx	@dptr,a
   251F E4                  441 	clr	a
   2520 3C                  442 	addc	a,r4
   2521 A3                  443 	inc	dptr
   2522 F0                  444 	movx	@dptr,a
   2523 22                  445 	ret
   2524                     446 00102$:
                            447 ;	DAC.c:51: i = 0;
   2524 90 09 05            448 	mov	dptr,#_i
   2527 E4                  449 	clr	a
   2528 F0                  450 	movx	@dptr,a
   2529 A3                  451 	inc	dptr
   252A F0                  452 	movx	@dptr,a
   252B 22                  453 	ret
   252C                     454 00122$:
                            455 ;	DAC.c:54: else if(song == 2){
   252C BA 02 64            456 	cjne	r2,#0x02,00119$
                            457 ;	DAC.c:55: squareWave(underworld_melody[i],underworld_noteTime[i]);
   252F 90 09 05            458 	mov	dptr,#_i
   2532 E0                  459 	movx	a,@dptr
   2533 FB                  460 	mov	r3,a
   2534 A3                  461 	inc	dptr
   2535 E0                  462 	movx	a,@dptr
   2536 FC                  463 	mov	r4,a
   2537 8B 05               464 	mov	ar5,r3
   2539 CD                  465 	xch	a,r5
   253A 25 E0               466 	add	a,acc
   253C CD                  467 	xch	a,r5
   253D 33                  468 	rlc	a
   253E FE                  469 	mov	r6,a
   253F ED                  470 	mov	a,r5
   2540 24 21               471 	add	a,#_underworld_melody
   2542 F5 82               472 	mov	dpl,a
   2544 EE                  473 	mov	a,r6
   2545 34 08               474 	addc	a,#(_underworld_melody >> 8)
   2547 F5 83               475 	mov	dph,a
   2549 E0                  476 	movx	a,@dptr
   254A FD                  477 	mov	r5,a
   254B A3                  478 	inc	dptr
   254C E0                  479 	movx	a,@dptr
   254D FE                  480 	mov	r6,a
   254E EB                  481 	mov	a,r3
   254F 24 91               482 	add	a,#_underworld_noteTime
   2551 F5 82               483 	mov	dpl,a
   2553 EC                  484 	mov	a,r4
   2554 34 08               485 	addc	a,#(_underworld_noteTime >> 8)
   2556 F5 83               486 	mov	dph,a
   2558 E0                  487 	movx	a,@dptr
   2559 90 02 E0            488 	mov	dptr,#_squareWave_PARM_2
   255C F0                  489 	movx	@dptr,a
   255D A3                  490 	inc	dptr
   255E E4                  491 	clr	a
   255F F0                  492 	movx	@dptr,a
   2560 8D 82               493 	mov	dpl,r5
   2562 8E 83               494 	mov	dph,r6
   2564 12 24 68            495 	lcall	_squareWave
                            496 ;	DAC.c:57: if(i+1<(sizeof(underworld_melody)/sizeof(unsigned int)))
   2567 90 09 05            497 	mov	dptr,#_i
   256A E0                  498 	movx	a,@dptr
   256B FB                  499 	mov	r3,a
   256C A3                  500 	inc	dptr
   256D E0                  501 	movx	a,@dptr
   256E FC                  502 	mov	r4,a
   256F 74 01               503 	mov	a,#0x01
   2571 2B                  504 	add	a,r3
   2572 FD                  505 	mov	r5,a
   2573 E4                  506 	clr	a
   2574 3C                  507 	addc	a,r4
   2575 FE                  508 	mov	r6,a
   2576 C3                  509 	clr	c
   2577 ED                  510 	mov	a,r5
   2578 94 38               511 	subb	a,#0x38
   257A EE                  512 	mov	a,r6
   257B 94 00               513 	subb	a,#0x00
   257D 50 0C               514 	jnc	00105$
                            515 ;	DAC.c:58: i++;
   257F 90 09 05            516 	mov	dptr,#_i
   2582 74 01               517 	mov	a,#0x01
   2584 2B                  518 	add	a,r3
   2585 F0                  519 	movx	@dptr,a
   2586 E4                  520 	clr	a
   2587 3C                  521 	addc	a,r4
   2588 A3                  522 	inc	dptr
   2589 F0                  523 	movx	@dptr,a
   258A 22                  524 	ret
   258B                     525 00105$:
                            526 ;	DAC.c:60: i = 0;
   258B 90 09 05            527 	mov	dptr,#_i
   258E E4                  528 	clr	a
   258F F0                  529 	movx	@dptr,a
   2590 A3                  530 	inc	dptr
   2591 F0                  531 	movx	@dptr,a
   2592 22                  532 	ret
   2593                     533 00119$:
                            534 ;	DAC.c:62: else if(song == 3){
   2593 BA 03 64            535 	cjne	r2,#0x03,00116$
                            536 ;	DAC.c:63: squareWave(mainMario_melody[i],mainMario_noteTime[i]);
   2596 90 09 05            537 	mov	dptr,#_i
   2599 E0                  538 	movx	a,@dptr
   259A FB                  539 	mov	r3,a
   259B A3                  540 	inc	dptr
   259C E0                  541 	movx	a,@dptr
   259D FC                  542 	mov	r4,a
   259E 8B 05               543 	mov	ar5,r3
   25A0 CD                  544 	xch	a,r5
   25A1 25 E0               545 	add	a,acc
   25A3 CD                  546 	xch	a,r5
   25A4 33                  547 	rlc	a
   25A5 FE                  548 	mov	r6,a
   25A6 ED                  549 	mov	a,r5
   25A7 24 37               550 	add	a,#_mainMario_melody
   25A9 F5 82               551 	mov	dpl,a
   25AB EE                  552 	mov	a,r6
   25AC 34 07               553 	addc	a,#(_mainMario_melody >> 8)
   25AE F5 83               554 	mov	dph,a
   25B0 E0                  555 	movx	a,@dptr
   25B1 FD                  556 	mov	r5,a
   25B2 A3                  557 	inc	dptr
   25B3 E0                  558 	movx	a,@dptr
   25B4 FE                  559 	mov	r6,a
   25B5 EB                  560 	mov	a,r3
   25B6 24 D3               561 	add	a,#_mainMario_noteTime
   25B8 F5 82               562 	mov	dpl,a
   25BA EC                  563 	mov	a,r4
   25BB 34 07               564 	addc	a,#(_mainMario_noteTime >> 8)
   25BD F5 83               565 	mov	dph,a
   25BF E0                  566 	movx	a,@dptr
   25C0 90 02 E0            567 	mov	dptr,#_squareWave_PARM_2
   25C3 F0                  568 	movx	@dptr,a
   25C4 A3                  569 	inc	dptr
   25C5 E4                  570 	clr	a
   25C6 F0                  571 	movx	@dptr,a
   25C7 8D 82               572 	mov	dpl,r5
   25C9 8E 83               573 	mov	dph,r6
   25CB 12 24 68            574 	lcall	_squareWave
                            575 ;	DAC.c:65: if(i+1<(sizeof(mainMario_melody)/sizeof(unsigned int)))
   25CE 90 09 05            576 	mov	dptr,#_i
   25D1 E0                  577 	movx	a,@dptr
   25D2 FB                  578 	mov	r3,a
   25D3 A3                  579 	inc	dptr
   25D4 E0                  580 	movx	a,@dptr
   25D5 FC                  581 	mov	r4,a
   25D6 74 01               582 	mov	a,#0x01
   25D8 2B                  583 	add	a,r3
   25D9 FD                  584 	mov	r5,a
   25DA E4                  585 	clr	a
   25DB 3C                  586 	addc	a,r4
   25DC FE                  587 	mov	r6,a
   25DD C3                  588 	clr	c
   25DE ED                  589 	mov	a,r5
   25DF 94 4E               590 	subb	a,#0x4E
   25E1 EE                  591 	mov	a,r6
   25E2 94 00               592 	subb	a,#0x00
   25E4 50 0C               593 	jnc	00108$
                            594 ;	DAC.c:66: i++;
   25E6 90 09 05            595 	mov	dptr,#_i
   25E9 74 01               596 	mov	a,#0x01
   25EB 2B                  597 	add	a,r3
   25EC F0                  598 	movx	@dptr,a
   25ED E4                  599 	clr	a
   25EE 3C                  600 	addc	a,r4
   25EF A3                  601 	inc	dptr
   25F0 F0                  602 	movx	@dptr,a
   25F1 22                  603 	ret
   25F2                     604 00108$:
                            605 ;	DAC.c:68: i = 0;
   25F2 90 09 05            606 	mov	dptr,#_i
   25F5 E4                  607 	clr	a
   25F6 F0                  608 	movx	@dptr,a
   25F7 A3                  609 	inc	dptr
   25F8 F0                  610 	movx	@dptr,a
   25F9 22                  611 	ret
   25FA                     612 00116$:
                            613 ;	DAC.c:70: else if(song == 4){
   25FA BA 04 5F            614 	cjne	r2,#0x04,00113$
                            615 ;	DAC.c:71: for( i =0;i<(sizeof(beep1_melody)/sizeof(int));i++)
   25FD 90 09 05            616 	mov	dptr,#_i
   2600 E4                  617 	clr	a
   2601 F0                  618 	movx	@dptr,a
   2602 A3                  619 	inc	dptr
   2603 F0                  620 	movx	@dptr,a
   2604                     621 00124$:
   2604 90 09 05            622 	mov	dptr,#_i
   2607 E0                  623 	movx	a,@dptr
   2608 FB                  624 	mov	r3,a
   2609 A3                  625 	inc	dptr
   260A E0                  626 	movx	a,@dptr
   260B FC                  627 	mov	r4,a
   260C C3                  628 	clr	c
   260D EB                  629 	mov	a,r3
   260E 94 02               630 	subb	a,#0x02
   2610 EC                  631 	mov	a,r4
   2611 94 00               632 	subb	a,#0x00
   2613 40 01               633 	jc	00157$
   2615 22                  634 	ret
   2616                     635 00157$:
                            636 ;	DAC.c:72: squareWave(beep1_melody[i],beep1_noteTime[i]);
   2616 8B 05               637 	mov	ar5,r3
   2618 EC                  638 	mov	a,r4
   2619 CD                  639 	xch	a,r5
   261A 25 E0               640 	add	a,acc
   261C CD                  641 	xch	a,r5
   261D 33                  642 	rlc	a
   261E FE                  643 	mov	r6,a
   261F ED                  644 	mov	a,r5
   2620 24 F9               645 	add	a,#_beep1_melody
   2622 F5 82               646 	mov	dpl,a
   2624 EE                  647 	mov	a,r6
   2625 34 08               648 	addc	a,#(_beep1_melody >> 8)
   2627 F5 83               649 	mov	dph,a
   2629 E0                  650 	movx	a,@dptr
   262A FD                  651 	mov	r5,a
   262B A3                  652 	inc	dptr
   262C E0                  653 	movx	a,@dptr
   262D FE                  654 	mov	r6,a
   262E EB                  655 	mov	a,r3
   262F 24 FD               656 	add	a,#_beep1_noteTime
   2631 F5 82               657 	mov	dpl,a
   2633 EC                  658 	mov	a,r4
   2634 34 08               659 	addc	a,#(_beep1_noteTime >> 8)
   2636 F5 83               660 	mov	dph,a
   2638 E0                  661 	movx	a,@dptr
   2639 90 02 E0            662 	mov	dptr,#_squareWave_PARM_2
   263C F0                  663 	movx	@dptr,a
   263D A3                  664 	inc	dptr
   263E E4                  665 	clr	a
   263F F0                  666 	movx	@dptr,a
   2640 8D 82               667 	mov	dpl,r5
   2642 8E 83               668 	mov	dph,r6
   2644 12 24 68            669 	lcall	_squareWave
                            670 ;	DAC.c:71: for( i =0;i<(sizeof(beep1_melody)/sizeof(int));i++)
   2647 90 09 05            671 	mov	dptr,#_i
   264A E0                  672 	movx	a,@dptr
   264B FB                  673 	mov	r3,a
   264C A3                  674 	inc	dptr
   264D E0                  675 	movx	a,@dptr
   264E FC                  676 	mov	r4,a
   264F 90 09 05            677 	mov	dptr,#_i
   2652 74 01               678 	mov	a,#0x01
   2654 2B                  679 	add	a,r3
   2655 F0                  680 	movx	@dptr,a
   2656 E4                  681 	clr	a
   2657 3C                  682 	addc	a,r4
   2658 A3                  683 	inc	dptr
   2659 F0                  684 	movx	@dptr,a
   265A 80 A8               685 	sjmp	00124$
   265C                     686 00113$:
                            687 ;	DAC.c:74: else if(song == 5){
   265C BA 05 5E            688 	cjne	r2,#0x05,00132$
                            689 ;	DAC.c:75: for( i =0;i<(sizeof(beep2_melody)/sizeof(int));i++)
   265F 90 09 05            690 	mov	dptr,#_i
   2662 E4                  691 	clr	a
   2663 F0                  692 	movx	@dptr,a
   2664 A3                  693 	inc	dptr
   2665 F0                  694 	movx	@dptr,a
   2666                     695 00128$:
   2666 90 09 05            696 	mov	dptr,#_i
   2669 E0                  697 	movx	a,@dptr
   266A FA                  698 	mov	r2,a
   266B A3                  699 	inc	dptr
   266C E0                  700 	movx	a,@dptr
   266D FB                  701 	mov	r3,a
   266E C3                  702 	clr	c
   266F EA                  703 	mov	a,r2
   2670 94 02               704 	subb	a,#0x02
   2672 EB                  705 	mov	a,r3
   2673 94 00               706 	subb	a,#0x00
   2675 50 46               707 	jnc	00132$
                            708 ;	DAC.c:76: squareWave(beep2_melody[i],beep2_noteTime[i]);
   2677 8A 04               709 	mov	ar4,r2
   2679 EB                  710 	mov	a,r3
   267A CC                  711 	xch	a,r4
   267B 25 E0               712 	add	a,acc
   267D CC                  713 	xch	a,r4
   267E 33                  714 	rlc	a
   267F FD                  715 	mov	r5,a
   2680 EC                  716 	mov	a,r4
   2681 24 FF               717 	add	a,#_beep2_melody
   2683 F5 82               718 	mov	dpl,a
   2685 ED                  719 	mov	a,r5
   2686 34 08               720 	addc	a,#(_beep2_melody >> 8)
   2688 F5 83               721 	mov	dph,a
   268A E0                  722 	movx	a,@dptr
   268B FC                  723 	mov	r4,a
   268C A3                  724 	inc	dptr
   268D E0                  725 	movx	a,@dptr
   268E FD                  726 	mov	r5,a
   268F EA                  727 	mov	a,r2
   2690 24 03               728 	add	a,#_beep2_noteTime
   2692 F5 82               729 	mov	dpl,a
   2694 EB                  730 	mov	a,r3
   2695 34 09               731 	addc	a,#(_beep2_noteTime >> 8)
   2697 F5 83               732 	mov	dph,a
   2699 E0                  733 	movx	a,@dptr
   269A 90 02 E0            734 	mov	dptr,#_squareWave_PARM_2
   269D F0                  735 	movx	@dptr,a
   269E A3                  736 	inc	dptr
   269F E4                  737 	clr	a
   26A0 F0                  738 	movx	@dptr,a
   26A1 8C 82               739 	mov	dpl,r4
   26A3 8D 83               740 	mov	dph,r5
   26A5 12 24 68            741 	lcall	_squareWave
                            742 ;	DAC.c:75: for( i =0;i<(sizeof(beep2_melody)/sizeof(int));i++)
   26A8 90 09 05            743 	mov	dptr,#_i
   26AB E0                  744 	movx	a,@dptr
   26AC FA                  745 	mov	r2,a
   26AD A3                  746 	inc	dptr
   26AE E0                  747 	movx	a,@dptr
   26AF FB                  748 	mov	r3,a
   26B0 90 09 05            749 	mov	dptr,#_i
   26B3 74 01               750 	mov	a,#0x01
   26B5 2A                  751 	add	a,r2
   26B6 F0                  752 	movx	@dptr,a
   26B7 E4                  753 	clr	a
   26B8 3B                  754 	addc	a,r3
   26B9 A3                  755 	inc	dptr
   26BA F0                  756 	movx	@dptr,a
   26BB 80 A9               757 	sjmp	00128$
   26BD                     758 00132$:
   26BD 22                  759 	ret
                            760 	.area CSEG    (CODE)
                            761 	.area CONST   (CODE)
                            762 	.area XINIT   (CODE)
   3894                     763 __xinit__mainMario_melody:
   3894 63 00               764 	.byte #0x63,#0x00
   3896 63 00               765 	.byte #0x63,#0x00
   3898 00 00               766 	.byte #0x00,#0x00
   389A 63 00               767 	.byte #0x63,#0x00
   389C 00 00               768 	.byte #0x00,#0x00
   389E 7D 00               769 	.byte #0x7D,#0x00
   38A0 63 00               770 	.byte #0x63,#0x00
   38A2 00 00               771 	.byte #0x00,#0x00
   38A4 54 00               772 	.byte #0x54,#0x00
   38A6 00 00               773 	.byte #0x00,#0x00
   38A8 00 00               774 	.byte #0x00,#0x00
   38AA 00 00               775 	.byte #0x00,#0x00
   38AC A7 00               776 	.byte #0xA7,#0x00
   38AE 00 00               777 	.byte #0x00,#0x00
   38B0 00 00               778 	.byte #0x00,#0x00
   38B2 00 00               779 	.byte #0x00,#0x00
   38B4 7D 00               780 	.byte #0x7D,#0x00
   38B6 00 00               781 	.byte #0x00,#0x00
   38B8 00 00               782 	.byte #0x00,#0x00
   38BA A7 00               783 	.byte #0xA7,#0x00
   38BC 00 00               784 	.byte #0x00,#0x00
   38BE 00 00               785 	.byte #0x00,#0x00
   38C0 C7 00               786 	.byte #0xC7,#0x00
   38C2 00 00               787 	.byte #0x00,#0x00
   38C4 00 00               788 	.byte #0x00,#0x00
   38C6 95 00               789 	.byte #0x95,#0x00
   38C8 00 00               790 	.byte #0x00,#0x00
   38CA 85 00               791 	.byte #0x85,#0x00
   38CC 00 00               792 	.byte #0x00,#0x00
   38CE 8D 00               793 	.byte #0x8D,#0x00
   38D0 95 00               794 	.byte #0x95,#0x00
   38D2 00 00               795 	.byte #0x00,#0x00
   38D4 A7 00               796 	.byte #0xA7,#0x00
   38D6 63 00               797 	.byte #0x63,#0x00
   38D8 54 00               798 	.byte #0x54,#0x00
   38DA 4B 00               799 	.byte #0x4B,#0x00
   38DC 00 00               800 	.byte #0x00,#0x00
   38DE 5E 00               801 	.byte #0x5E,#0x00
   38E0 54 00               802 	.byte #0x54,#0x00
   38E2 00 00               803 	.byte #0x00,#0x00
   38E4 63 00               804 	.byte #0x63,#0x00
   38E6 00 00               805 	.byte #0x00,#0x00
   38E8 7D 00               806 	.byte #0x7D,#0x00
   38EA 70 00               807 	.byte #0x70,#0x00
   38EC 85 00               808 	.byte #0x85,#0x00
   38EE 00 00               809 	.byte #0x00,#0x00
   38F0 00 00               810 	.byte #0x00,#0x00
   38F2 7D 00               811 	.byte #0x7D,#0x00
   38F4 00 00               812 	.byte #0x00,#0x00
   38F6 00 00               813 	.byte #0x00,#0x00
   38F8 A7 00               814 	.byte #0xA7,#0x00
   38FA 00 00               815 	.byte #0x00,#0x00
   38FC 00 00               816 	.byte #0x00,#0x00
   38FE C7 00               817 	.byte #0xC7,#0x00
   3900 00 00               818 	.byte #0x00,#0x00
   3902 00 00               819 	.byte #0x00,#0x00
   3904 95 00               820 	.byte #0x95,#0x00
   3906 00 00               821 	.byte #0x00,#0x00
   3908 85 00               822 	.byte #0x85,#0x00
   390A 00 00               823 	.byte #0x00,#0x00
   390C 8D 00               824 	.byte #0x8D,#0x00
   390E 95 00               825 	.byte #0x95,#0x00
   3910 00 00               826 	.byte #0x00,#0x00
   3912 A7 00               827 	.byte #0xA7,#0x00
   3914 63 00               828 	.byte #0x63,#0x00
   3916 54 00               829 	.byte #0x54,#0x00
   3918 4B 00               830 	.byte #0x4B,#0x00
   391A 00 00               831 	.byte #0x00,#0x00
   391C 5E 00               832 	.byte #0x5E,#0x00
   391E 54 00               833 	.byte #0x54,#0x00
   3920 00 00               834 	.byte #0x00,#0x00
   3922 63 00               835 	.byte #0x63,#0x00
   3924 00 00               836 	.byte #0x00,#0x00
   3926 7D 00               837 	.byte #0x7D,#0x00
   3928 70 00               838 	.byte #0x70,#0x00
   392A 85 00               839 	.byte #0x85,#0x00
   392C 00 00               840 	.byte #0x00,#0x00
   392E 00 00               841 	.byte #0x00,#0x00
   3930                     842 __xinit__mainMario_noteTime:
   3930 0F                  843 	.db #0x0F
   3931 0F                  844 	.db #0x0F
   3932 0F                  845 	.db #0x0F
   3933 0F                  846 	.db #0x0F
   3934 0F                  847 	.db #0x0F
   3935 0F                  848 	.db #0x0F
   3936 0F                  849 	.db #0x0F
   3937 0F                  850 	.db #0x0F
   3938 0F                  851 	.db #0x0F
   3939 0F                  852 	.db #0x0F
   393A 0F                  853 	.db #0x0F
   393B 0F                  854 	.db #0x0F
   393C 0F                  855 	.db #0x0F
   393D 0F                  856 	.db #0x0F
   393E 0F                  857 	.db #0x0F
   393F 0F                  858 	.db #0x0F
   3940 0F                  859 	.db #0x0F
   3941 0F                  860 	.db #0x0F
   3942 0F                  861 	.db #0x0F
   3943 0F                  862 	.db #0x0F
   3944 0F                  863 	.db #0x0F
   3945 0F                  864 	.db #0x0F
   3946 0F                  865 	.db #0x0F
   3947 0F                  866 	.db #0x0F
   3948 0F                  867 	.db #0x0F
   3949 0F                  868 	.db #0x0F
   394A 0F                  869 	.db #0x0F
   394B 0F                  870 	.db #0x0F
   394C 0F                  871 	.db #0x0F
   394D 0F                  872 	.db #0x0F
   394E 0F                  873 	.db #0x0F
   394F 0F                  874 	.db #0x0F
   3950 0C                  875 	.db #0x0C
   3951 0C                  876 	.db #0x0C
   3952 0C                  877 	.db #0x0C
   3953 0F                  878 	.db #0x0F
   3954 0F                  879 	.db #0x0F
   3955 0F                  880 	.db #0x0F
   3956 0F                  881 	.db #0x0F
   3957 0F                  882 	.db #0x0F
   3958 0F                  883 	.db #0x0F
   3959 0F                  884 	.db #0x0F
   395A 0F                  885 	.db #0x0F
   395B 0F                  886 	.db #0x0F
   395C 0F                  887 	.db #0x0F
   395D 0F                  888 	.db #0x0F
   395E 0F                  889 	.db #0x0F
   395F 0F                  890 	.db #0x0F
   3960 0F                  891 	.db #0x0F
   3961 0F                  892 	.db #0x0F
   3962 0F                  893 	.db #0x0F
   3963 0F                  894 	.db #0x0F
   3964 0F                  895 	.db #0x0F
   3965 0F                  896 	.db #0x0F
   3966 0F                  897 	.db #0x0F
   3967 0F                  898 	.db #0x0F
   3968 0F                  899 	.db #0x0F
   3969 0F                  900 	.db #0x0F
   396A 0F                  901 	.db #0x0F
   396B 0F                  902 	.db #0x0F
   396C 0F                  903 	.db #0x0F
   396D 0F                  904 	.db #0x0F
   396E 0F                  905 	.db #0x0F
   396F 0C                  906 	.db #0x0C
   3970 0C                  907 	.db #0x0C
   3971 0C                  908 	.db #0x0C
   3972 0F                  909 	.db #0x0F
   3973 0F                  910 	.db #0x0F
   3974 0F                  911 	.db #0x0F
   3975 0F                  912 	.db #0x0F
   3976 0F                  913 	.db #0x0F
   3977 0F                  914 	.db #0x0F
   3978 0F                  915 	.db #0x0F
   3979 0F                  916 	.db #0x0F
   397A 0F                  917 	.db #0x0F
   397B 0F                  918 	.db #0x0F
   397C 0F                  919 	.db #0x0F
   397D 0F                  920 	.db #0x0F
   397E                     921 __xinit__underworld_melody:
   397E FB 00               922 	.byte #0xFB,#0x00
   3980 7D 00               923 	.byte #0x7D,#0x00
   3982 2A 01               924 	.byte #0x2A,#0x01
   3984 95 00               925 	.byte #0x95,#0x00
   3986 1A 01               926 	.byte #0x1A,#0x01
   3988 8D 00               927 	.byte #0x8D,#0x00
   398A 00 00               928 	.byte #0x00,#0x00
   398C 00 00               929 	.byte #0x00,#0x00
   398E FB 00               930 	.byte #0xFB,#0x00
   3990 7D 00               931 	.byte #0x7D,#0x00
   3992 2A 01               932 	.byte #0x2A,#0x01
   3994 95 00               933 	.byte #0x95,#0x00
   3996 1A 01               934 	.byte #0x1A,#0x01
   3998 8D 00               935 	.byte #0x8D,#0x00
   399A 00 00               936 	.byte #0x00,#0x00
   399C 00 00               937 	.byte #0x00,#0x00
   399E 78 01               938 	.byte #0x78,#0x01
   39A0 BC 00               939 	.byte #0xBC,#0x00
   39A2 BF 01               940 	.byte #0xBF,#0x01
   39A4 DF 00               941 	.byte #0xDF,#0x00
   39A6 A6 01               942 	.byte #0xA6,#0x01
   39A8 D3 00               943 	.byte #0xD3,#0x00
   39AA 00 00               944 	.byte #0x00,#0x00
   39AC 00 00               945 	.byte #0x00,#0x00
   39AE 78 01               946 	.byte #0x78,#0x01
   39B0 BC 00               947 	.byte #0xBC,#0x00
   39B2 BF 01               948 	.byte #0xBF,#0x01
   39B4 DF 00               949 	.byte #0xDF,#0x00
   39B6 A6 01               950 	.byte #0xA6,#0x01
   39B8 D3 00               951 	.byte #0xD3,#0x00
   39BA 00 00               952 	.byte #0x00,#0x00
   39BC 00 00               953 	.byte #0x00,#0x00
   39BE D3 00               954 	.byte #0xD3,#0x00
   39C0 ED 00               955 	.byte #0xED,#0x00
   39C2 DF 00               956 	.byte #0xDF,#0x00
   39C4 ED 00               957 	.byte #0xED,#0x00
   39C6 D3 00               958 	.byte #0xD3,#0x00
   39C8 D3 00               959 	.byte #0xD3,#0x00
   39CA 3C 01               960 	.byte #0x3C,#0x01
   39CC 4F 01               961 	.byte #0x4F,#0x01
   39CE ED 00               962 	.byte #0xED,#0x00
   39D0 FB 00               963 	.byte #0xFB,#0x00
   39D2 B1 00               964 	.byte #0xB1,#0x00
   39D4 BC 00               965 	.byte #0xBC,#0x00
   39D6 8E 01               966 	.byte #0x8E,#0x01
   39D8 8D 00               967 	.byte #0x8D,#0x00
   39DA 95 00               968 	.byte #0x95,#0x00
   39DC 9E 00               969 	.byte #0x9E,#0x00
   39DE D3 00               970 	.byte #0xD3,#0x00
   39E0 0A 01               971 	.byte #0x0A,#0x01
   39E2 1A 01               972 	.byte #0x1A,#0x01
   39E4 2A 01               973 	.byte #0x2A,#0x01
   39E6 3C 01               974 	.byte #0x3C,#0x01
   39E8 00 00               975 	.byte #0x00,#0x00
   39EA 00 00               976 	.byte #0x00,#0x00
   39EC 00 00               977 	.byte #0x00,#0x00
   39EE                     978 __xinit__underworld_noteTime:
   39EE 0C                  979 	.db #0x0C
   39EF 0C                  980 	.db #0x0C
   39F0 0C                  981 	.db #0x0C
   39F1 0C                  982 	.db #0x0C
   39F2 0C                  983 	.db #0x0C
   39F3 0C                  984 	.db #0x0C
   39F4 06                  985 	.db #0x06
   39F5 03                  986 	.db #0x03
   39F6 0C                  987 	.db #0x0C
   39F7 0C                  988 	.db #0x0C
   39F8 0C                  989 	.db #0x0C
   39F9 0C                  990 	.db #0x0C
   39FA 0C                  991 	.db #0x0C
   39FB 0C                  992 	.db #0x0C
   39FC 06                  993 	.db #0x06
   39FD 03                  994 	.db #0x03
   39FE 0C                  995 	.db #0x0C
   39FF 0C                  996 	.db #0x0C
   3A00 0C                  997 	.db #0x0C
   3A01 0C                  998 	.db #0x0C
   3A02 0C                  999 	.db #0x0C
   3A03 0C                 1000 	.db #0x0C
   3A04 06                 1001 	.db #0x06
   3A05 03                 1002 	.db #0x03
   3A06 0C                 1003 	.db #0x0C
   3A07 0C                 1004 	.db #0x0C
   3A08 0C                 1005 	.db #0x0C
   3A09 0C                 1006 	.db #0x0C
   3A0A 0C                 1007 	.db #0x0C
   3A0B 0C                 1008 	.db #0x0C
   3A0C 06                 1009 	.db #0x06
   3A0D 06                 1010 	.db #0x06
   3A0E 12                 1011 	.db #0x12
   3A0F 12                 1012 	.db #0x12
   3A10 12                 1013 	.db #0x12
   3A11 06                 1014 	.db #0x06
   3A12 06                 1015 	.db #0x06
   3A13 06                 1016 	.db #0x06
   3A14 06                 1017 	.db #0x06
   3A15 06                 1018 	.db #0x06
   3A16 06                 1019 	.db #0x06
   3A17 12                 1020 	.db #0x12
   3A18 12                 1021 	.db #0x12
   3A19 12                 1022 	.db #0x12
   3A1A 12                 1023 	.db #0x12
   3A1B 12                 1024 	.db #0x12
   3A1C 12                 1025 	.db #0x12
   3A1D 0A                 1026 	.db #0x0A
   3A1E 0A                 1027 	.db #0x0A
   3A1F 0A                 1028 	.db #0x0A
   3A20 0A                 1029 	.db #0x0A
   3A21 0A                 1030 	.db #0x0A
   3A22 0A                 1031 	.db #0x0A
   3A23 03                 1032 	.db #0x03
   3A24 03                 1033 	.db #0x03
   3A25 03                 1034 	.db #0x03
   3A26                    1035 __xinit__adobe_melody:
   3A26 85 00              1036 	.byte #0x85,#0x00
   3A28 85 00              1037 	.byte #0x85,#0x00
   3A2A 00 00              1038 	.byte #0x00,#0x00
   3A2C 85 00              1039 	.byte #0x85,#0x00
   3A2E 70 00              1040 	.byte #0x70,#0x00
   3A30 70 00              1041 	.byte #0x70,#0x00
   3A32 00 00              1042 	.byte #0x00,#0x00
   3A34 70 00              1043 	.byte #0x70,#0x00
   3A36 95 00              1044 	.byte #0x95,#0x00
   3A38 95 00              1045 	.byte #0x95,#0x00
   3A3A 00 00              1046 	.byte #0x00,#0x00
   3A3C 95 00              1047 	.byte #0x95,#0x00
   3A3E 85 00              1048 	.byte #0x85,#0x00
   3A40 85 00              1049 	.byte #0x85,#0x00
   3A42 00 00              1050 	.byte #0x00,#0x00
   3A44 00 00              1051 	.byte #0x00,#0x00
   3A46                    1052 __xinit__adobe_noteTime:
   3A46 06                 1053 	.db #0x06
   3A47 06                 1054 	.db #0x06
   3A48 06                 1055 	.db #0x06
   3A49 06                 1056 	.db #0x06
   3A4A 06                 1057 	.db #0x06
   3A4B 06                 1058 	.db #0x06
   3A4C 06                 1059 	.db #0x06
   3A4D 06                 1060 	.db #0x06
   3A4E 06                 1061 	.db #0x06
   3A4F 06                 1062 	.db #0x06
   3A50 06                 1063 	.db #0x06
   3A51 06                 1064 	.db #0x06
   3A52 06                 1065 	.db #0x06
   3A53 06                 1066 	.db #0x06
   3A54 06                 1067 	.db #0x06
   3A55 06                 1068 	.db #0x06
   3A56                    1069 __xinit__beep1_melody:
   3A56 FB 00              1070 	.byte #0xFB,#0x00
   3A58 00 00              1071 	.byte #0x00,#0x00
   3A5A                    1072 __xinit__beep1_noteTime:
   3A5A 06                 1073 	.db #0x06
   3A5B 0C                 1074 	.db #0x0C
   3A5C                    1075 __xinit__beep2_melody:
   3A5C ED 00              1076 	.byte #0xED,#0x00
   3A5E 00 00              1077 	.byte #0x00,#0x00
   3A60                    1078 __xinit__beep2_noteTime:
   3A60 06                 1079 	.db #0x06
   3A61 0C                 1080 	.db #0x0C
   3A62                    1081 __xinit__i:
   3A62 00 00              1082 	.byte #0x00,#0x00
                           1083 	.area CABS    (ABS,CODE)
