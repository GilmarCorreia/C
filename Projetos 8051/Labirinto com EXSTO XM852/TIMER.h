#ifndef TIMER_H_INCLUDED
#define TIMER_H_INCLUDED

/* A struct timer guarda as variáveis relacionada aos timers usados
*	TIMER1 -> Delay Microsseconds
*
* 	Como a memória do timer interno dá overflow em 65535 e cada contagem acontece em 1 microssegundo, o timer dá um overflow a cada 65.535 milisegundos, portanto:
*	Cicles    = (Milisseconds * 1000)/ 65535 (DIVISÃO INTEIRA)
* 	lastClock = (Milisseconds * 1000)% 65535 (RESTO DA DIVISÃO)
*   finishMili   -> flag para informar que a contagem miliseconds acabou
*   finishMicro   -> flag para informar que a contagem microseconds acabou
*   flag     -> Controla se o timer está temporizando ou não
*/
struct timer{
	unsigned int cycles;
	unsigned int lastClock;
	unsigned char finishMili;
	unsigned char finishMicro;
	unsigned char flag;
};

struct timer Timer0;

void timerConfig();

void delay(unsigned int time, unsigned char miliseconds);

void volatile timer() __interrupt 1;

#endif
