#include "SERIAL.h"

#include <mcs51/8051.h>

#include "LCD.h"
#include "TIMER.h"
#include "DAC.h"
#include "Math.h"

struct position *player;

/* FUNÇÃO transmitter:
* 		Transmite um char para a serial
*/
void transmitter(unsigned char message){
	if(! TI){
		SBUF = message;				// Manda a mensagem para o buffer
		
		while(TI == 0);				// Esperando a flag TI parar a transmissão
			TI = 0;					// Zerando a flag
	}
}

/* FUNÇÃO transNumber:
* 		Converte um número para char e transmite pela serial
*/
void transNumber(unsigned char number){
	transmitter(number/10 + '0'); 
	transmitter(number%10 + '0'); 
	transmitter('\n'); 
}

/* FUNÇÃO receiver:
* 		recebe um char da serial
*/
char receiver(){
	
	return SBUF;						// Recebe a mensagem do buffer
}


/* FUNÇÃO receivedChar:
* 		retorna o último char recebido pela Serial
*/
char receivedChar() {
	
	return rxMsg;
}

/* FUNÇÃO serialConfig:
* 		Habilita a comunicação serial do projeto recebendo como parâmetro um variável que indicará se a serial é de Leitura ou de Escrita, através da variável read. Além de receber um struct position que comutará a posição do jogador durante o jogo 
*/
void serialConfig(unsigned char read, struct position *gamer){
	player = gamer;
	
	if(read)
		SCON = 0x50; 						// Configurando o modo 1 para serial (05 Serial.pdf de sistmicro)
	else
		SCON = 0x40;
}


/* FUNÇÃO serialBegin:
* 		Inicializa a recepção de mensagens através da serial, salvando o caractér no rxMsg. Essa função em específico só função para a tela de inicialização - Se apertar ' ' (ESPAÇO), o jogo se inicia;
*/
unsigned char serialBegin(){
	
	if(RI){
		rxMsg = receiver();
		
		if(rxMsg == ' ')
			return 0;
	}
	
	return 1;
}


/* FUNÇÃO serialControl:
* 		Controla o caractér do jogador alterando a sua posição
*/

