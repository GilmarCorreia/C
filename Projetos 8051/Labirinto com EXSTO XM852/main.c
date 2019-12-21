/*
=====================================================================================
=====================================PROJETO 2=======================================
=====================================================================================
Nomes:
	Gilmar Correia Jeronimo         - 11014515
	Lucas Barboza Moreira Pinheiro  - 11017015
*/

#include <mcs51/8051.h>
#include <stdio.h>
#include "LCD.h"
#include "TIMER.h"
#include "SERIAL.h"
#include "DAC.h"

volatile struct position *player;

void interruptConfig(){
	IE = 0x82; 								// Habilitando interrupções, Serial e timer0 (slide sistmicro 03_Interrupções.pdf pg.9)
	IP = 0x08;								// Prioridade de interrupção Serial
}

void configs(){
	interruptConfig();						// Habilitando configuracoes
	timerConfig();
	LCDconfig();
	serialConfig(1,player);
}


void setInitialScreen(){
	
	unsigned char control = 1;
		
	setMap1CGram();
	LCD_putTextAt("MAZE GAME",2,CENTER);
	
	while(control)
		control = LCD_putText(" aperte ESPACO para iniciar",3, 250);
	
	clearLCD();
	
}

void setInstructions(){
	
	LCD_putTextAt("INSTRUCOES",1,CENTER);
	LCD_putTextAt("1) Movimente com",2,LEFT);
	LCD_putTextAt("W,S,A,D ",3,CENTER);
	delay(3500,1);
	clearLCD();
	
	LCD_putTextAt("COMO GANHAR",1,CENTER);
	LCD_putTextAt("Ache uma saida ",2,LEFT);
	LCD_putTextAt("para CIMA,DIREI-",3,LEFT);
	LCD_putTextAt("TA ou ESQUERDA",4,LEFT);
	delay(3500,1);
	clearLCD();
}



void setLevel1(){
	unsigned char control = 1;
	
	LCD_putTextAt("NIVEL",2,CENTER);
	LCD_putTextAt("1",3,CENTER);
	delay(3000,1);
	clearLCD();
	
	player->sline = 7;
	player->scol = 3;
	player->line = 4;
	player->col = 10;
	
	printMap();
	
	while(control)
		control = configMap(player->line, player->col, 1);
	
	clearLCD();
}

void setLevel2(){
	unsigned char control = 1;
	
	LCD_putTextAt("NIVEL",2,CENTER);
	LCD_putTextAt("2",3,CENTER);
	delay(3000,1);
	clearLCD();
	
	setMap2CGram();
	
	player->sline = 7;
	player->scol = 2;
	player->line = 4;
	player->col = 2;
	
	while(control)
		control = configMap(player->line, player->col, 2);
	
	clearLCD();
}

void setLevel3(){
	unsigned char control = 1;
	
	LCD_putTextAt("NIVEL",2,CENTER);
	LCD_putTextAt("3",3,CENTER);
	delay(3000,1);
	clearLCD();
	
	setMap3CGram();
	
	player->sline = 5;
	player->scol = 5;
	player->line = 4;
	player->col = 10;
	
	while(control)
		control = configMap(player->line, player->col,3);
	
	clearLCD();
}

void setLevel4(){
	unsigned char control = 1;
	
	LCD_putTextAt("NIVEL",2,CENTER);
	LCD_putTextAt("4",3,CENTER);
	delay(3000,1);
	clearLCD();
	
	setMap4CGram();
	
	player->sline = 3;
	player->scol = 4;
	player->line = 4;
	player->col = 16;
	
	while(control)
		control = configMap(player->line, player->col,2);
	
	clearLCD();
}

void setLevel5(){
	unsigned char control = 1;
	
	LCD_putTextAt("NIVEL",2,CENTER);
	LCD_putTextAt("5",3,CENTER);
	delay(3000,1);
	clearLCD();
	
	setMap5CGram();
	
	player->sline = 7;
	player->scol = 5;
	player->line = 4;
	player->col = 1;
	
	while(control)
		control = configMap(player->line, player->col,2);
	
	clearLCD();
}
void setFinish(){
	LCD_putTextAt("VOCE",2,CENTER);
	LCD_putTextAt("VENCEU",3,CENTER);
	delay(3000,1);
}

void main(void){
	
    configs();
	
	while(1){
		setInitialScreen();
	
		setInstructions();
	
		setLevel1();
	
		setLevel2();

		setLevel3();
	
		setLevel4();

		setLevel5();
	
		setFinish();
	}
	
}

