#include "DAC.h"
#include "TIMER.h" 
//#include "dac.h"


int mainMario_melody[] = {
  E7, E7, PAUSE, E7,
  PAUSE, C7, E7, PAUSE,
  G7, PAUSE, PAUSE,  PAUSE,
  G6, PAUSE, PAUSE, PAUSE,
 
  C7, PAUSE, PAUSE, G6,
  PAUSE, PAUSE, E6, PAUSE,
  PAUSE, A6, PAUSE, B6,
  PAUSE, AS6, A6, PAUSE,
 
  G6, E7, G7,
  A7, PAUSE, F7, G7,
  PAUSE, E7, PAUSE, C7,
  D7, B6, PAUSE, PAUSE,
 
  C7, PAUSE, PAUSE, G6,
  PAUSE, PAUSE, E6, PAUSE,
  PAUSE, A6, PAUSE, B6,
  PAUSE, AS6, A6, PAUSE,
 
  G6, E7, G7,
  A7, PAUSE, F7, G7,
  PAUSE, E7, PAUSE, C7,
  D7, B6, PAUSE, PAUSE
};
//Mario main them tempo
unsigned char mainMario_noteTime[] = {
  12, 12, 12, 12,
  12, 12, 12, 12,
  12, 12, 12, 12,
  12, 12, 12, 12,
 
  12, 12, 12, 12,
  12, 12, 12, 12,
  12, 12, 12, 12,
  12, 12, 12, 12,
 
  9, 9, 9,
  12, 12, 12, 12,
  12, 12, 12, 12,
  12, 12, 12, 12,
 
  12, 12, 12, 12,
  12, 12, 12, 12,
  12, 12, 12, 12,
  12, 12, 12, 12,
 
  9, 9, 9,
  12, 12, 12, 12,
  12, 12, 12, 12,
  12, 12, 12, 12,
};

int underworld_melody[] = {
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


int adobe_melody[] = {
  B4, B4, PAUSE,B4,
  D5, D5, PAUSE,D5,
  A4, A4, PAUSE,A4,
  B4, B4, PAUSE, PAUSE
};
unsigned char adobe_noteTime[] = {
  12, 12, 12, 12,
  12,12,12,12,
  12,12,12,12,
  12,12,12,12
};

void speaker(unsigned int note, unsigned int noteDuration){
	long delayValue = 1000000 / note / 2; 
	long numCycles = note * noteDuration / 1000; 
	long i; 
	
	for (i = 0; i < numCycles; i++) { 
		dacWrite = 255;
		delay(note,0);
		dacWrite = 0;
		delay(note,0);
	}
}

void squareWave(unsigned int note, unsigned int tempo){

	unsigned int noteDuration = 1000 / tempo;
	unsigned int pauseBetweenNotes;
  
	speaker(note,noteDuration);  
	
	pauseBetweenNotes = noteDuration * 1.30;
	delay(pauseBetweenNotes,1);
  
	speaker(PAUSE,noteDuration); 
}



void sing(unsigned char song) {
	unsigned int i;
	
	if(song == 1){
		for( i=0;i<(sizeof(adobe_melody)/sizeof(int));i++)
			squareWave(adobe_melody[i],adobe_noteTime[i]);
	}
	if(song == 2){
		for(i =0;i<(sizeof(underworld_melody)/sizeof(int));i++)
			squareWave(underworld_melody[i],underworld_noteTime[i]);
	}
	if(song == 3){
		for( i =0;i<(sizeof(mainMario_melody)/sizeof(int));i++)
			squareWave(mainMario_melody[i],mainMario_noteTime[i]);
	}
}

