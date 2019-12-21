#include <mcs51/8051.h>
#include "LCD.h"
#include "TIMER.h"
#include "Math.h"
#include "DAC.h"
#include "SERIAL.h"

void LCDconfig(){	
    winstLCD = clearDisp;						// Atribuindo instrucao
	delay(10,0);								// Delay 10 microsegundos
	winstLCD = configFunc;						// Atribuindo instrucao
	delay(10,0);
	winstLCD = entryModeShift;					// Atribuindo instrucao
	delay(10,0);
	winstLCD = onoffControl;					// Atribuindo instrucao
	delay(10,0);
}

void setCursorAt(unsigned char line, unsigned char col){
    if(line == 1)
        winstLCD = cursorHomeL1 + (col-1);
    else if(line == 2)
        winstLCD = cursorHomeL2 + (col-1);
    else if(line == 3)
        winstLCD = cursorHomeL3 + (col-1);
    else if(line == 4)
        winstLCD = cursorHomeL4 + (col-1);
	
    delay(10,0);
}

void setChar(char chr){
    wdataLCD = chr;
    delay(10,0);
}

void printMapAt(unsigned char row, unsigned char col){
	setCursorAt(row, col);
	setChar((map[row-1][col-1].schar) - 1);
}

void printMap(){
	unsigned char row, col;
	
	for(row = 0; row < 4; row++){
		for(col = 0 ;col<16;col++){
			setCursorAt(row+1, col+1);
			setChar((map[row][col].schar) - 1);
		}
	}
}

void setMap1CGram(){
	unsigned char n,m;
	
	unsigned char c0[] =  {0,0,0,0,0,0,0,0};
	unsigned char c1[] =  {0x1F,0x10,0x1F,0x10,0x13,0x12,0x12,0x12};
	unsigned char c2[] =  {0x1F,0x00,0x0E,0x04,0x1E,0x04,0x04,0x04};
	unsigned char c3[] =  {0x1F,0x01,0x0D,0x09,0x18,0x09,0x19,0x09};
	unsigned char c4[] =  {0x17,0x10,0x15,0x1C,0x04,0x0C,0x05,0x05};
	unsigned char c5[] =  {0x12,0x10,0x12,0x02,0x12,0x12,0x12,0x12};
	unsigned char c6[] =  {0x16,0x16,0x13,0x16,0x14,0x17,0x10,0x1F};
	unsigned char c7[] =  {0x15,0x15,0x11,0x04,0x15,0x15,0x14,0x1F};
	
	for(n = 0; n < 8 ;n++){
		SCmap[0].adds[n] = c0[n];
		SCmap[1].adds[n] = c1[n];
		SCmap[2].adds[n] = c2[n];
		SCmap[3].adds[n] = c3[n];
		SCmap[4].adds[n] = c4[n];
		SCmap[5].adds[n] = c5[n];
		SCmap[6].adds[n] = c6[n];
		SCmap[7].adds[n] = c7[n];
	}
	
	winstLCD = setCgramAddress;    				 // Atribuindo primeiro endereço da CGRAM
    delay(10,0);
	
	for(m = 0;m< 8; m++){
		for(n = 0; n < 8 ;n++){
			wdataLCD = SCmap[m].adds[n];                // Atribuindo escrita
			delay(10,0);
		}	
	}

	map[0][0].schar = 2;
	map[0][1].schar = 3;
	map[0][2].schar = 3;
	map[0][3].schar = 3;
	map[0][4].schar = 4;
	map[0][5].schar = 4;
	map[0][6].schar = 5;
	map[0][7].schar = 2;
	map[0][8].schar = 4;
	map[0][9].schar = 5;
	map[0][10].schar = 3;
	map[0][11].schar = 3;
	map[0][12].schar = 3;
	map[0][13].schar = 3;
	map[0][14].schar = 4;
	map[0][15].schar = 4;
	
	map[1][0].schar = 6;
	map[1][1].schar = 2;
	map[1][2].schar = 4;
	map[1][3].schar = 2;
	map[1][4].schar = 3;
	map[1][5].schar = 5;
	map[1][6].schar = 6;
	map[1][7].schar = 2;
	map[1][8].schar = 3;
	map[1][9].schar = 6;
	map[1][10].schar = 4;
	map[1][11].schar = 3;
	map[1][12].schar = 3;
	map[1][13].schar = 6;
	map[1][14].schar = 3;
	map[1][15].schar = 4;
	
	map[2][0].schar = 2;
	map[2][1].schar = 5;
	map[2][2].schar = 7;
	map[2][3].schar = 6;
	map[2][4].schar = 6;
	map[2][5].schar = 3;
	map[2][6].schar = 5;
	map[2][7].schar = 3;
	map[2][8].schar = 5;
	map[2][9].schar = 5;
	map[2][10].schar = 3;
	map[2][11].schar = 5;
	map[2][12].schar = 2;
	map[2][13].schar = 5;
	map[2][14].schar = 3;
	map[2][15].schar = 2;
	
	map[3][0].schar = 7;
	map[3][1].schar = 8;
	map[3][2].schar = 8;
	map[3][3].schar = 8;
	map[3][4].schar = 8;
	map[3][5].schar = 8;
	map[3][6].schar = 8;
	map[3][7].schar = 8;
	map[3][8].schar = 7;
	map[3][9].schar = 2;
	map[3][10].schar = 8;
	map[3][11].schar = 8;
	map[3][12].schar = 8;
	map[3][13].schar = 8;
	map[3][14].schar = 7;
	map[3][15].schar = 7;
	
	printMap();
	
}

