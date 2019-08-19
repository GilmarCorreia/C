;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
; This file was generated Mon Aug 19 00:21:25 2019
;--------------------------------------------------------
	.module DAC
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _squareWave
	.globl _speaker
	.globl _adobe_noteTime
	.globl _adobe_melody
	.globl _underworld_noteTime
	.globl _underworld_melody
	.globl _mainMario_noteTime
	.globl _mainMario_melody
	.globl _squareWave_PARM_2
	.globl _speaker_PARM_2
	.globl _Timer0
	.globl _sing
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_speaker_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_dacWrite	=	0xffc4
_Timer0::
	.ds 7
_speaker_PARM_2:
	.ds 2
_speaker_note_1_1:
	.ds 2
_squareWave_PARM_2:
	.ds 2
_squareWave_note_1_1:
	.ds 2
_sing_song_1_1:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_mainMario_melody::
	.ds 156
_mainMario_noteTime::
	.ds 78
_underworld_melody::
	.ds 112
_underworld_noteTime::
	.ds 56
_adobe_melody::
	.ds 32
_adobe_noteTime::
	.ds 16
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'speaker'
;------------------------------------------------------------
;sloc0                     Allocated with name '_speaker_sloc0_1_0'
;noteDuration              Allocated with name '_speaker_PARM_2'
;note                      Allocated with name '_speaker_note_1_1'
;delayValue                Allocated with name '_speaker_delayValue_1_1'
;numCycles                 Allocated with name '_speaker_numCycles_1_1'
;i                         Allocated with name '_speaker_i_1_1'
;------------------------------------------------------------
;	DAC.c:117: void speaker(unsigned int note, unsigned int noteDuration){
;	-----------------------------------------
;	 function speaker
;	-----------------------------------------
_speaker:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_speaker_note_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	DAC.c:118: long delayValue = 1000000 / note / 2; 
	mov	dptr,#_speaker_note_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	DAC.c:119: long numCycles = note * noteDuration / 1000; 
	mov	dptr,#_speaker_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#__divuint_PARM_2
	mov	a,#0xE8
	movx	@dptr,a
	inc	dptr
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	__divuint
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
;	DAC.c:122: for (i = 0; i < numCycles; i++) { 
	clr	a
	mov	r6,a
	mov	r7,a
	mov	_speaker_sloc0_1_0,a
	mov	(_speaker_sloc0_1_0 + 1),a
	mov	(_speaker_sloc0_1_0 + 2),a
	mov	(_speaker_sloc0_1_0 + 3),a
00101$:
	clr	c
	mov	a,_speaker_sloc0_1_0
	subb	a,r4
	mov	a,(_speaker_sloc0_1_0 + 1)
	subb	a,r5
	mov	a,(_speaker_sloc0_1_0 + 2)
	subb	a,r6
	mov	a,(_speaker_sloc0_1_0 + 3)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	DAC.c:123: dacWrite = 255;
	mov	dptr,#_dacWrite
	mov	a,#0xFF
	movx	@dptr,a
;	DAC.c:124: delay(note,0);
	mov	dptr,#_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_delay
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	DAC.c:125: dacWrite = 0;
	mov	dptr,#_dacWrite
;	DAC.c:126: delay(note,0);
	clr	a
	movx	@dptr,a
	mov	dptr,#_delay_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_delay
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	DAC.c:122: for (i = 0; i < numCycles; i++) { 
	inc	_speaker_sloc0_1_0
	clr	a
	cjne	a,_speaker_sloc0_1_0,00111$
	inc	(_speaker_sloc0_1_0 + 1)
	cjne	a,(_speaker_sloc0_1_0 + 1),00111$
	inc	(_speaker_sloc0_1_0 + 2)
	cjne	a,(_speaker_sloc0_1_0 + 2),00101$
	inc	(_speaker_sloc0_1_0 + 3)
00111$:
	sjmp	00101$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'squareWave'
;------------------------------------------------------------
;tempo                     Allocated with name '_squareWave_PARM_2'
;note                      Allocated with name '_squareWave_note_1_1'
;noteDuration              Allocated with name '_squareWave_noteDuration_1_1'
;pauseBetweenNotes         Allocated with name '_squareWave_pauseBetweenNotes_1_1'
;------------------------------------------------------------
;	DAC.c:130: void squareWave(unsigned int note, unsigned int tempo){
;	-----------------------------------------
;	 function squareWave
;	-----------------------------------------
_squareWave:
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_squareWave_note_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	DAC.c:132: unsigned int noteDuration = 1000 / tempo;
	mov	dptr,#_squareWave_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__divuint_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	DAC.c:135: speaker(note,noteDuration);  
	mov	dptr,#0x03E8
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
	mov	dptr,#_squareWave_note_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_speaker_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar2
	push	ar3
	lcall	_speaker
	pop	ar3
	pop	ar2
;	DAC.c:137: pauseBetweenNotes = noteDuration * 1.30;
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x6666
	mov	b,#0xA6
	mov	a,#0x3F
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	r4,dpl
	mov	r5,dph
;	DAC.c:138: delay(pauseBetweenNotes,1);
	mov	dptr,#_delay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_delay
	pop	ar3
	pop	ar2
;	DAC.c:140: speaker(PAUSE,noteDuration); 
	mov	dptr,#_speaker_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#0x0000
	ljmp	_speaker
;------------------------------------------------------------
;Allocation info for local variables in function 'sing'
;------------------------------------------------------------
;song                      Allocated with name '_sing_song_1_1'
;i                         Allocated with name '_sing_i_1_1'
;------------------------------------------------------------
;	DAC.c:145: void sing(unsigned char song) {
;	-----------------------------------------
;	 function sing
;	-----------------------------------------
_sing:
	mov	a,dpl
	mov	dptr,#_sing_song_1_1
	movx	@dptr,a
;	DAC.c:148: if(song == 1){
	mov	dptr,#_sing_song_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00102$
;	DAC.c:149: for( i=0;i<(sizeof(adobe_melody)/sizeof(int));i++)
	mov	r2,#0x00
	mov	r3,#0x00
00107$:
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	subb	a,#0x00
	jnc	00102$
;	DAC.c:150: squareWave(adobe_melody[i],adobe_noteTime[i]);
	mov	ar4,r2
	mov	a,r3
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_adobe_melody
	mov	dpl,a
	mov	a,r5
	addc	a,#(_adobe_melody >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	add	a,#_adobe_noteTime
	mov	dpl,a
	mov	a,r3
	addc	a,#(_adobe_noteTime >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_squareWave_PARM_2
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar2
	push	ar3
	lcall	_squareWave
	pop	ar3
	pop	ar2
;	DAC.c:149: for( i=0;i<(sizeof(adobe_melody)/sizeof(int));i++)
	inc	r2
	cjne	r2,#0x00,00107$
	inc	r3
	sjmp	00107$
00102$:
;	DAC.c:152: if(song == 2){
	mov	dptr,#_sing_song_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x02,00104$
;	DAC.c:153: for(i =0;i<(sizeof(underworld_melody)/sizeof(int));i++)
	mov	r2,#0x00
	mov	r3,#0x00
00111$:
	clr	c
	mov	a,r2
	subb	a,#0x38
	mov	a,r3
	subb	a,#0x00
	jnc	00104$
;	DAC.c:154: squareWave(underworld_melody[i],underworld_noteTime[i]);
	mov	ar4,r2
	mov	a,r3
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_underworld_melody
	mov	dpl,a
	mov	a,r5
	addc	a,#(_underworld_melody >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	add	a,#_underworld_noteTime
	mov	dpl,a
	mov	a,r3
	addc	a,#(_underworld_noteTime >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_squareWave_PARM_2
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar2
	push	ar3
	lcall	_squareWave
	pop	ar3
	pop	ar2
;	DAC.c:153: for(i =0;i<(sizeof(underworld_melody)/sizeof(int));i++)
	inc	r2
	cjne	r2,#0x00,00111$
	inc	r3
	sjmp	00111$
00104$:
;	DAC.c:156: if(song == 3){
	mov	dptr,#_sing_song_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x03,00119$
;	DAC.c:157: for( i =0;i<(sizeof(mainMario_melody)/sizeof(int));i++)
	mov	r2,#0x00
	mov	r3,#0x00
00115$:
	clr	c
	mov	a,r2
	subb	a,#0x4E
	mov	a,r3
	subb	a,#0x00
	jnc	00119$
;	DAC.c:158: squareWave(mainMario_melody[i],mainMario_noteTime[i]);
	mov	ar4,r2
	mov	a,r3
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_mainMario_melody
	mov	dpl,a
	mov	a,r5
	addc	a,#(_mainMario_melody >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	add	a,#_mainMario_noteTime
	mov	dpl,a
	mov	a,r3
	addc	a,#(_mainMario_noteTime >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_squareWave_PARM_2
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar2
	push	ar3
	lcall	_squareWave
	pop	ar3
	pop	ar2
;	DAC.c:157: for( i =0;i<(sizeof(mainMario_melody)/sizeof(int));i++)
	inc	r2
	cjne	r2,#0x00,00115$
	inc	r3
	sjmp	00115$
00119$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__mainMario_melody:
	.byte #0x4D,#0x0A
	.byte #0x4D,#0x0A
	.byte #0x00,#0x00
	.byte #0x4D,#0x0A
	.byte #0x00,#0x00
	.byte #0x2D,#0x08
	.byte #0x4D,#0x0A
	.byte #0x00,#0x00
	.byte #0x40,#0x0C
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x20,#0x06
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x2D,#0x08
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x20,#0x06
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x27,#0x05
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xE0,#0x06
	.byte #0x00,#0x00
	.byte #0xB8,#0x07
	.byte #0x00,#0x00
	.byte #0x49,#0x07
	.byte #0xE0,#0x06
	.byte #0x00,#0x00
	.byte #0x20,#0x06
	.byte #0x4D,#0x0A
	.byte #0x40,#0x0C
	.byte #0xC0,#0x0D
	.byte #0x00,#0x00
	.byte #0xEA,#0x0A
	.byte #0x40,#0x0C
	.byte #0x00,#0x00
	.byte #0x4D,#0x0A
	.byte #0x00,#0x00
	.byte #0x2D,#0x08
	.byte #0x2D,#0x09
	.byte #0xB8,#0x07
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x2D,#0x08
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x20,#0x06
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x27,#0x05
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xE0,#0x06
	.byte #0x00,#0x00
	.byte #0xB8,#0x07
	.byte #0x00,#0x00
	.byte #0x49,#0x07
	.byte #0xE0,#0x06
	.byte #0x00,#0x00
	.byte #0x20,#0x06
	.byte #0x4D,#0x0A
	.byte #0x40,#0x0C
	.byte #0xC0,#0x0D
	.byte #0x00,#0x00
	.byte #0xEA,#0x0A
	.byte #0x40,#0x0C
	.byte #0x00,#0x00
	.byte #0x4D,#0x0A
	.byte #0x00,#0x00
	.byte #0x2D,#0x08
	.byte #0x2D,#0x09
	.byte #0xB8,#0x07
	.byte #0x00,#0x00
	.byte #0x00,#0x00
__xinit__mainMario_noteTime:
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x09
	.db #0x09
	.db #0x09
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x09
	.db #0x09
	.db #0x09
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
__xinit__underworld_melody:
	.byte #0x06,#0x01
	.byte #0x0B,#0x02
	.byte #0xDC,#0x00
	.byte #0xB8,#0x01
	.byte #0xE9,#0x00
	.byte #0xD2,#0x01
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x06,#0x01
	.byte #0x0B,#0x02
	.byte #0xDC,#0x00
	.byte #0xB8,#0x01
	.byte #0xE9,#0x00
	.byte #0xD2,#0x01
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xAF,#0x00
	.byte #0x5D,#0x01
	.byte #0x93,#0x00
	.byte #0x26,#0x01
	.byte #0x9C,#0x00
	.byte #0x37,#0x01
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xAF,#0x00
	.byte #0x5D,#0x01
	.byte #0x93,#0x00
	.byte #0x26,#0x01
	.byte #0x9C,#0x00
	.byte #0x37,#0x01
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x37,#0x01
	.byte #0x15,#0x01
	.byte #0x26,#0x01
	.byte #0x15,#0x01
	.byte #0x37,#0x01
	.byte #0x37,#0x01
	.byte #0xD0,#0x00
	.byte #0xC4,#0x00
	.byte #0x15,#0x01
	.byte #0x06,#0x01
	.byte #0x72,#0x01
	.byte #0x5D,#0x01
	.byte #0xA5,#0x00
	.byte #0xD2,#0x01
	.byte #0xB8,#0x01
	.byte #0x9F,#0x01
	.byte #0x37,#0x01
	.byte #0xF7,#0x00
	.byte #0xE9,#0x00
	.byte #0xDC,#0x00
	.byte #0xD0,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
__xinit__underworld_noteTime:
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x06
	.db #0x03
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x06
	.db #0x03
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x06
	.db #0x03
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x06
	.db #0x06
	.db #0x12
	.db #0x12
	.db #0x12
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x12
	.db #0x12
	.db #0x12
	.db #0x12
	.db #0x12
	.db #0x12
	.db #0x0A
	.db #0x0A
	.db #0x0A
	.db #0x0A
	.db #0x0A
	.db #0x0A
	.db #0x03
	.db #0x03
	.db #0x03
__xinit__adobe_melody:
	.byte #0xEE,#0x01
	.byte #0xEE,#0x01
	.byte #0x00,#0x00
	.byte #0xEE,#0x01
	.byte #0x4B,#0x02
	.byte #0x4B,#0x02
	.byte #0x00,#0x00
	.byte #0x4B,#0x02
	.byte #0xB8,#0x01
	.byte #0xB8,#0x01
	.byte #0x00,#0x00
	.byte #0xB8,#0x01
	.byte #0xEE,#0x01
	.byte #0xEE,#0x01
	.byte #0x00,#0x00
	.byte #0x00,#0x00
__xinit__adobe_noteTime:
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.area CABS    (ABS,CODE)
