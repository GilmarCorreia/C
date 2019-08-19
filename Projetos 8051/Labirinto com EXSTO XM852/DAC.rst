                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Mon Aug 19 00:21:25 2019
                              5 ;--------------------------------------------------------
                              6 	.module DAC
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _squareWave
                             13 	.globl _speaker
                             14 	.globl _adobe_noteTime
                             15 	.globl _adobe_melody
                             16 	.globl _underworld_noteTime
                             17 	.globl _underworld_melody
                             18 	.globl _mainMario_noteTime
                             19 	.globl _mainMario_melody
                             20 	.globl _squareWave_PARM_2
                             21 	.globl _speaker_PARM_2
                             22 	.globl _Timer0
                             23 	.globl _sing
                             24 ;--------------------------------------------------------
                             25 ; special function registers
                             26 ;--------------------------------------------------------
                             27 	.area RSEG    (DATA)
                             28 ;--------------------------------------------------------
                             29 ; special function bits
                             30 ;--------------------------------------------------------
                             31 	.area RSEG    (DATA)
                             32 ;--------------------------------------------------------
                             33 ; overlayable register banks
                             34 ;--------------------------------------------------------
                             35 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      36 	.ds 8
                             37 ;--------------------------------------------------------
                             38 ; internal ram data
                             39 ;--------------------------------------------------------
                             40 	.area DSEG    (DATA)
   0017                      41 _speaker_sloc0_1_0:
   0017                      42 	.ds 4
                             43 ;--------------------------------------------------------
                             44 ; overlayable items in internal ram 
                             45 ;--------------------------------------------------------
                             46 	.area OSEG    (OVR,DATA)
                             47 ;--------------------------------------------------------
                             48 ; indirectly addressable internal ram data
                             49 ;--------------------------------------------------------
                             50 	.area ISEG    (DATA)
                             51 ;--------------------------------------------------------
                             52 ; absolute internal ram data
                             53 ;--------------------------------------------------------
                             54 	.area IABS    (ABS,DATA)
                             55 	.area IABS    (ABS,DATA)
                             56 ;--------------------------------------------------------
                             57 ; bit data
                             58 ;--------------------------------------------------------
                             59 	.area BSEG    (BIT)
                             60 ;--------------------------------------------------------
                             61 ; paged external ram data
                             62 ;--------------------------------------------------------
                             63 	.area PSEG    (PAG,XDATA)
                             64 ;--------------------------------------------------------
                             65 ; external ram data
                             66 ;--------------------------------------------------------
                             67 	.area XSEG    (XDATA)
                    FFC4     68 _dacWrite	=	0xffc4
   0372                      69 _Timer0::
   0372                      70 	.ds 7
   0379                      71 _speaker_PARM_2:
   0379                      72 	.ds 2
   037B                      73 _speaker_note_1_1:
   037B                      74 	.ds 2
   037D                      75 _squareWave_PARM_2:
   037D                      76 	.ds 2
   037F                      77 _squareWave_note_1_1:
   037F                      78 	.ds 2
   0381                      79 _sing_song_1_1:
   0381                      80 	.ds 1
                             81 ;--------------------------------------------------------
                             82 ; absolute external ram data
                             83 ;--------------------------------------------------------
                             84 	.area XABS    (ABS,XDATA)
                             85 ;--------------------------------------------------------
                             86 ; external initialized ram data
                             87 ;--------------------------------------------------------
                             88 	.area XISEG   (XDATA)
   039A                      89 _mainMario_melody::
   039A                      90 	.ds 156
   0436                      91 _mainMario_noteTime::
   0436                      92 	.ds 78
   0484                      93 _underworld_melody::
   0484                      94 	.ds 112
   04F4                      95 _underworld_noteTime::
   04F4                      96 	.ds 56
   052C                      97 _adobe_melody::
   052C                      98 	.ds 32
   054C                      99 _adobe_noteTime::
   054C                     100 	.ds 16
                            101 	.area HOME    (CODE)
                            102 	.area GSINIT0 (CODE)
                            103 	.area GSINIT1 (CODE)
                            104 	.area GSINIT2 (CODE)
                            105 	.area GSINIT3 (CODE)
                            106 	.area GSINIT4 (CODE)
                            107 	.area GSINIT5 (CODE)
                            108 	.area GSINIT  (CODE)
                            109 	.area GSFINAL (CODE)
                            110 	.area CSEG    (CODE)
                            111 ;--------------------------------------------------------
                            112 ; global & static initialisations
                            113 ;--------------------------------------------------------
                            114 	.area HOME    (CODE)
                            115 	.area GSINIT  (CODE)
                            116 	.area GSFINAL (CODE)
                            117 	.area GSINIT  (CODE)
                            118 ;--------------------------------------------------------
                            119 ; Home
                            120 ;--------------------------------------------------------
                            121 	.area HOME    (CODE)
                            122 	.area HOME    (CODE)
                            123 ;--------------------------------------------------------
                            124 ; code
                            125 ;--------------------------------------------------------
                            126 	.area CSEG    (CODE)
                            127 ;------------------------------------------------------------
                            128 ;Allocation info for local variables in function 'speaker'
                            129 ;------------------------------------------------------------
                            130 ;sloc0                     Allocated with name '_speaker_sloc0_1_0'
                            131 ;noteDuration              Allocated with name '_speaker_PARM_2'
                            132 ;note                      Allocated with name '_speaker_note_1_1'
                            133 ;delayValue                Allocated with name '_speaker_delayValue_1_1'
                            134 ;numCycles                 Allocated with name '_speaker_numCycles_1_1'
                            135 ;i                         Allocated with name '_speaker_i_1_1'
                            136 ;------------------------------------------------------------
                            137 ;	DAC.c:117: void speaker(unsigned int note, unsigned int noteDuration){
                            138 ;	-----------------------------------------
                            139 ;	 function speaker
                            140 ;	-----------------------------------------
   2FC4                     141 _speaker:
                    0002    142 	ar2 = 0x02
                    0003    143 	ar3 = 0x03
                    0004    144 	ar4 = 0x04
                    0005    145 	ar5 = 0x05
                    0006    146 	ar6 = 0x06
                    0007    147 	ar7 = 0x07
                    0000    148 	ar0 = 0x00
                    0001    149 	ar1 = 0x01
   2FC4 AA 83               150 	mov	r2,dph
   2FC6 E5 82               151 	mov	a,dpl
   2FC8 90 03 7B            152 	mov	dptr,#_speaker_note_1_1
   2FCB F0                  153 	movx	@dptr,a
   2FCC A3                  154 	inc	dptr
   2FCD EA                  155 	mov	a,r2
   2FCE F0                  156 	movx	@dptr,a
                            157 ;	DAC.c:118: long delayValue = 1000000 / note / 2; 
   2FCF 90 03 7B            158 	mov	dptr,#_speaker_note_1_1
   2FD2 E0                  159 	movx	a,@dptr
   2FD3 FA                  160 	mov	r2,a
   2FD4 A3                  161 	inc	dptr
   2FD5 E0                  162 	movx	a,@dptr
   2FD6 FB                  163 	mov	r3,a
                            164 ;	DAC.c:119: long numCycles = note * noteDuration / 1000; 
   2FD7 90 03 79            165 	mov	dptr,#_speaker_PARM_2
   2FDA E0                  166 	movx	a,@dptr
   2FDB FC                  167 	mov	r4,a
   2FDC A3                  168 	inc	dptr
   2FDD E0                  169 	movx	a,@dptr
   2FDE FD                  170 	mov	r5,a
   2FDF 90 03 8C            171 	mov	dptr,#__mulint_PARM_2
   2FE2 EC                  172 	mov	a,r4
   2FE3 F0                  173 	movx	@dptr,a
   2FE4 A3                  174 	inc	dptr
   2FE5 ED                  175 	mov	a,r5
   2FE6 F0                  176 	movx	@dptr,a
   2FE7 8A 82               177 	mov	dpl,r2
   2FE9 8B 83               178 	mov	dph,r3
   2FEB C0 02               179 	push	ar2
   2FED C0 03               180 	push	ar3
   2FEF 12 34 22            181 	lcall	__mulint
   2FF2 AC 82               182 	mov	r4,dpl
   2FF4 AD 83               183 	mov	r5,dph
   2FF6 90 03 85            184 	mov	dptr,#__divuint_PARM_2
   2FF9 74 E8               185 	mov	a,#0xE8
   2FFB F0                  186 	movx	@dptr,a
   2FFC A3                  187 	inc	dptr
   2FFD 74 03               188 	mov	a,#0x03
   2FFF F0                  189 	movx	@dptr,a
   3000 8C 82               190 	mov	dpl,r4
   3002 8D 83               191 	mov	dph,r5
   3004 12 32 75            192 	lcall	__divuint
   3007 AC 82               193 	mov	r4,dpl
   3009 AD 83               194 	mov	r5,dph
   300B D0 03               195 	pop	ar3
   300D D0 02               196 	pop	ar2
                            197 ;	DAC.c:122: for (i = 0; i < numCycles; i++) { 
   300F E4                  198 	clr	a
   3010 FE                  199 	mov	r6,a
   3011 FF                  200 	mov	r7,a
   3012 F5 17               201 	mov	_speaker_sloc0_1_0,a
   3014 F5 18               202 	mov	(_speaker_sloc0_1_0 + 1),a
   3016 F5 19               203 	mov	(_speaker_sloc0_1_0 + 2),a
   3018 F5 1A               204 	mov	(_speaker_sloc0_1_0 + 3),a
   301A                     205 00101$:
   301A C3                  206 	clr	c
   301B E5 17               207 	mov	a,_speaker_sloc0_1_0
   301D 9C                  208 	subb	a,r4
   301E E5 18               209 	mov	a,(_speaker_sloc0_1_0 + 1)
   3020 9D                  210 	subb	a,r5
   3021 E5 19               211 	mov	a,(_speaker_sloc0_1_0 + 2)
   3023 9E                  212 	subb	a,r6
   3024 E5 1A               213 	mov	a,(_speaker_sloc0_1_0 + 3)
   3026 64 80               214 	xrl	a,#0x80
   3028 8F F0               215 	mov	b,r7
   302A 63 F0 80            216 	xrl	b,#0x80
   302D 95 F0               217 	subb	a,b
   302F 50 66               218 	jnc	00105$
                            219 ;	DAC.c:123: dacWrite = 255;
   3031 90 FF C4            220 	mov	dptr,#_dacWrite
   3034 74 FF               221 	mov	a,#0xFF
   3036 F0                  222 	movx	@dptr,a
                            223 ;	DAC.c:124: delay(note,0);
   3037 90 02 D0            224 	mov	dptr,#_delay_PARM_2
   303A E4                  225 	clr	a
   303B F0                  226 	movx	@dptr,a
   303C 8A 82               227 	mov	dpl,r2
   303E 8B 83               228 	mov	dph,r3
   3040 C0 02               229 	push	ar2
   3042 C0 03               230 	push	ar3
   3044 C0 04               231 	push	ar4
   3046 C0 05               232 	push	ar5
   3048 C0 06               233 	push	ar6
   304A C0 07               234 	push	ar7
   304C 12 23 09            235 	lcall	_delay
   304F D0 07               236 	pop	ar7
   3051 D0 06               237 	pop	ar6
   3053 D0 05               238 	pop	ar5
   3055 D0 04               239 	pop	ar4
   3057 D0 03               240 	pop	ar3
   3059 D0 02               241 	pop	ar2
                            242 ;	DAC.c:125: dacWrite = 0;
   305B 90 FF C4            243 	mov	dptr,#_dacWrite
                            244 ;	DAC.c:126: delay(note,0);
   305E E4                  245 	clr	a
   305F F0                  246 	movx	@dptr,a
   3060 90 02 D0            247 	mov	dptr,#_delay_PARM_2
   3063 F0                  248 	movx	@dptr,a
   3064 8A 82               249 	mov	dpl,r2
   3066 8B 83               250 	mov	dph,r3
   3068 C0 02               251 	push	ar2
   306A C0 03               252 	push	ar3
   306C C0 04               253 	push	ar4
   306E C0 05               254 	push	ar5
   3070 C0 06               255 	push	ar6
   3072 C0 07               256 	push	ar7
   3074 12 23 09            257 	lcall	_delay
   3077 D0 07               258 	pop	ar7
   3079 D0 06               259 	pop	ar6
   307B D0 05               260 	pop	ar5
   307D D0 04               261 	pop	ar4
   307F D0 03               262 	pop	ar3
   3081 D0 02               263 	pop	ar2
                            264 ;	DAC.c:122: for (i = 0; i < numCycles; i++) { 
   3083 05 17               265 	inc	_speaker_sloc0_1_0
   3085 E4                  266 	clr	a
   3086 B5 17 0C            267 	cjne	a,_speaker_sloc0_1_0,00111$
   3089 05 18               268 	inc	(_speaker_sloc0_1_0 + 1)
   308B B5 18 07            269 	cjne	a,(_speaker_sloc0_1_0 + 1),00111$
   308E 05 19               270 	inc	(_speaker_sloc0_1_0 + 2)
   3090 B5 19 87            271 	cjne	a,(_speaker_sloc0_1_0 + 2),00101$
   3093 05 1A               272 	inc	(_speaker_sloc0_1_0 + 3)
   3095                     273 00111$:
   3095 80 83               274 	sjmp	00101$
   3097                     275 00105$:
   3097 22                  276 	ret
                            277 ;------------------------------------------------------------
                            278 ;Allocation info for local variables in function 'squareWave'
                            279 ;------------------------------------------------------------
                            280 ;tempo                     Allocated with name '_squareWave_PARM_2'
                            281 ;note                      Allocated with name '_squareWave_note_1_1'
                            282 ;noteDuration              Allocated with name '_squareWave_noteDuration_1_1'
                            283 ;pauseBetweenNotes         Allocated with name '_squareWave_pauseBetweenNotes_1_1'
                            284 ;------------------------------------------------------------
                            285 ;	DAC.c:130: void squareWave(unsigned int note, unsigned int tempo){
                            286 ;	-----------------------------------------
                            287 ;	 function squareWave
                            288 ;	-----------------------------------------
   3098                     289 _squareWave:
   3098 AA 83               290 	mov	r2,dph
   309A E5 82               291 	mov	a,dpl
   309C 90 03 7F            292 	mov	dptr,#_squareWave_note_1_1
   309F F0                  293 	movx	@dptr,a
   30A0 A3                  294 	inc	dptr
   30A1 EA                  295 	mov	a,r2
   30A2 F0                  296 	movx	@dptr,a
                            297 ;	DAC.c:132: unsigned int noteDuration = 1000 / tempo;
   30A3 90 03 7D            298 	mov	dptr,#_squareWave_PARM_2
   30A6 E0                  299 	movx	a,@dptr
   30A7 FA                  300 	mov	r2,a
   30A8 A3                  301 	inc	dptr
   30A9 E0                  302 	movx	a,@dptr
   30AA FB                  303 	mov	r3,a
   30AB 90 03 85            304 	mov	dptr,#__divuint_PARM_2
   30AE EA                  305 	mov	a,r2
   30AF F0                  306 	movx	@dptr,a
   30B0 A3                  307 	inc	dptr
   30B1 EB                  308 	mov	a,r3
   30B2 F0                  309 	movx	@dptr,a
                            310 ;	DAC.c:135: speaker(note,noteDuration);  
   30B3 90 03 E8            311 	mov	dptr,#0x03E8
   30B6 12 32 75            312 	lcall	__divuint
   30B9 AA 82               313 	mov	r2,dpl
   30BB AB 83               314 	mov	r3,dph
   30BD 90 03 7F            315 	mov	dptr,#_squareWave_note_1_1
   30C0 E0                  316 	movx	a,@dptr
   30C1 FC                  317 	mov	r4,a
   30C2 A3                  318 	inc	dptr
   30C3 E0                  319 	movx	a,@dptr
   30C4 FD                  320 	mov	r5,a
   30C5 90 03 79            321 	mov	dptr,#_speaker_PARM_2
   30C8 EA                  322 	mov	a,r2
   30C9 F0                  323 	movx	@dptr,a
   30CA A3                  324 	inc	dptr
   30CB EB                  325 	mov	a,r3
   30CC F0                  326 	movx	@dptr,a
   30CD 8C 82               327 	mov	dpl,r4
   30CF 8D 83               328 	mov	dph,r5
   30D1 C0 02               329 	push	ar2
   30D3 C0 03               330 	push	ar3
   30D5 12 2F C4            331 	lcall	_speaker
   30D8 D0 03               332 	pop	ar3
   30DA D0 02               333 	pop	ar2
                            334 ;	DAC.c:137: pauseBetweenNotes = noteDuration * 1.30;
   30DC 8A 82               335 	mov	dpl,r2
   30DE 8B 83               336 	mov	dph,r3
   30E0 C0 02               337 	push	ar2
   30E2 C0 03               338 	push	ar3
   30E4 12 35 67            339 	lcall	___uint2fs
   30E7 AC 82               340 	mov	r4,dpl
   30E9 AD 83               341 	mov	r5,dph
   30EB AE F0               342 	mov	r6,b
   30ED FF                  343 	mov	r7,a
   30EE C0 04               344 	push	ar4
   30F0 C0 05               345 	push	ar5
   30F2 C0 06               346 	push	ar6
   30F4 C0 07               347 	push	ar7
   30F6 90 66 66            348 	mov	dptr,#0x6666
   30F9 75 F0 A6            349 	mov	b,#0xA6
   30FC 74 3F               350 	mov	a,#0x3F
   30FE 12 33 0F            351 	lcall	___fsmul
   3101 AC 82               352 	mov	r4,dpl
   3103 AD 83               353 	mov	r5,dph
   3105 AE F0               354 	mov	r6,b
   3107 FF                  355 	mov	r7,a
   3108 E5 81               356 	mov	a,sp
   310A 24 FC               357 	add	a,#0xfc
   310C F5 81               358 	mov	sp,a
   310E 8C 82               359 	mov	dpl,r4
   3110 8D 83               360 	mov	dph,r5
   3112 8E F0               361 	mov	b,r6
   3114 EF                  362 	mov	a,r7
   3115 12 35 73            363 	lcall	___fs2uint
   3118 AC 82               364 	mov	r4,dpl
   311A AD 83               365 	mov	r5,dph
                            366 ;	DAC.c:138: delay(pauseBetweenNotes,1);
   311C 90 02 D0            367 	mov	dptr,#_delay_PARM_2
   311F 74 01               368 	mov	a,#0x01
   3121 F0                  369 	movx	@dptr,a
   3122 8C 82               370 	mov	dpl,r4
   3124 8D 83               371 	mov	dph,r5
   3126 12 23 09            372 	lcall	_delay
   3129 D0 03               373 	pop	ar3
   312B D0 02               374 	pop	ar2
                            375 ;	DAC.c:140: speaker(PAUSE,noteDuration); 
   312D 90 03 79            376 	mov	dptr,#_speaker_PARM_2
   3130 EA                  377 	mov	a,r2
   3131 F0                  378 	movx	@dptr,a
   3132 A3                  379 	inc	dptr
   3133 EB                  380 	mov	a,r3
   3134 F0                  381 	movx	@dptr,a
   3135 90 00 00            382 	mov	dptr,#0x0000
   3138 02 2F C4            383 	ljmp	_speaker
                            384 ;------------------------------------------------------------
                            385 ;Allocation info for local variables in function 'sing'
                            386 ;------------------------------------------------------------
                            387 ;song                      Allocated with name '_sing_song_1_1'
                            388 ;i                         Allocated with name '_sing_i_1_1'
                            389 ;------------------------------------------------------------
                            390 ;	DAC.c:145: void sing(unsigned char song) {
                            391 ;	-----------------------------------------
                            392 ;	 function sing
                            393 ;	-----------------------------------------
   313B                     394 _sing:
   313B E5 82               395 	mov	a,dpl
   313D 90 03 81            396 	mov	dptr,#_sing_song_1_1
   3140 F0                  397 	movx	@dptr,a
                            398 ;	DAC.c:148: if(song == 1){
   3141 90 03 81            399 	mov	dptr,#_sing_song_1_1
   3144 E0                  400 	movx	a,@dptr
   3145 FA                  401 	mov	r2,a
   3146 BA 01 4D            402 	cjne	r2,#0x01,00102$
                            403 ;	DAC.c:149: for( i=0;i<(sizeof(adobe_melody)/sizeof(int));i++)
   3149 7A 00               404 	mov	r2,#0x00
   314B 7B 00               405 	mov	r3,#0x00
   314D                     406 00107$:
   314D C3                  407 	clr	c
   314E EA                  408 	mov	a,r2
   314F 94 10               409 	subb	a,#0x10
   3151 EB                  410 	mov	a,r3
   3152 94 00               411 	subb	a,#0x00
   3154 50 40               412 	jnc	00102$
                            413 ;	DAC.c:150: squareWave(adobe_melody[i],adobe_noteTime[i]);
   3156 8A 04               414 	mov	ar4,r2
   3158 EB                  415 	mov	a,r3
   3159 CC                  416 	xch	a,r4
   315A 25 E0               417 	add	a,acc
   315C CC                  418 	xch	a,r4
   315D 33                  419 	rlc	a
   315E FD                  420 	mov	r5,a
   315F EC                  421 	mov	a,r4
   3160 24 2C               422 	add	a,#_adobe_melody
   3162 F5 82               423 	mov	dpl,a
   3164 ED                  424 	mov	a,r5
   3165 34 05               425 	addc	a,#(_adobe_melody >> 8)
   3167 F5 83               426 	mov	dph,a
   3169 E0                  427 	movx	a,@dptr
   316A FC                  428 	mov	r4,a
   316B A3                  429 	inc	dptr
   316C E0                  430 	movx	a,@dptr
   316D FD                  431 	mov	r5,a
   316E EA                  432 	mov	a,r2
   316F 24 4C               433 	add	a,#_adobe_noteTime
   3171 F5 82               434 	mov	dpl,a
   3173 EB                  435 	mov	a,r3
   3174 34 05               436 	addc	a,#(_adobe_noteTime >> 8)
   3176 F5 83               437 	mov	dph,a
   3178 E0                  438 	movx	a,@dptr
   3179 90 03 7D            439 	mov	dptr,#_squareWave_PARM_2
   317C F0                  440 	movx	@dptr,a
   317D A3                  441 	inc	dptr
   317E E4                  442 	clr	a
   317F F0                  443 	movx	@dptr,a
   3180 8C 82               444 	mov	dpl,r4
   3182 8D 83               445 	mov	dph,r5
   3184 C0 02               446 	push	ar2
   3186 C0 03               447 	push	ar3
   3188 12 30 98            448 	lcall	_squareWave
   318B D0 03               449 	pop	ar3
   318D D0 02               450 	pop	ar2
                            451 ;	DAC.c:149: for( i=0;i<(sizeof(adobe_melody)/sizeof(int));i++)
   318F 0A                  452 	inc	r2
   3190 BA 00 BA            453 	cjne	r2,#0x00,00107$
   3193 0B                  454 	inc	r3
   3194 80 B7               455 	sjmp	00107$
   3196                     456 00102$:
                            457 ;	DAC.c:152: if(song == 2){
   3196 90 03 81            458 	mov	dptr,#_sing_song_1_1
   3199 E0                  459 	movx	a,@dptr
   319A FA                  460 	mov	r2,a
   319B BA 02 4D            461 	cjne	r2,#0x02,00104$
                            462 ;	DAC.c:153: for(i =0;i<(sizeof(underworld_melody)/sizeof(int));i++)
   319E 7A 00               463 	mov	r2,#0x00
   31A0 7B 00               464 	mov	r3,#0x00
   31A2                     465 00111$:
   31A2 C3                  466 	clr	c
   31A3 EA                  467 	mov	a,r2
   31A4 94 38               468 	subb	a,#0x38
   31A6 EB                  469 	mov	a,r3
   31A7 94 00               470 	subb	a,#0x00
   31A9 50 40               471 	jnc	00104$
                            472 ;	DAC.c:154: squareWave(underworld_melody[i],underworld_noteTime[i]);
   31AB 8A 04               473 	mov	ar4,r2
   31AD EB                  474 	mov	a,r3
   31AE CC                  475 	xch	a,r4
   31AF 25 E0               476 	add	a,acc
   31B1 CC                  477 	xch	a,r4
   31B2 33                  478 	rlc	a
   31B3 FD                  479 	mov	r5,a
   31B4 EC                  480 	mov	a,r4
   31B5 24 84               481 	add	a,#_underworld_melody
   31B7 F5 82               482 	mov	dpl,a
   31B9 ED                  483 	mov	a,r5
   31BA 34 04               484 	addc	a,#(_underworld_melody >> 8)
   31BC F5 83               485 	mov	dph,a
   31BE E0                  486 	movx	a,@dptr
   31BF FC                  487 	mov	r4,a
   31C0 A3                  488 	inc	dptr
   31C1 E0                  489 	movx	a,@dptr
   31C2 FD                  490 	mov	r5,a
   31C3 EA                  491 	mov	a,r2
   31C4 24 F4               492 	add	a,#_underworld_noteTime
   31C6 F5 82               493 	mov	dpl,a
   31C8 EB                  494 	mov	a,r3
   31C9 34 04               495 	addc	a,#(_underworld_noteTime >> 8)
   31CB F5 83               496 	mov	dph,a
   31CD E0                  497 	movx	a,@dptr
   31CE 90 03 7D            498 	mov	dptr,#_squareWave_PARM_2
   31D1 F0                  499 	movx	@dptr,a
   31D2 A3                  500 	inc	dptr
   31D3 E4                  501 	clr	a
   31D4 F0                  502 	movx	@dptr,a
   31D5 8C 82               503 	mov	dpl,r4
   31D7 8D 83               504 	mov	dph,r5
   31D9 C0 02               505 	push	ar2
   31DB C0 03               506 	push	ar3
   31DD 12 30 98            507 	lcall	_squareWave
   31E0 D0 03               508 	pop	ar3
   31E2 D0 02               509 	pop	ar2
                            510 ;	DAC.c:153: for(i =0;i<(sizeof(underworld_melody)/sizeof(int));i++)
   31E4 0A                  511 	inc	r2
   31E5 BA 00 BA            512 	cjne	r2,#0x00,00111$
   31E8 0B                  513 	inc	r3
   31E9 80 B7               514 	sjmp	00111$
   31EB                     515 00104$:
                            516 ;	DAC.c:156: if(song == 3){
   31EB 90 03 81            517 	mov	dptr,#_sing_song_1_1
   31EE E0                  518 	movx	a,@dptr
   31EF FA                  519 	mov	r2,a
   31F0 BA 03 4D            520 	cjne	r2,#0x03,00119$
                            521 ;	DAC.c:157: for( i =0;i<(sizeof(mainMario_melody)/sizeof(int));i++)
   31F3 7A 00               522 	mov	r2,#0x00
   31F5 7B 00               523 	mov	r3,#0x00
   31F7                     524 00115$:
   31F7 C3                  525 	clr	c
   31F8 EA                  526 	mov	a,r2
   31F9 94 4E               527 	subb	a,#0x4E
   31FB EB                  528 	mov	a,r3
   31FC 94 00               529 	subb	a,#0x00
   31FE 50 40               530 	jnc	00119$
                            531 ;	DAC.c:158: squareWave(mainMario_melody[i],mainMario_noteTime[i]);
   3200 8A 04               532 	mov	ar4,r2
   3202 EB                  533 	mov	a,r3
   3203 CC                  534 	xch	a,r4
   3204 25 E0               535 	add	a,acc
   3206 CC                  536 	xch	a,r4
   3207 33                  537 	rlc	a
   3208 FD                  538 	mov	r5,a
   3209 EC                  539 	mov	a,r4
   320A 24 9A               540 	add	a,#_mainMario_melody
   320C F5 82               541 	mov	dpl,a
   320E ED                  542 	mov	a,r5
   320F 34 03               543 	addc	a,#(_mainMario_melody >> 8)
   3211 F5 83               544 	mov	dph,a
   3213 E0                  545 	movx	a,@dptr
   3214 FC                  546 	mov	r4,a
   3215 A3                  547 	inc	dptr
   3216 E0                  548 	movx	a,@dptr
   3217 FD                  549 	mov	r5,a
   3218 EA                  550 	mov	a,r2
   3219 24 36               551 	add	a,#_mainMario_noteTime
   321B F5 82               552 	mov	dpl,a
   321D EB                  553 	mov	a,r3
   321E 34 04               554 	addc	a,#(_mainMario_noteTime >> 8)
   3220 F5 83               555 	mov	dph,a
   3222 E0                  556 	movx	a,@dptr
   3223 90 03 7D            557 	mov	dptr,#_squareWave_PARM_2
   3226 F0                  558 	movx	@dptr,a
   3227 A3                  559 	inc	dptr
   3228 E4                  560 	clr	a
   3229 F0                  561 	movx	@dptr,a
   322A 8C 82               562 	mov	dpl,r4
   322C 8D 83               563 	mov	dph,r5
   322E C0 02               564 	push	ar2
   3230 C0 03               565 	push	ar3
   3232 12 30 98            566 	lcall	_squareWave
   3235 D0 03               567 	pop	ar3
   3237 D0 02               568 	pop	ar2
                            569 ;	DAC.c:157: for( i =0;i<(sizeof(mainMario_melody)/sizeof(int));i++)
   3239 0A                  570 	inc	r2
   323A BA 00 BA            571 	cjne	r2,#0x00,00115$
   323D 0B                  572 	inc	r3
   323E 80 B7               573 	sjmp	00115$
   3240                     574 00119$:
   3240 22                  575 	ret
                            576 	.area CSEG    (CODE)
                            577 	.area CONST   (CODE)
                            578 	.area XINIT   (CODE)
   376B                     579 __xinit__mainMario_melody:
   376B 4D 0A               580 	.byte #0x4D,#0x0A
   376D 4D 0A               581 	.byte #0x4D,#0x0A
   376F 00 00               582 	.byte #0x00,#0x00
   3771 4D 0A               583 	.byte #0x4D,#0x0A
   3773 00 00               584 	.byte #0x00,#0x00
   3775 2D 08               585 	.byte #0x2D,#0x08
   3777 4D 0A               586 	.byte #0x4D,#0x0A
   3779 00 00               587 	.byte #0x00,#0x00
   377B 40 0C               588 	.byte #0x40,#0x0C
   377D 00 00               589 	.byte #0x00,#0x00
   377F 00 00               590 	.byte #0x00,#0x00
   3781 00 00               591 	.byte #0x00,#0x00
   3783 20 06               592 	.byte #0x20,#0x06
   3785 00 00               593 	.byte #0x00,#0x00
   3787 00 00               594 	.byte #0x00,#0x00
   3789 00 00               595 	.byte #0x00,#0x00
   378B 2D 08               596 	.byte #0x2D,#0x08
   378D 00 00               597 	.byte #0x00,#0x00
   378F 00 00               598 	.byte #0x00,#0x00
   3791 20 06               599 	.byte #0x20,#0x06
   3793 00 00               600 	.byte #0x00,#0x00
   3795 00 00               601 	.byte #0x00,#0x00
   3797 27 05               602 	.byte #0x27,#0x05
   3799 00 00               603 	.byte #0x00,#0x00
   379B 00 00               604 	.byte #0x00,#0x00
   379D E0 06               605 	.byte #0xE0,#0x06
   379F 00 00               606 	.byte #0x00,#0x00
   37A1 B8 07               607 	.byte #0xB8,#0x07
   37A3 00 00               608 	.byte #0x00,#0x00
   37A5 49 07               609 	.byte #0x49,#0x07
   37A7 E0 06               610 	.byte #0xE0,#0x06
   37A9 00 00               611 	.byte #0x00,#0x00
   37AB 20 06               612 	.byte #0x20,#0x06
   37AD 4D 0A               613 	.byte #0x4D,#0x0A
   37AF 40 0C               614 	.byte #0x40,#0x0C
   37B1 C0 0D               615 	.byte #0xC0,#0x0D
   37B3 00 00               616 	.byte #0x00,#0x00
   37B5 EA 0A               617 	.byte #0xEA,#0x0A
   37B7 40 0C               618 	.byte #0x40,#0x0C
   37B9 00 00               619 	.byte #0x00,#0x00
   37BB 4D 0A               620 	.byte #0x4D,#0x0A
   37BD 00 00               621 	.byte #0x00,#0x00
   37BF 2D 08               622 	.byte #0x2D,#0x08
   37C1 2D 09               623 	.byte #0x2D,#0x09
   37C3 B8 07               624 	.byte #0xB8,#0x07
   37C5 00 00               625 	.byte #0x00,#0x00
   37C7 00 00               626 	.byte #0x00,#0x00
   37C9 2D 08               627 	.byte #0x2D,#0x08
   37CB 00 00               628 	.byte #0x00,#0x00
   37CD 00 00               629 	.byte #0x00,#0x00
   37CF 20 06               630 	.byte #0x20,#0x06
   37D1 00 00               631 	.byte #0x00,#0x00
   37D3 00 00               632 	.byte #0x00,#0x00
   37D5 27 05               633 	.byte #0x27,#0x05
   37D7 00 00               634 	.byte #0x00,#0x00
   37D9 00 00               635 	.byte #0x00,#0x00
   37DB E0 06               636 	.byte #0xE0,#0x06
   37DD 00 00               637 	.byte #0x00,#0x00
   37DF B8 07               638 	.byte #0xB8,#0x07
   37E1 00 00               639 	.byte #0x00,#0x00
   37E3 49 07               640 	.byte #0x49,#0x07
   37E5 E0 06               641 	.byte #0xE0,#0x06
   37E7 00 00               642 	.byte #0x00,#0x00
   37E9 20 06               643 	.byte #0x20,#0x06
   37EB 4D 0A               644 	.byte #0x4D,#0x0A
   37ED 40 0C               645 	.byte #0x40,#0x0C
   37EF C0 0D               646 	.byte #0xC0,#0x0D
   37F1 00 00               647 	.byte #0x00,#0x00
   37F3 EA 0A               648 	.byte #0xEA,#0x0A
   37F5 40 0C               649 	.byte #0x40,#0x0C
   37F7 00 00               650 	.byte #0x00,#0x00
   37F9 4D 0A               651 	.byte #0x4D,#0x0A
   37FB 00 00               652 	.byte #0x00,#0x00
   37FD 2D 08               653 	.byte #0x2D,#0x08
   37FF 2D 09               654 	.byte #0x2D,#0x09
   3801 B8 07               655 	.byte #0xB8,#0x07
   3803 00 00               656 	.byte #0x00,#0x00
   3805 00 00               657 	.byte #0x00,#0x00
   3807                     658 __xinit__mainMario_noteTime:
   3807 0C                  659 	.db #0x0C
   3808 0C                  660 	.db #0x0C
   3809 0C                  661 	.db #0x0C
   380A 0C                  662 	.db #0x0C
   380B 0C                  663 	.db #0x0C
   380C 0C                  664 	.db #0x0C
   380D 0C                  665 	.db #0x0C
   380E 0C                  666 	.db #0x0C
   380F 0C                  667 	.db #0x0C
   3810 0C                  668 	.db #0x0C
   3811 0C                  669 	.db #0x0C
   3812 0C                  670 	.db #0x0C
   3813 0C                  671 	.db #0x0C
   3814 0C                  672 	.db #0x0C
   3815 0C                  673 	.db #0x0C
   3816 0C                  674 	.db #0x0C
   3817 0C                  675 	.db #0x0C
   3818 0C                  676 	.db #0x0C
   3819 0C                  677 	.db #0x0C
   381A 0C                  678 	.db #0x0C
   381B 0C                  679 	.db #0x0C
   381C 0C                  680 	.db #0x0C
   381D 0C                  681 	.db #0x0C
   381E 0C                  682 	.db #0x0C
   381F 0C                  683 	.db #0x0C
   3820 0C                  684 	.db #0x0C
   3821 0C                  685 	.db #0x0C
   3822 0C                  686 	.db #0x0C
   3823 0C                  687 	.db #0x0C
   3824 0C                  688 	.db #0x0C
   3825 0C                  689 	.db #0x0C
   3826 0C                  690 	.db #0x0C
   3827 09                  691 	.db #0x09
   3828 09                  692 	.db #0x09
   3829 09                  693 	.db #0x09
   382A 0C                  694 	.db #0x0C
   382B 0C                  695 	.db #0x0C
   382C 0C                  696 	.db #0x0C
   382D 0C                  697 	.db #0x0C
   382E 0C                  698 	.db #0x0C
   382F 0C                  699 	.db #0x0C
   3830 0C                  700 	.db #0x0C
   3831 0C                  701 	.db #0x0C
   3832 0C                  702 	.db #0x0C
   3833 0C                  703 	.db #0x0C
   3834 0C                  704 	.db #0x0C
   3835 0C                  705 	.db #0x0C
   3836 0C                  706 	.db #0x0C
   3837 0C                  707 	.db #0x0C
   3838 0C                  708 	.db #0x0C
   3839 0C                  709 	.db #0x0C
   383A 0C                  710 	.db #0x0C
   383B 0C                  711 	.db #0x0C
   383C 0C                  712 	.db #0x0C
   383D 0C                  713 	.db #0x0C
   383E 0C                  714 	.db #0x0C
   383F 0C                  715 	.db #0x0C
   3840 0C                  716 	.db #0x0C
   3841 0C                  717 	.db #0x0C
   3842 0C                  718 	.db #0x0C
   3843 0C                  719 	.db #0x0C
   3844 0C                  720 	.db #0x0C
   3845 0C                  721 	.db #0x0C
   3846 09                  722 	.db #0x09
   3847 09                  723 	.db #0x09
   3848 09                  724 	.db #0x09
   3849 0C                  725 	.db #0x0C
   384A 0C                  726 	.db #0x0C
   384B 0C                  727 	.db #0x0C
   384C 0C                  728 	.db #0x0C
   384D 0C                  729 	.db #0x0C
   384E 0C                  730 	.db #0x0C
   384F 0C                  731 	.db #0x0C
   3850 0C                  732 	.db #0x0C
   3851 0C                  733 	.db #0x0C
   3852 0C                  734 	.db #0x0C
   3853 0C                  735 	.db #0x0C
   3854 0C                  736 	.db #0x0C
   3855                     737 __xinit__underworld_melody:
   3855 06 01               738 	.byte #0x06,#0x01
   3857 0B 02               739 	.byte #0x0B,#0x02
   3859 DC 00               740 	.byte #0xDC,#0x00
   385B B8 01               741 	.byte #0xB8,#0x01
   385D E9 00               742 	.byte #0xE9,#0x00
   385F D2 01               743 	.byte #0xD2,#0x01
   3861 00 00               744 	.byte #0x00,#0x00
   3863 00 00               745 	.byte #0x00,#0x00
   3865 06 01               746 	.byte #0x06,#0x01
   3867 0B 02               747 	.byte #0x0B,#0x02
   3869 DC 00               748 	.byte #0xDC,#0x00
   386B B8 01               749 	.byte #0xB8,#0x01
   386D E9 00               750 	.byte #0xE9,#0x00
   386F D2 01               751 	.byte #0xD2,#0x01
   3871 00 00               752 	.byte #0x00,#0x00
   3873 00 00               753 	.byte #0x00,#0x00
   3875 AF 00               754 	.byte #0xAF,#0x00
   3877 5D 01               755 	.byte #0x5D,#0x01
   3879 93 00               756 	.byte #0x93,#0x00
   387B 26 01               757 	.byte #0x26,#0x01
   387D 9C 00               758 	.byte #0x9C,#0x00
   387F 37 01               759 	.byte #0x37,#0x01
   3881 00 00               760 	.byte #0x00,#0x00
   3883 00 00               761 	.byte #0x00,#0x00
   3885 AF 00               762 	.byte #0xAF,#0x00
   3887 5D 01               763 	.byte #0x5D,#0x01
   3889 93 00               764 	.byte #0x93,#0x00
   388B 26 01               765 	.byte #0x26,#0x01
   388D 9C 00               766 	.byte #0x9C,#0x00
   388F 37 01               767 	.byte #0x37,#0x01
   3891 00 00               768 	.byte #0x00,#0x00
   3893 00 00               769 	.byte #0x00,#0x00
   3895 37 01               770 	.byte #0x37,#0x01
   3897 15 01               771 	.byte #0x15,#0x01
   3899 26 01               772 	.byte #0x26,#0x01
   389B 15 01               773 	.byte #0x15,#0x01
   389D 37 01               774 	.byte #0x37,#0x01
   389F 37 01               775 	.byte #0x37,#0x01
   38A1 D0 00               776 	.byte #0xD0,#0x00
   38A3 C4 00               777 	.byte #0xC4,#0x00
   38A5 15 01               778 	.byte #0x15,#0x01
   38A7 06 01               779 	.byte #0x06,#0x01
   38A9 72 01               780 	.byte #0x72,#0x01
   38AB 5D 01               781 	.byte #0x5D,#0x01
   38AD A5 00               782 	.byte #0xA5,#0x00
   38AF D2 01               783 	.byte #0xD2,#0x01
   38B1 B8 01               784 	.byte #0xB8,#0x01
   38B3 9F 01               785 	.byte #0x9F,#0x01
   38B5 37 01               786 	.byte #0x37,#0x01
   38B7 F7 00               787 	.byte #0xF7,#0x00
   38B9 E9 00               788 	.byte #0xE9,#0x00
   38BB DC 00               789 	.byte #0xDC,#0x00
   38BD D0 00               790 	.byte #0xD0,#0x00
   38BF 00 00               791 	.byte #0x00,#0x00
   38C1 00 00               792 	.byte #0x00,#0x00
   38C3 00 00               793 	.byte #0x00,#0x00
   38C5                     794 __xinit__underworld_noteTime:
   38C5 0C                  795 	.db #0x0C
   38C6 0C                  796 	.db #0x0C
   38C7 0C                  797 	.db #0x0C
   38C8 0C                  798 	.db #0x0C
   38C9 0C                  799 	.db #0x0C
   38CA 0C                  800 	.db #0x0C
   38CB 06                  801 	.db #0x06
   38CC 03                  802 	.db #0x03
   38CD 0C                  803 	.db #0x0C
   38CE 0C                  804 	.db #0x0C
   38CF 0C                  805 	.db #0x0C
   38D0 0C                  806 	.db #0x0C
   38D1 0C                  807 	.db #0x0C
   38D2 0C                  808 	.db #0x0C
   38D3 06                  809 	.db #0x06
   38D4 03                  810 	.db #0x03
   38D5 0C                  811 	.db #0x0C
   38D6 0C                  812 	.db #0x0C
   38D7 0C                  813 	.db #0x0C
   38D8 0C                  814 	.db #0x0C
   38D9 0C                  815 	.db #0x0C
   38DA 0C                  816 	.db #0x0C
   38DB 06                  817 	.db #0x06
   38DC 03                  818 	.db #0x03
   38DD 0C                  819 	.db #0x0C
   38DE 0C                  820 	.db #0x0C
   38DF 0C                  821 	.db #0x0C
   38E0 0C                  822 	.db #0x0C
   38E1 0C                  823 	.db #0x0C
   38E2 0C                  824 	.db #0x0C
   38E3 06                  825 	.db #0x06
   38E4 06                  826 	.db #0x06
   38E5 12                  827 	.db #0x12
   38E6 12                  828 	.db #0x12
   38E7 12                  829 	.db #0x12
   38E8 06                  830 	.db #0x06
   38E9 06                  831 	.db #0x06
   38EA 06                  832 	.db #0x06
   38EB 06                  833 	.db #0x06
   38EC 06                  834 	.db #0x06
   38ED 06                  835 	.db #0x06
   38EE 12                  836 	.db #0x12
   38EF 12                  837 	.db #0x12
   38F0 12                  838 	.db #0x12
   38F1 12                  839 	.db #0x12
   38F2 12                  840 	.db #0x12
   38F3 12                  841 	.db #0x12
   38F4 0A                  842 	.db #0x0A
   38F5 0A                  843 	.db #0x0A
   38F6 0A                  844 	.db #0x0A
   38F7 0A                  845 	.db #0x0A
   38F8 0A                  846 	.db #0x0A
   38F9 0A                  847 	.db #0x0A
   38FA 03                  848 	.db #0x03
   38FB 03                  849 	.db #0x03
   38FC 03                  850 	.db #0x03
   38FD                     851 __xinit__adobe_melody:
   38FD EE 01               852 	.byte #0xEE,#0x01
   38FF EE 01               853 	.byte #0xEE,#0x01
   3901 00 00               854 	.byte #0x00,#0x00
   3903 EE 01               855 	.byte #0xEE,#0x01
   3905 4B 02               856 	.byte #0x4B,#0x02
   3907 4B 02               857 	.byte #0x4B,#0x02
   3909 00 00               858 	.byte #0x00,#0x00
   390B 4B 02               859 	.byte #0x4B,#0x02
   390D B8 01               860 	.byte #0xB8,#0x01
   390F B8 01               861 	.byte #0xB8,#0x01
   3911 00 00               862 	.byte #0x00,#0x00
   3913 B8 01               863 	.byte #0xB8,#0x01
   3915 EE 01               864 	.byte #0xEE,#0x01
   3917 EE 01               865 	.byte #0xEE,#0x01
   3919 00 00               866 	.byte #0x00,#0x00
   391B 00 00               867 	.byte #0x00,#0x00
   391D                     868 __xinit__adobe_noteTime:
   391D 0C                  869 	.db #0x0C
   391E 0C                  870 	.db #0x0C
   391F 0C                  871 	.db #0x0C
   3920 0C                  872 	.db #0x0C
   3921 0C                  873 	.db #0x0C
   3922 0C                  874 	.db #0x0C
   3923 0C                  875 	.db #0x0C
   3924 0C                  876 	.db #0x0C
   3925 0C                  877 	.db #0x0C
   3926 0C                  878 	.db #0x0C
   3927 0C                  879 	.db #0x0C
   3928 0C                  880 	.db #0x0C
   3929 0C                  881 	.db #0x0C
   392A 0C                  882 	.db #0x0C
   392B 0C                  883 	.db #0x0C
   392C 0C                  884 	.db #0x0C
                            885 	.area CABS    (ABS,CODE)