unsigned char serialControl(struct SChar scmap[8],struct Map map[4][16]){
	
	unsigned char logic_op = 1;
	
	LCD_putSCharAt(player->sline,player->scol, player->line,player->col);				// Coloca o caractér do jogador na posição correta

	if(RI){				//Se receber uma mensagem
	
		printMapAt(player->line,player->col);
		
		rxMsg = receiver();					//Salva o char recebido
			
		if(rxMsg == 'w' || rxMsg == 'W'){																								// Se a mensagem for W
		
			// ============================================= Lógica da Colisão para Cima =============================================
			// Verifica se o player pode continuar andando para Cima
			if((player->sline - 1) >0) // Se o jogador não estiver na primeira linha de cada quadrado do LCD
				logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-2] & (pow(2,5-player->scol));	// Verifica se andar para cima é válido, ou seja, se não possui nenhuma parede:
				// Como a lógica funciona:
				// 		Pega o caractér da posição atual do player (scmap[(map[player->line-1][player->col-1].schar) - 1])
				//		Verifica se o endereço da linha de cima (.adds[player->sline-2]) 
				// 		Realiza a operação binária & para ver se o jogador pode subir para a linha de cima.
				//			Ex:		adds[linha 1] = 1 1 1 0 1
				//					player pos	  = 0 0 0 1 0 
				// Se o operando logic_op for igual 0 significa que o jogador poderá se movimentar para linha de cima, se for 1, não poderá.
				
			else if(player->sline == 1 && player->line > 1)// Se o jogador estiver na primeira linha de cada quadrado do LCD
				logic_op = scmap[(map[player->line-2][player->col-1].schar) - 1].adds[7] & (pow(2,5-player->scol)); // Verifica se a linha de quadrados do LCD uma posição acima permite transição ou se possuí parede. 
			else if(player->sline == 1 && player->line == 1 )// Se o jogador estiver na última linha do LCD
				return 0; // O jogador achou uma saída do mapa
			// ============================================= Lógica da Colisão para Cima =============================================

			if(logic_op == 0){					// Se o jogador puder se movimentar
			
				if(player->sline != 1)
					player->sline--;			//decrementa a posição no mapa
				else{
					if(player->line != 1){
						player->sline = 8;		//coloca no último segmento do quadrado do LCD na linha acima
						player->line--;			//decrementa a posição no mapa
					}
				}
			}

		}
		else if(rxMsg == 's' || rxMsg == 'S'){
			
			// ============================================= Lógica da Colisão para Baixo =============================================
			// Verifica se o player pode continuar andando para Baixo
			if((player->sline-1) < 7) // Se o jogador não estiver na última linha de cada quadrado do LCD
				logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline] & (pow(2,5-player->scol)); // Verifica se andar para cima é válido.
			else // Se o jogador estiver na última linha de cada quadrado do LCD
				logic_op = scmap[(map[player->line][player->col-1].schar) - 1].adds[0] & (pow(2,5-player->scol)); // Verifica se a linha de quadrados do LCD uma posição abaixo permite transição ou se possuí parede.  
			// ============================================= Lógica da Colisão para Baixo =============================================
			
			if(logic_op == 0){						// Se o jogador puder se movimentar

				if(player->sline != 8)
					player->sline++;				//incrementa a posição no mapa
				else{
					if(player->line != 4){
						player->sline = 1;			//coloca no primeiro segmento do quadrado do LCD na linha abaixo
						player->line++;				//incrementa a posição no mapa
					}
				}
			}
			
		}
		else if(rxMsg == 'd' || rxMsg == 'D'){
			
			// ============================================= Lógica da Colisão para a Direita =============================================
			// Verifica se o player pode continuar andando para Direita
			if((player->scol+1) < 6) // Se o jogador não estiver na última coluna de cada quadrado do LCD
				logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-1] & (pow(2,5-(player->scol+1))); // Verifica se andar para direita é válido.
			else if(player->scol == 5 && player->col < 16)	 // Se o jogador estiver na última coluna de cada quadrado do LCD
				logic_op = scmap[(map[player->line-1][player->col].schar) - 1].adds[player->sline-1] & (pow(2,5-(1)));	// Verifica se a coluna de quadrados do LCD uma posição para direita permite transição ou se possuí parede.  
			else if(player->scol == 5 && player->col == 16) // Se o jogador estiver na última coluna do LCD
				return 0;	// O jogador achou uma saída do mapa
			// ============================================= Lógica da Colisão para a Direita =============================================
				
			if(logic_op == 0){						// Se o jogador puder se movimentar
				if(player->scol != 5)
					player->scol++;					//incrementa a posição no mapa
				else{
					if(player->col != 16){
						player->scol = 1;			//coloca no primeiro segmento de coluna do quadrado do LCD na coluna à direita
						player->col++;				//incrementa a posição no mapa
					}
				}
			}
		}
		else if(rxMsg == 'a' || rxMsg == 'A'){
			
			// ============================================= Lógica da Colisão para a Esquerda =============================================
			// Verifica se o player pode continuar andando para Esquerda
			if((player->scol-2)>-1)  // Se o jogador não estiver na primeira coluna de cada quadrado do LCD
				logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-1] & (pow(2,5-(player->scol-1)));  // Verifica se andar para esquerda é válido.
			else if(player->scol==1 && player->col >1)	// Se o jogador estiver na primeira coluna de cada quadrado do LCD
				logic_op = scmap[(map[player->line-1][player->col-2].schar) - 1].adds[player->sline-1] & (pow(2,5-(5)));// Verifica se a coluna de quadrados do LCD uma posição para esquerda permite transição ou se possuí parede.  
			else if(player->scol==1 && player->col == 1) // Se o jogador estiver na primeira coluna do LCD
				return 0; // O jogador achou uma saída do mapa
			// ============================================= Lógica da Colisão para a Esquerda =============================================
			
			if(logic_op == 0){						// Se o jogador puder se movimentar
				if(player->scol != 1)
					player->scol--;					//decrementa a posição no mapa
				else{
					if(player->col != 1){
						player->scol = 5;			//coloca no último segmento de coluna do quadrado do LCD na coluna à esquerda
						player->col--;				//decrementa a posição no mapa
					}
				}
			}
		}

		//printMap();									// Imprime o mapa do jogo novamente
		RI = 0;										// Reinicializa o flag de receber mensagens pela Serial
	}
	
	return 1;										// O jogador ainda não achou uma saída
}