void setMap2CGram(){
	unsigned char n,m;
	
	unsigned char c0[] =  {0,0,0,0,0,0,0,0};
	unsigned char c1[] =  {0x1B,0x10,0x17,0x10,0x13,0x14,0x02,0x11};
	unsigned char c2[] =  {0x1F,0x00,0x17,0x12,0x02,0x0B,0x08,0x05};
	unsigned char c3[] =  {0x1F,0x01,0x15,0x05,0x04,0x1D,0x00,0x13};
	unsigned char c4[] =  {0x1D,0x15,0x11,0x15,0x15,0x14,0x12,0x19};
	unsigned char c5[] =  {0x1C,0x1D,0x01,0x03,0x17,0x03,0x1B,0x1A};
	unsigned char c6[] =  {0x1D,0x11,0x13,0x17,0x14,0x15,0x10,0x1F};
	unsigned char c7[] =  {0x06,0x0F,0x0F,0x00,0x03,0x03,0x03,0x1F};
	
	for(n = 0; n < 8 ;n++){
		SCmap[0].adds[n] = c0[n];
		SCmap[1].adds[n] = c1[n];
		SCmap[2].adds[n] = c2[n];
		SCmap[3].adds[n] = c3[n];
		SCmap[4].adds[n] = c4[n];
		SCmap[5].adds[n] = c5[n];
		SCmap[6].adds[n] = c6[n];
		SCmap[7].adds[n] = c7[n];
	}
	
	winstLCD = setCgramAddress;    				 // Atribuindo primeiro endereço da CGRAM
    delay(10,0);
	
	for(m = 0;m< 8; m++){
		for(n = 0; n < 8 ;n++){
			wdataLCD = SCmap[m].adds[n];                // Atribuindo escrita
			delay(10,0);
		}	
	}

	map[0][0].schar = 2;
	map[0][1].schar = 3;
	map[0][2].schar = 4;
	map[0][3].schar = 3;
	map[0][4].schar = 3;
	map[0][5].schar = 3;
	map[0][6].schar = 5;
	map[0][7].schar = 4;
	map[0][8].schar = 4;
	map[0][9].schar = 4;
	map[0][10].schar = 2;
	map[0][11].schar = 3;
	map[0][12].schar = 4;
	map[0][13].schar = 3;
	map[0][14].schar = 3;
	map[0][15].schar = 4;
	
	map[1][0].schar = 5;
	map[1][1].schar = 6;
	map[1][2].schar = 8;
	map[1][3].schar = 2;
	map[1][4].schar = 5;
	map[1][5].schar = 5;
	map[1][6].schar = 6;
	map[1][7].schar = 8;
	map[1][8].schar = 8;
	map[1][9].schar = 2;
	map[1][10].schar = 6;
	map[1][11].schar = 5;
	map[1][12].schar = 3;
	map[1][13].schar = 6;
	map[1][14].schar = 4;
	map[1][15].schar = 5;
	
	map[2][0].schar = 5;
	map[2][1].schar = 3;
	map[2][2].schar = 4;
	map[2][3].schar = 8;
	map[2][4].schar = 4;
	map[2][5].schar = 3;
	map[2][6].schar = 2;
	map[2][7].schar = 3;
	map[2][8].schar = 6;
	map[2][9].schar = 5;
	map[2][10].schar = 6;
	map[2][11].schar = 3;
	map[2][12].schar = 4;
	map[2][13].schar = 2;
	map[2][14].schar = 6;
	map[2][15].schar = 8;
	
	map[3][0].schar = 7;
	map[3][1].schar = 2;
	map[3][2].schar = 8;
	map[3][3].schar = 8;
	map[3][4].schar = 4;
	map[3][5].schar = 6;
	map[3][6].schar = 7;
	map[3][7].schar = 7;
	map[3][8].schar = 8;
	map[3][9].schar = 7;
	map[3][10].schar = 4;
	map[3][11].schar = 7;
	map[3][12].schar = 8;
	map[3][13].schar = 8;
	map[3][14].schar = 7;
	map[3][15].schar = 4;
	
	printMap();
	
}

