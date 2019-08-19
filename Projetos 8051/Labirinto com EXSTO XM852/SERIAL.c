#include "SERIAL.h"
#include <mcs51/8051.h>
#include "LCD.h"
#include "TIMER.h"
#include "Math.h"

struct position *player;

void transmitter(unsigned char message){
	if(! TI){
		SBUF = message;				// Manda a mensagem para o buffer
		
		while(TI == 0);		// Esperando a flag TI parar a transmissão
			TI = 0;			// Zerando a flag
	}
}


void transNumber(unsigned char number){
	
	transmitter(number/10 + '0'); 
	transmitter(number%10 + '0'); 
	transmitter('\n'); 
}

char receiver(){
	return SBUF;						// Recebe a mensagem do buffer
}

char receivedChar(){
	return rxMsg;
}

void serialConfig(unsigned char read, struct position *gamer){
	player = gamer;
	
	if(read)
		SCON = 0x50; 						// Configurando o modo 1 para serial (05 Serial.pdf de sistmicro)
	else
		SCON = 0x40;
}


unsigned char serialBegin(){
	
	if(RI){
		rxMsg = receiver();
		
		if(rxMsg == ' ')
			return 0;
	}
	
	return 1;
}

unsigned char serialControl(struct SChar scmap[8],struct Map map[4][16]){
	
	unsigned char logic_op = 1;
	
	LCD_putSCharAt(player->sline,player->scol, player->line,player->col);

	if(RI){
		rxMsg = receiver();
			
		if(rxMsg == 'w' || rxMsg == 'W'){		
			// ================ Lógica da Colisão para Cima ================
			if((player->sline - 1) >0)
				logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-2] & (pow(2,5-player->scol));
			else if(player->sline == 1 && player->line > 1)
				logic_op = scmap[(map[player->line-2][player->col-1].schar) - 1].adds[7] & (pow(2,5-player->scol));
			else if(player->sline == 1 && player->line == 1 )
				return 0;
			// ================ Lógica da Colisão para Cima ================

			if(logic_op == 0){
				if(player->sline != 1)
					player->sline--;
				else{
					if(player->line != 1){
						player->sline = 8;
						player->line--;
					}
				}
			}
			else{
				//	tocar bip;
			}
		}
		else if(rxMsg == 's' || rxMsg == 'S'){
			
			// ===============Lógica da Colisão para Baixo===============
			if((player->sline-1) < 7)
				logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline] & (pow(2,5-player->scol));
			else //if(player->sline == 8 && player->line < 4)
				logic_op = scmap[(map[player->line][player->col-1].schar) - 1].adds[0] & (pow(2,5-player->scol));	
			//else if(player->sline == 8 && player->line == 4 )
			//	return 0;
			// ===============Lógica da Colisão para Baixo===============
			
			if(logic_op == 0){
				if(player->sline != 8)
					player->sline++;
				else{
					if(player->line != 4){
						player->sline = 1;
						player->line++;
					}
				}
			}
			else{
				//	tocar bip;
			}
			
		}
		else if(rxMsg == 'd' || rxMsg == 'D'){
			
			// ==============Lógica da Colisão para a Direita==============
			if((player->scol+1)<6)
				logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-1] & (pow(2,5-(player->scol+1)));
			else if(player->scol==5 && player->col <16)
				logic_op = scmap[(map[player->line-1][player->col].schar) - 1].adds[player->sline-1] & (pow(2,5-(1)));
			else if(player->scol==5 && player->col ==16)
				return 0;
			// ==============Lógica da Colisão para a Direita==============
			
			if(logic_op == 0){
				
				if(player->scol != 5)
					player->scol++;
				else{
					if(player->col != 16){
						player->scol = 1;
						player->col++;
					}
				}
			}
			else{
				//	tocar bip;
			}
		}
		else if(rxMsg == 'a' || rxMsg == 'A'){
			
			// ==============Lógica da Colisão para a Esquerda==============
			if((player->scol-2)>-1)
				logic_op = scmap[(map[player->line-1][player->col-1].schar) - 1].adds[player->sline-1] & (pow(2,5-(player->scol-1)));
			else if(player->scol==1 && player->col >1)
				logic_op = scmap[(map[player->line-1][player->col-2].schar) - 1].adds[player->sline-1] & (pow(2,5-(5)));
			else if(player->scol==1 && player->col == 1)
				return 0;
			// ==============Lógica da Colisão para a Esquerda==============
			
			if(logic_op == 0){
				if(player->scol != 1)
					player->scol--;
				else{
					if(player->col != 1){
						player->scol = 5;
						player->col--;
					}
				}
			}
			else{
				//	tocar bip;
			}
		}

		//clearLCD();
		//clearPoint();
		printMap();
		RI = 0;
	}
	
	return 1;
	
	//delay(100,1);
}