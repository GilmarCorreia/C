#include "TIMER.h"
#include <mcs51/8051.h>
#include <time.h>
#include <stdio.h>

void timerConfig(){
	TH0 = 0; 					// Zerar os bits mais significativos do temporizador TIMER0
	TL0 = 0; 					// Zerar os bits menos significativos do temporizador TIMER0
	
	TMOD = 0x21; 				// Habilitando modo 8-bits recarga automática (TIMER1) e contagem modo 16-bits (TIMER0) (slide sistmicro 04_Timer.pdf pg.8)

	TH1 = 0xFD; 				// Zerar os bits mais significativos do temporizador - HABILITANDO COMUNICAÇÃO 9600 bps(usando 8 bits)
	TL1 = 0xFD; 				// Zerar os bits menos significativos do temporizador - HABILITANDO COMUNICAÇÃO 9600 bps (usando 8 bits)

    TR1 = 1;        			// Iniciando o T1

	P1 = 0x00;

	Timer0.finishMicro = 0;
	Timer0.finishMili = 0;
}

/* FUNÇÃO delay:
* 		Funcao para delay em milisegundos ou microsegundos que recebe como parâmetro a quantidade de tempo desejado
*       Se selecionado o modo milisegundos = 1 realiza-se a temporização em milisegundos, se miliseconds = 0 a temporização será de microsegundos.
*/
void delay(unsigned int time, unsigned char miliseconds){
	
	Timer0.flag=1;

	if(!Timer0.finishMili && miliseconds){	
		Timer0.cycles = time/65;
		Timer0.lastClock = 65535 - ((time % 65)*1000);

		TR0 = 1;
		Timer0.finishMili = 1;
		
		while(Timer0.finishMili);
	}
	else if(!Timer0.finishMili){
		Timer0.cycles = 1;
		Timer0.lastClock = 65535 - time;
		TR0 = 1;
		
		while(!Timer0.finishMicro);

		Timer0.finishMicro = 0;
	}

	

}

/* FUNÇÃO timer:
* 		Função que controla a interrupção do TIMER0
*/
void volatile timer() __interrupt 1{ 			//(slide aplicmicro 11_C.pdf pg.13)

	TH0 = 0; 												// Zerar os bits mais significativos do contador
	TL0 = 0; 												// Zerar os bits menos significativos do contador
	TF0 = 0;												// Zero a flag do contador
	TR0 = 0;												// Paro timer0

	if(Timer0.cycles > 1){
        Timer0.cycles--;									// decrementa cycles
		TR0 = 1;											// inicia contador
	}
	else if(Timer0.cycles == 1){
		TH0 = Timer0.lastClock & 0xFF ;						// Atribui ao ultimo timer o valor dos bits mais significativos
		TL0 = Timer0.lastClock >> 8;						// Atribui ao ultimo timer o valor dos bits menos significativos
        Timer0.cycles--;									// decrementa cycles
		
		Timer0.finishMicro = 1;
		
		TR0 = 1;											// inicia contador
	}
	else if(Timer0.cycles == 0){
        Timer0.finishMili = 0;								// finish é uma flag que indica que o tempo acabou
	}
}