void setMap3CGram(){
	unsigned char n,m;
	
	unsigned char c0[] =  {0,0,0,0,0,0,0,0};
	unsigned char c1[] =  {0x1B,0x1B,0x18,0x19,0x1A,0x11,0x1A,0x19};
	unsigned char c2[] =  {0x1F,0x08,0x0A,0x0A,0x0A,0x0A,0x02,0x1F};
	unsigned char c3[] =  {0x1B,0x11,0x15,0x05,0x14,0x15,0x11,0x1B};
	unsigned char c4[] =  {0x19,0x13,0x17,0x10,0x03,0x1B,0x19,0x13};
	unsigned char c5[] =  {0x12,0x1B,0x1A,0x09,0x00,0x11,0x11,0x1B};
	unsigned char c6[] =  {0x12,0x17,0x10,0x12,0x15,0x14,0x13,0x1F};
	unsigned char c7[] =  {0x1B,0x11,0x15,0x00,0x15,0x00,0x15,0x1B};


	for(n = 0; n < 8 ;n++){
		SCmap[0].adds[n] = c0[n];
		SCmap[1].adds[n] = c1[n];
		SCmap[2].adds[n] = c2[n];
		SCmap[3].adds[n] = c3[n];
		SCmap[4].adds[n] = c4[n];
		SCmap[5].adds[n] = c5[n];
		SCmap[6].adds[n] = c6[n];
		SCmap[7].adds[n] = c7[n];
	}
	
	winstLCD = setCgramAddress;    				 // Atribuindo primeiro endereço da CGRAM
    delay(10,0);
	
	for(m = 0;m< 8; m++){
		for(n = 0; n < 8 ;n++){
			wdataLCD = SCmap[m].adds[n];                // Atribuindo escrita
			delay(10,0);
		}	
	}

	map[0][0].schar = 2;
	map[0][1].schar = 3;
	map[0][2].schar = 7;
	map[0][3].schar = 2;
	map[0][4].schar = 4;
	map[0][5].schar = 3;
	map[0][6].schar = 3;
	map[0][7].schar = 6;
	map[0][8].schar = 8;
	map[0][9].schar = 8;
	map[0][10].schar = 2;
	map[0][11].schar = 8;
	map[0][12].schar = 2;
	map[0][13].schar = 4;
	map[0][14].schar = 8;
	map[0][15].schar = 8;
	
	map[1][0].schar = 3;
	map[1][1].schar = 4;
	map[1][2].schar = 5;
	map[1][3].schar = 2;
	map[1][4].schar = 5;
	map[1][5].schar = 4;
	map[1][6].schar = 6;
	map[1][7].schar = 2;
	map[1][8].schar = 5;
	map[1][9].schar = 6;
	map[1][10].schar = 4;
	map[1][11].schar = 6;
	map[1][12].schar = 3;
	map[1][13].schar = 6;
	map[1][14].schar = 7;
	map[1][15].schar = 4;
	
	map[2][0].schar = 3;
	map[2][1].schar = 6;
	map[2][2].schar = 2;
	map[2][3].schar = 4;
	map[2][4].schar = 6;
	map[2][5].schar = 5;
	map[2][6].schar = 2;
	map[2][7].schar = 4;
	map[2][8].schar = 5;
	map[2][9].schar = 5;
	map[2][10].schar = 6;
	map[2][11].schar = 4;
	map[2][12].schar = 2;
	map[2][13].schar = 5;
	map[2][14].schar = 3;
	map[2][15].schar = 7;
	
	map[3][0].schar = 7;
	map[3][1].schar = 8;
	map[3][2].schar = 4;
	map[3][3].schar = 3;
	map[3][4].schar = 7;
	map[3][5].schar = 8;
	map[3][6].schar = 8;
	map[3][7].schar = 3;
	map[3][8].schar = 6;
	map[3][9].schar = 3;
	map[3][10].schar = 7;
	map[3][11].schar = 8;
	map[3][12].schar = 6;
	map[3][13].schar = 7;
	map[3][14].schar = 2;
	map[3][15].schar = 7;
	
	printMap();
	
}

