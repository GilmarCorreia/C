#ifndef DAC_H_INCLUDED
#define DAC_H_INCLUDED

#define dacValue 0xFFE4


/*
Após coletado alguns valores de frequência para alguns valores de delay no código:
	dacWrite = 255;
	for(n=0;n < delay; n++);
	dacWrite = 0;
	for(n=0;n < delay; n++);
	
	Foi obtido uma ajuste de curva em relação freq x delay resultando na respectiva equação
		y(x) = 66007/((x)^1.001)
		
		sendo x -> frequência
			e y -> delay 
	
	Obtendo assim os delay para as notas desejadas.
*/
#define C8 16
#define B7 17
#define AS7 18
#define A7 19
#define GS7 20
#define G7 21
#define FS7 22
#define F7 23
#define E7 25
#define DS7 26
#define D7 28
#define CS7 30
#define C7 31
#define B6 33
#define AS6 35
#define A6 37
#define GS6 39
#define G6 42
#define FS6 44
#define F6 47
#define E6 50
#define DS6 53
#define D6 56
#define CS6 59
#define C6 63
#define B5 66
#define AS5 70
#define A5 75
#define GS5 79
#define G5 84
#define FS5 89
#define F5 94
#define E5 99
#define DS5 105
#define D5 112
#define CS5 118
#define C5 125
#define B4 133
#define AS4 141
#define A4 149
#define GS4 158
#define G4 167
#define FS4 177
#define F4 188
#define E4 199
#define DS4 211
#define D4 223
#define CS4 237
#define C4 251
#define B3 266
#define AS3 282
#define A3 298
#define GS3 316
#define G3 335
#define FS3 355
#define F3 376
#define E3 398
#define DS3 422
#define D3 447
#define CS3 474
#define C3 502
#define B2 532
#define AS2 564
#define A2 597
#define GS2 633
#define G2 670
#define FS2 710
#define F2 753
#define E2 797
#define DS2 845
#define D2 895
#define CS2 949
#define C2 1005
#define B1 1065
#define AS1 1128
#define A1 1195
#define GS1 1266
#define G1 1342
#define FS1 1422
#define F1 1506
#define E1 1596
#define DS1 1691
#define D1 1792
#define CS1 1898
#define C1 2011
#define B0 2131
#define AS0 2258
#define A0 2392
#define PAUSE 0


__xdata __at dacValue unsigned char dacWrite;

unsigned int mainMario_melody[] = {
  E5, E5, PAUSE, E5,
  PAUSE, C5, E5, PAUSE,
  G5, PAUSE, PAUSE,  PAUSE,
  G4, PAUSE, PAUSE, PAUSE,
 
  C5, PAUSE, PAUSE, G4,
  PAUSE, PAUSE, E4, PAUSE,
  PAUSE, A4, PAUSE, B4,
  PAUSE, AS4, A4, PAUSE,
 
  G4, E5, G5,
  A5, PAUSE, F5, G5,
  PAUSE, E5, PAUSE, C5,
  D5, B4, PAUSE, PAUSE,
 
  C5, PAUSE, PAUSE, G4,
  PAUSE, PAUSE, E4, PAUSE,
  PAUSE, A4, PAUSE, B4,
  PAUSE, AS4, A4, PAUSE,
 
  G4, E5, G5,
  A5, PAUSE, F5, G5,
  PAUSE, E5, PAUSE, C5,
  D5, B4, PAUSE, PAUSE
};

unsigned char mainMario_noteTime[] = {
  15, 15, 15, 15,
  15, 15, 15, 15,
  15, 15, 15, 15,
  15, 15, 15, 15,
 
  15, 15, 15, 15,
  15, 15, 15, 15,
  15, 15, 15, 15,
  15, 15, 15, 15,
 
  12, 12, 12,
  15, 15, 15, 15,
  15, 15, 15, 15,
  15, 15, 15, 15,
 
  15, 15, 15, 15,
  15, 15, 15, 15,
  15, 15, 15, 15,
  15, 15, 15, 15,
 
  12, 12, 12,
  15, 15, 15, 15,
  15, 15, 15, 15,
  15, 15, 15, 15,
};

unsigned int underworld_melody[] = {
  C4, C5, A3, A4, AS3, AS4, PAUSE,
  PAUSE,
  C4, C5, A3, A4,
  AS3, AS4, PAUSE,
  PAUSE,
  F3, F4, D3, D4,
  DS3, DS4, PAUSE,
  PAUSE,
  F3, F4, D3, D4,
  DS3, DS4, PAUSE,
  PAUSE, DS4, CS4, D4,
  CS4, DS4,
  DS4, GS3,
  G3, CS4,
  C4, FS4, F4, E3, AS4, A4,
  GS4, DS4, B3,
  AS3, A3, GS3,
  PAUSE, PAUSE, PAUSE
};

unsigned char underworld_noteTime[] = {
  12, 12, 12, 12,
  12, 12, 6,
  3,
  12, 12, 12, 12,
  12, 12, 6,
  3,
  12, 12, 12, 12,
  12, 12, 6,
  3,
  12, 12, 12, 12,
  12, 12, 6,
  6, 18, 18, 18,
  6, 6,
  6, 6,
  6, 6,
  18, 18, 18, 18, 18, 18,
  10, 10, 10,
  10, 10, 10,
  3, 3, 3
};
 
unsigned int adobe_melody[] = {
  B4, B4, PAUSE, B4,
  D5, D5, PAUSE, D5,
  A4, A4, PAUSE, A4,
  B4, B4, PAUSE, PAUSE
};
unsigned char adobe_noteTime[] = {
  6,6,6,6,
  6,6,6,6,
  6,6,6,6,
  6,6,6,6
};

unsigned int beep1_melody[] = {
  C4,PAUSE
};
unsigned char beep1_noteTime[] = {
  6,12
};

unsigned int beep2_melody[] = {
  CS4,PAUSE
};
unsigned char beep2_noteTime[] = {
  6,12
};

void speaker(unsigned int note, unsigned int noteDuration);

void squareWave(unsigned int note, unsigned int tempo);

void sing(unsigned char song);

#endif