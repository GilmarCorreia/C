;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
; This file was generated Wed Aug 21 09:12:24 2019
;--------------------------------------------------------
	.module DAC
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _i
	.globl _beep2_noteTime
	.globl _beep2_melody
	.globl _beep1_noteTime
	.globl _beep1_melody
	.globl _adobe_noteTime
	.globl _adobe_melody
	.globl _underworld_noteTime
	.globl _underworld_melody
	.globl _mainMario_noteTime
	.globl _mainMario_melody
	.globl _squareWave_PARM_2
	.globl _speaker_PARM_2
	.globl _Timer0
	.globl _dacWrite
	.globl _speaker
	.globl _squareWave
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
_speaker_sloc1_1_0:
	.ds 2
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
_dacWrite	=	0xffe4
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
_beep1_melody::
	.ds 4
_beep1_noteTime::
	.ds 2
_beep2_melody::
	.ds 4
_beep2_noteTime::
	.ds 2
_i::
	.ds 2
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
;sloc1                     Allocated with name '_speaker_sloc1_1_0'
;noteDuration              Allocated with name '_speaker_PARM_2'
;note                      Allocated with name '_speaker_note_1_1'
;numCycles                 Allocated with name '_speaker_numCycles_1_1'
;i                         Allocated with name '_speaker_i_1_1'
;n                         Allocated with name '_speaker_n_1_1'
;------------------------------------------------------------
;	DAC.c:9: void speaker(unsigned int note, unsigned int noteDuration){
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
;	DAC.c:10: long numCycles = note * noteDuration / 1000; 
	mov	dptr,#_speaker_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_speaker_note_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar4
	push	ar5
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	mov	dptr,#__divuint_PARM_2
	mov	a,#0xE8
	movx	@dptr,a
	inc	dptr
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar4
	mov	r6,#0x00
	mov	r7,#0x00
;	DAC.c:14: for (i = 0; i < numCycles; i++) { 
	mov	ar0,r4
	mov	ar1,r5
	clr	a
	mov	_speaker_sloc0_1_0,a
	mov	(_speaker_sloc0_1_0 + 1),a
	mov	(_speaker_sloc0_1_0 + 2),a
	mov	(_speaker_sloc0_1_0 + 3),a
00109$:
	clr	c
	mov	a,_speaker_sloc0_1_0
	subb	a,r2
	mov	a,(_speaker_sloc0_1_0 + 1)
	subb	a,r3
	mov	a,(_speaker_sloc0_1_0 + 2)
	subb	a,r6
	mov	a,(_speaker_sloc0_1_0 + 3)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00113$
;	DAC.c:15: dacWrite = 255;
	mov	dptr,#_dacWrite
	mov	a,#0xFF
	movx	@dptr,a
;	DAC.c:16: for(n = 0;n< note ;n++);
	clr	a
	mov	_speaker_sloc1_1_0,a
	mov	(_speaker_sloc1_1_0 + 1),a
00101$:
	clr	c
	mov	a,_speaker_sloc1_1_0
	subb	a,r0
	mov	a,(_speaker_sloc1_1_0 + 1)
	subb	a,r1
	jnc	00104$
	inc	_speaker_sloc1_1_0
	clr	a
	cjne	a,_speaker_sloc1_1_0,00101$
	inc	(_speaker_sloc1_1_0 + 1)
	sjmp	00101$
00104$:
;	DAC.c:17: dacWrite = 0;
	mov	dptr,#_dacWrite
	clr	a
	movx	@dptr,a
;	DAC.c:18: for(n = 0;n< note;n++);
	clr	a
	mov	_speaker_sloc1_1_0,a
	mov	(_speaker_sloc1_1_0 + 1),a
00105$:
	clr	c
	mov	a,_speaker_sloc1_1_0
	subb	a,r4
	mov	a,(_speaker_sloc1_1_0 + 1)
	subb	a,r5
	jnc	00111$
	inc	_speaker_sloc1_1_0
	clr	a
	cjne	a,_speaker_sloc1_1_0,00105$
	inc	(_speaker_sloc1_1_0 + 1)
	sjmp	00105$
00111$:
;	DAC.c:14: for (i = 0; i < numCycles; i++) { 
	inc	_speaker_sloc0_1_0
	clr	a
	cjne	a,_speaker_sloc0_1_0,00127$
	inc	(_speaker_sloc0_1_0 + 1)
	cjne	a,(_speaker_sloc0_1_0 + 1),00127$
	inc	(_speaker_sloc0_1_0 + 2)
	cjne	a,(_speaker_sloc0_1_0 + 2),00109$
	inc	(_speaker_sloc0_1_0 + 3)
00127$:
	sjmp	00109$
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'squareWave'
;------------------------------------------------------------
;tempo                     Allocated with name '_squareWave_PARM_2'
;note                      Allocated with name '_squareWave_note_1_1'
;noteDuration              Allocated with name '_squareWave_noteDuration_1_1'
;pauseBetweenNotes         Allocated with name '_squareWave_pauseBetweenNotes_1_1'
;------------------------------------------------------------
;	DAC.c:25: void squareWave(unsigned int note, unsigned int tempo){
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
;	DAC.c:27: unsigned int noteDuration = 1000 / tempo;
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
;	DAC.c:30: speaker(note,noteDuration);  
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
;	DAC.c:35: speaker(PAUSE,noteDuration); 
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
;------------------------------------------------------------
;	DAC.c:41: void sing(unsigned char song) {
;	-----------------------------------------
;	 function sing
;	-----------------------------------------
_sing:
	mov	a,dpl
	mov	dptr,#_sing_song_1_1
	movx	@dptr,a
;	DAC.c:44: if(song == 1){
	mov	dptr,#_sing_song_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00122$
;	DAC.c:46: squareWave(adobe_melody[i],adobe_noteTime[i]);
	mov	dptr,#_i
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar5,r3
	xch	a,r5
	add	a,acc
	xch	a,r5
	rlc	a
	mov	r6,a
	mov	a,r5
	add	a,#_adobe_melody
	mov	dpl,a
	mov	a,r6
	addc	a,#(_adobe_melody >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r3
	add	a,#_adobe_noteTime
	mov	dpl,a
	mov	a,r4
	addc	a,#(_adobe_noteTime >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_squareWave_PARM_2
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	lcall	_squareWave
;	DAC.c:48: if(i+1<(sizeof(adobe_melody)/sizeof(unsigned int)))
	mov	dptr,#_i
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x01
	add	a,r3
	mov	r5,a
	clr	a
	addc	a,r4
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,#0x10
	mov	a,r6
	subb	a,#0x00
	jnc	00102$
;	DAC.c:49: i++;
	mov	dptr,#_i
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	ret
00102$:
;	DAC.c:51: i = 0;
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ret
00122$:
;	DAC.c:54: else if(song == 2){
	cjne	r2,#0x02,00119$
;	DAC.c:55: squareWave(underworld_melody[i],underworld_noteTime[i]);
	mov	dptr,#_i
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar5,r3
	xch	a,r5
	add	a,acc
	xch	a,r5
	rlc	a
	mov	r6,a
	mov	a,r5
	add	a,#_underworld_melody
	mov	dpl,a
	mov	a,r6
	addc	a,#(_underworld_melody >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r3
	add	a,#_underworld_noteTime
	mov	dpl,a
	mov	a,r4
	addc	a,#(_underworld_noteTime >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_squareWave_PARM_2
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	lcall	_squareWave
;	DAC.c:57: if(i+1<(sizeof(underworld_melody)/sizeof(unsigned int)))
	mov	dptr,#_i
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x01
	add	a,r3
	mov	r5,a
	clr	a
	addc	a,r4
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,#0x38
	mov	a,r6
	subb	a,#0x00
	jnc	00105$
;	DAC.c:58: i++;
	mov	dptr,#_i
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	ret
00105$:
;	DAC.c:60: i = 0;
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ret
00119$:
;	DAC.c:62: else if(song == 3){
	cjne	r2,#0x03,00116$
;	DAC.c:63: squareWave(mainMario_melody[i],mainMario_noteTime[i]);
	mov	dptr,#_i
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar5,r3
	xch	a,r5
	add	a,acc
	xch	a,r5
	rlc	a
	mov	r6,a
	mov	a,r5
	add	a,#_mainMario_melody
	mov	dpl,a
	mov	a,r6
	addc	a,#(_mainMario_melody >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r3
	add	a,#_mainMario_noteTime
	mov	dpl,a
	mov	a,r4
	addc	a,#(_mainMario_noteTime >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_squareWave_PARM_2
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	lcall	_squareWave
;	DAC.c:65: if(i+1<(sizeof(mainMario_melody)/sizeof(unsigned int)))
	mov	dptr,#_i
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x01
	add	a,r3
	mov	r5,a
	clr	a
	addc	a,r4
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,#0x4E
	mov	a,r6
	subb	a,#0x00
	jnc	00108$
;	DAC.c:66: i++;
	mov	dptr,#_i
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	ret
00108$:
;	DAC.c:68: i = 0;
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ret
00116$:
;	DAC.c:70: else if(song == 4){
	cjne	r2,#0x04,00113$
;	DAC.c:71: for( i =0;i<(sizeof(beep1_melody)/sizeof(int));i++)
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00124$:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,#0x02
	mov	a,r4
	subb	a,#0x00
	jc	00157$
	ret
00157$:
;	DAC.c:72: squareWave(beep1_melody[i],beep1_noteTime[i]);
	mov	ar5,r3
	mov	a,r4
	xch	a,r5
	add	a,acc
	xch	a,r5
	rlc	a
	mov	r6,a
	mov	a,r5
	add	a,#_beep1_melody
	mov	dpl,a
	mov	a,r6
	addc	a,#(_beep1_melody >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r3
	add	a,#_beep1_noteTime
	mov	dpl,a
	mov	a,r4
	addc	a,#(_beep1_noteTime >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_squareWave_PARM_2
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	lcall	_squareWave
;	DAC.c:71: for( i =0;i<(sizeof(beep1_melody)/sizeof(int));i++)
	mov	dptr,#_i
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_i
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	sjmp	00124$
00113$:
;	DAC.c:74: else if(song == 5){
	cjne	r2,#0x05,00132$
;	DAC.c:75: for( i =0;i<(sizeof(beep2_melody)/sizeof(int));i++)
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00128$:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x02
	mov	a,r3
	subb	a,#0x00
	jnc	00132$
;	DAC.c:76: squareWave(beep2_melody[i],beep2_noteTime[i]);
	mov	ar4,r2
	mov	a,r3
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_beep2_melody
	mov	dpl,a
	mov	a,r5
	addc	a,#(_beep2_melody >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	add	a,#_beep2_noteTime
	mov	dpl,a
	mov	a,r3
	addc	a,#(_beep2_noteTime >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_squareWave_PARM_2
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_squareWave
;	DAC.c:75: for( i =0;i<(sizeof(beep2_melody)/sizeof(int));i++)
	mov	dptr,#_i
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_i
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00128$
00132$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__mainMario_melody:
	.byte #0x63,#0x00
	.byte #0x63,#0x00
	.byte #0x00,#0x00
	.byte #0x63,#0x00
	.byte #0x00,#0x00
	.byte #0x7D,#0x00
	.byte #0x63,#0x00
	.byte #0x00,#0x00
	.byte #0x54,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xA7,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x7D,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xA7,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xC7,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x95,#0x00
	.byte #0x00,#0x00
	.byte #0x85,#0x00
	.byte #0x00,#0x00
	.byte #0x8D,#0x00
	.byte #0x95,#0x00
	.byte #0x00,#0x00
	.byte #0xA7,#0x00
	.byte #0x63,#0x00
	.byte #0x54,#0x00
	.byte #0x4B,#0x00
	.byte #0x00,#0x00
	.byte #0x5E,#0x00
	.byte #0x54,#0x00
	.byte #0x00,#0x00
	.byte #0x63,#0x00
	.byte #0x00,#0x00
	.byte #0x7D,#0x00
	.byte #0x70,#0x00
	.byte #0x85,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x7D,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xA7,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xC7,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x95,#0x00
	.byte #0x00,#0x00
	.byte #0x85,#0x00
	.byte #0x00,#0x00
	.byte #0x8D,#0x00
	.byte #0x95,#0x00
	.byte #0x00,#0x00
	.byte #0xA7,#0x00
	.byte #0x63,#0x00
	.byte #0x54,#0x00
	.byte #0x4B,#0x00
	.byte #0x00,#0x00
	.byte #0x5E,#0x00
	.byte #0x54,#0x00
	.byte #0x00,#0x00
	.byte #0x63,#0x00
	.byte #0x00,#0x00
	.byte #0x7D,#0x00
	.byte #0x70,#0x00
	.byte #0x85,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
__xinit__mainMario_noteTime:
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x0F
__xinit__underworld_melody:
	.byte #0xFB,#0x00
	.byte #0x7D,#0x00
	.byte #0x2A,#0x01
	.byte #0x95,#0x00
	.byte #0x1A,#0x01
	.byte #0x8D,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xFB,#0x00
	.byte #0x7D,#0x00
	.byte #0x2A,#0x01
	.byte #0x95,#0x00
	.byte #0x1A,#0x01
	.byte #0x8D,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x78,#0x01
	.byte #0xBC,#0x00
	.byte #0xBF,#0x01
	.byte #0xDF,#0x00
	.byte #0xA6,#0x01
	.byte #0xD3,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x78,#0x01
	.byte #0xBC,#0x00
	.byte #0xBF,#0x01
	.byte #0xDF,#0x00
	.byte #0xA6,#0x01
	.byte #0xD3,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xD3,#0x00
	.byte #0xED,#0x00
	.byte #0xDF,#0x00
	.byte #0xED,#0x00
	.byte #0xD3,#0x00
	.byte #0xD3,#0x00
	.byte #0x3C,#0x01
	.byte #0x4F,#0x01
	.byte #0xED,#0x00
	.byte #0xFB,#0x00
	.byte #0xB1,#0x00
	.byte #0xBC,#0x00
	.byte #0x8E,#0x01
	.byte #0x8D,#0x00
	.byte #0x95,#0x00
	.byte #0x9E,#0x00
	.byte #0xD3,#0x00
	.byte #0x0A,#0x01
	.byte #0x1A,#0x01
	.byte #0x2A,#0x01
	.byte #0x3C,#0x01
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
	.byte #0x85,#0x00
	.byte #0x85,#0x00
	.byte #0x00,#0x00
	.byte #0x85,#0x00
	.byte #0x70,#0x00
	.byte #0x70,#0x00
	.byte #0x00,#0x00
	.byte #0x70,#0x00
	.byte #0x95,#0x00
	.byte #0x95,#0x00
	.byte #0x00,#0x00
	.byte #0x95,#0x00
	.byte #0x85,#0x00
	.byte #0x85,#0x00
	.byte #0x00,#0x00
	.byte #0x00,#0x00
__xinit__adobe_noteTime:
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
__xinit__beep1_melody:
	.byte #0xFB,#0x00
	.byte #0x00,#0x00
__xinit__beep1_noteTime:
	.db #0x06
	.db #0x0C
__xinit__beep2_melody:
	.byte #0xED,#0x00
	.byte #0x00,#0x00
__xinit__beep2_noteTime:
	.db #0x06
	.db #0x0C
__xinit__i:
	.byte #0x00,#0x00
	.area CABS    (ABS,CODE)