void setMap4CGram(){
	unsigned char n,m;
	
	unsigned char c0[] =  {0,0,0,0,0,0,0,0};
	unsigned char c1[] =  {0x1F,0x19,0x15,0x11,0x14,0x15,0x12,0x1A};
	unsigned char c2[] =  {0x1F,0x01,0x05,0x08,0x11,0x05,0x09,0x12};
	unsigned char c3[] =  {0x1B,0x11,0x00,0x1B,0x11,0x00,0x11,0x1B};
	unsigned char c4[] =  {0x12,0x0A,0x09,0x04,0x19,0x03,0x19,0x0B};
	unsigned char c5[] =  {0x12,0x16,0x13,0x18,0x12,0x16,0x13,0x1B};
	unsigned char c6[] =  {0x1A,0x11,0x15,0x14,0x12,0x15,0x10,0x1F};
	unsigned char c7[] =  {0x13,0x05,0x09,0x09,0x05,0x15,0x01,0x1F};

	for(n = 0; n < 8 ;n++){
		SCmap[0].adds[n] = c0[n];
		SCmap[1].adds[n] = c1[n];
		SCmap[2].adds[n] = c2[n];
		SCmap[3].adds[n] = c3[n];
		SCmap[4].adds[n] = c4[n];
		SCmap[5].adds[n] = c5[n];
		SCmap[6].adds[n] = c6[n];
		SCmap[7].adds[n] = c7[n];
	}
	
	winstLCD = setCgramAddress;    				 // Atribuindo primeiro endereço da CGRAM
    delay(10,0);
	
	for(m = 0;m< 8; m++){
		for(n = 0; n < 8 ;n++){
			wdataLCD = SCmap[m].adds[n];                // Atribuindo escrita
			delay(10,0);
		}	
	}

	map[0][0].schar = 2;
	map[0][1].schar = 8;
	map[0][2].schar = 3;
	map[0][3].schar = 2;
	map[0][4].schar = 3;
	map[0][5].schar = 3;
	map[0][6].schar = 2;
	map[0][7].schar = 7;
	map[0][8].schar = 7;
	map[0][9].schar = 2;
	map[0][10].schar = 7;
	map[0][11].schar = 8;
	map[0][12].schar = 8;
	map[0][13].schar = 4;
	map[0][14].schar = 8;
	map[0][15].schar = 2;
	
	map[1][0].schar = 6;
	map[1][1].schar = 5;
	map[1][2].schar = 6;
	map[1][3].schar = 4;
	map[1][4].schar = 5;
	map[1][5].schar = 4;
	map[1][6].schar = 4;
	map[1][7].schar = 4;
	map[1][8].schar = 3;
	map[1][9].schar = 6;
	map[1][10].schar = 4;
	map[1][11].schar = 6;
	map[1][12].schar = 5;
	map[1][13].schar = 3;
	map[1][14].schar = 4;
	map[1][15].schar = 7;
	
	map[2][0].schar = 6;
	map[2][1].schar = 4;
	map[2][2].schar = 5;
	map[2][3].schar = 6;
	map[2][4].schar = 4;
	map[2][5].schar = 5;
	map[2][6].schar = 5;
	map[2][7].schar = 7;
	map[2][8].schar = 6;
	map[2][9].schar = 4;
	map[2][10].schar = 6;
	map[2][11].schar = 4;
	map[2][12].schar = 3;
	map[2][13].schar = 5;
	map[2][14].schar = 3;
	map[2][15].schar = 8;
	
	map[3][0].schar = 7;
	map[3][1].schar = 6;
	map[3][2].schar = 7;
	map[3][3].schar = 3;
	map[3][4].schar = 5;
	map[3][5].schar = 8;
	map[3][6].schar = 7;
	map[3][7].schar = 7;
	map[3][8].schar = 8;
	map[3][9].schar = 6;
	map[3][10].schar = 7;
	map[3][11].schar = 8;
	map[3][12].schar = 6;
	map[3][13].schar = 7;
	map[3][14].schar = 5;
	map[3][15].schar = 8;
	
	printMap();
	
}

