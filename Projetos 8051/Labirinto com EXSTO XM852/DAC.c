#include "DAC.h"
#include "TIMER.h" 

unsigned int i = 0;

/*
	Baseado no código de: https://www.usinainfo.com.br/blog/tocando-tema-do-super-mario-com-buzzer-e-arduino/
*/
void speaker(unsigned int note, unsigned int noteDuration){
	long numCycles = note * noteDuration / 1000; 
	long i;
	unsigned int n; 
	
	for (i = 0; i < numCycles; i++) { 
		dacWrite = 255;
		for(n = 0;n< note ;n++);
		dacWrite = 0;
		for(n = 0;n< note;n++);
	}
}

/*
	Baseado no código de: https://www.usinainfo.com.br/blog/tocando-tema-do-super-mario-com-buzzer-e-arduino/
*/
void squareWave(unsigned int note, unsigned int tempo){

	unsigned int noteDuration = 1000 / tempo;
	unsigned int pauseBetweenNotes;
  
	speaker(note,noteDuration);  
	
	//pauseBetweenNotes = noteDuration * 1.30;
	//delay(pauseBetweenNotes,1);
  
	speaker(PAUSE,noteDuration); 
}

/*
	Baseado no código de: https://www.usinainfo.com.br/blog/tocando-tema-do-super-mario-com-buzzer-e-arduino/
*/
void sing(unsigned char song) {
	
	
	if(song == 1){
		//for( i=0;i<(sizeof(adobe_melody)/sizeof(int));i++)
		squareWave(adobe_melody[i],adobe_noteTime[i]);
	
		if(i+1<(sizeof(adobe_melody)/sizeof(unsigned int)))
			i++;
		else
			i = 0;
		
	}
	else if(song == 2){
		squareWave(underworld_melody[i],underworld_noteTime[i]);
		
		if(i+1<(sizeof(underworld_melody)/sizeof(unsigned int)))
			i++;
		else
			i = 0;
	}
	else if(song == 3){
		squareWave(mainMario_melody[i],mainMario_noteTime[i]);
		
		if(i+1<(sizeof(mainMario_melody)/sizeof(unsigned int)))
			i++;
		else
			i = 0;
	}
	else if(song == 4){
		for( i =0;i<(sizeof(beep1_melody)/sizeof(int));i++)
			squareWave(beep1_melody[i],beep1_noteTime[i]);
	}
	else if(song == 5){
		for( i =0;i<(sizeof(beep2_melody)/sizeof(int));i++)
			squareWave(beep2_melody[i],beep2_noteTime[i]);
	}
}