void setMap5CGram(){
	unsigned char n,m;
	
	unsigned char c0[] =  {0,0,0,0,0,0,0,0};
	unsigned char c1[] =  {0x1F,0x19,0x15,0x11,0x14,0x15,0x12,0x1A};
	unsigned char c2[] =  {0x1F,0x01,0x05,0x08,0x11,0x05,0x09,0x12};
	unsigned char c3[] =  {0x1B,0x11,0x00,0x1B,0x11,0x00,0x11,0x1B};
	unsigned char c4[] =  {0x12,0x0A,0x09,0x04,0x19,0x03,0x19,0x0B};
	unsigned char c5[] =  {0x12,0x16,0x13,0x18,0x12,0x16,0x13,0x1B};
	unsigned char c6[] =  {0x1A,0x11,0x15,0x14,0x12,0x15,0x10,0x17};
	unsigned char c7[] =  {0x13,0x05,0x09,0x09,0x05,0x15,0x01,0x1F};

	for(n = 0; n < 8 ;n++){
		SCmap[0].adds[n] = c0[n];
		SCmap[1].adds[n] = c1[n];
		SCmap[2].adds[n] = c2[n];
		SCmap[3].adds[n] = c3[n];
		SCmap[4].adds[n] = c4[n];
		SCmap[5].adds[n] = c5[n];
		SCmap[6].adds[n] = c6[n];
		SCmap[7].adds[n] = c7[n];
	}
	
	winstLCD = setCgramAddress;    				 // Atribuindo primeiro endereço da CGRAM
    delay(10,0);
	
	for(m = 0;m< 8; m++){
		for(n = 0; n < 8 ;n++){
			wdataLCD = SCmap[m].adds[n];                // Atribuindo escrita
			delay(10,0);
		}	
	}

	map[0][0].schar = 2;
	map[0][1].schar = 3;
	map[0][2].schar = 3;
	map[0][3].schar = 2;
	map[0][4].schar = 3;
	map[0][5].schar = 3;
	map[0][6].schar = 2;
	map[0][7].schar = 7;
	map[0][8].schar = 7;
	map[0][9].schar = 2;
	map[0][10].schar = 7;
	map[0][11].schar = 8;
	map[0][12].schar = 8;
	map[0][13].schar = 4;
	map[0][14].schar = 8;
	map[0][15].schar = 2;
	
	map[1][0].schar = 6;
	map[1][1].schar = 5;
	map[1][2].schar = 6;
	map[1][3].schar = 4;
	map[1][4].schar = 5;
	map[1][5].schar = 4;
	map[1][6].schar = 4;
	map[1][7].schar = 4;
	map[1][8].schar = 3;
	map[1][9].schar = 6;
	map[1][10].schar = 4;
	map[1][11].schar = 6;
	map[1][12].schar = 5;
	map[1][13].schar = 3;
	map[1][14].schar = 4;
	map[1][15].schar = 7;
	
	map[2][0].schar = 6;
	map[2][1].schar = 4;
	map[2][2].schar = 5;
	map[2][3].schar = 6;
	map[2][4].schar = 4;
	map[2][5].schar = 5;
	map[2][6].schar = 5;
	map[2][7].schar = 7;
	map[2][8].schar = 6;
	map[2][9].schar = 4;
	map[2][10].schar = 6;
	map[2][11].schar = 4;
	map[2][12].schar = 3;
	map[2][13].schar = 5;
	map[2][14].schar = 3;
	map[2][15].schar = 8;
	
	map[3][0].schar = 7;
	map[3][1].schar = 6;
	map[3][2].schar = 7;
	map[3][3].schar = 3;
	map[3][4].schar = 5;
	map[3][5].schar = 8;
	map[3][6].schar = 7;
	map[3][7].schar = 7;
	map[3][8].schar = 8;
	map[3][9].schar = 6;
	map[3][10].schar = 7;
	map[3][11].schar = 8;
	map[3][12].schar = 6;
	map[3][13].schar = 7;
	map[3][14].schar = 5;
	map[3][15].schar = 8;
	
	printMap();
	
}

unsigned char configMap(unsigned char pline, unsigned char pcol, unsigned char song){
	
	unsigned char control = serialControl(SCmap, map);
	delay(100,0);
	//sing(3);
	setCursorAt(pline, pcol);
	setChar((map[pline-1][pcol-1].schar) - 1);
	sing(song);
	//delay(100,0);
	
	return control;
}



void setCursorHomeAtLine(unsigned char line){
    if(line == 1)
        winstLCD = cursorHomeL1;
    else if(line == 2)
        winstLCD = cursorHomeL2;
    else if(line == 3)
        winstLCD = cursorHomeL3;
    else if(line == 4)
        winstLCD = cursorHomeL4;

    delay(10,0);
}



void setPlayerCursor(unsigned char pline, unsigned char pcol, unsigned char sline, unsigned char scol){
	
	unsigned char n;
	
	for(n = 0; n < 8 ;n++)
		point.adds[n]= SCmap[map[pline-1][pcol-1].schar-1].adds[n];
	
	point.adds[sline-1] += pow(2,5-scol);
	        
	winstLCD = 0x40;    				 // Atribuindo primeiro endereço da CGRAM
    delay(10,0);
	
	
	for(n = 0; n < 8 ;n++){
		wdataLCD = point.adds[n];                // Atribuindo escrita
        delay(10,0);
    }
}

void clearLCD(){
	winstLCD = clearDisp;						// Atribuindo instrucao
	delay(10,0);								// Delay 10 microsegundos
	winstLCD = configFunc;						// Atribuindo instrucao
	delay(10,0);
	winstLCD = entryModeShift;					// Atribuindo instrucao
	delay(10,0);
	winstLCD = onoffControl;					// Atribuindo instrucao
	delay(10,0);
}

void LCD_putTextAt(char* text, unsigned char line, unsigned char alignment){
	
	unsigned char n, col = 0, size;
	char txt[17] = {0};
	
	for(n = 0;text[n] != '\0';n++)
        txt[n] = text[n];
	
	size = n;
	
	if (alignment == LEFT)
		col = 1;
	else if(alignment == CENTER)
		col = (16-size)/2 + 1;
	else if(alignment == RIGHT)
		col = (16-size);
	
	setCursorAt(line, col);
	
	for(n = 0; n<size; n++)
		setChar(txt[n]);

}

unsigned char LCD_putText(char* text, unsigned char line, unsigned int time){

	unsigned char i = 0, j = 0, k =0,size, control = 1;
    char chr;
	char txt[50] = {0};

    for(i = 0;text[i] != '\0';i++)
        txt[i] = text[i];
		
	txt[i] = text[i];
    size = i;

    for(i=0;i < size && control ==1 ;i++){
		
		setCursorHomeAtLine(line);
		
		for(j = 0; j<16 && control ==1;j++)
        	setChar(txt[j]);				// Atribuindo escrita


		sing(1);
		delay(time-100,0);
		
        chr = txt[0];

        for(k = 1; k< size && control ==1;k++)
			txt[k-1] = txt[k];
		
		txt[size-1] = chr;
		
		control = serialBegin();
		
		if(control == 0)
			break;
    }
	
	return control;
}

void LCD_putCharAt(char chr, unsigned char line, unsigned char col){
	setCursorAt(line, col);
	setChar(chr);
}

void LCD_putSCharAt(unsigned char sline, unsigned char scol, unsigned char line, unsigned char col){
	setPlayerCursor(line,col,sline,scol);
	setCursorAt(line, col);
	setChar(0);
}