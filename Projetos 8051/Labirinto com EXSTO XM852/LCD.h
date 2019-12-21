
#ifndef LCD_H_INCLUDED
#define LCD_H_INCLUDED

#define clearDisp 0x01		// Limpa o display (slide:10 do 07_LCD.pdf de sistmicro )
#define cursorHomeL1 0x80	// Colocar o cursor no primeiro segmento
#define cursorHomeL2 0xC0	// Colocar o cursor no segundo segmento
#define cursorHomeL3 0x90	// Colocar o cursor no terceiro segmento
#define cursorHomeL4 0xD0	// Colocar o cursor no quarto segmento

#define entryModeShift 0x06	// Habilitar deslocamento para a direita
#define configFunc 0x3F		// Habilitar (0 0 0 0 1 DL N F x x) no qual DL = (1 - 8 bits ou 0 - 4bits)
									//  N = (1 - 2 linhas ou 0 - 1 linha)
									//  F = (1 - 5x10 pontos ou 0 - 5x7 pontos)
#define onoffControl 0x0C 	// Habilitar Displays, Cursor e Blink  (0 0 0 0 1 D C B)
#define setCgramAddress 0x40// Habilitar configuração na CGRam

#define dispWriteInst 0xFFC2 // Ativação do decodificador de endereços (F - A15 até A12, F - A11 até A8, C - A7 e A6, 0 - é o endereço CS_DISPLAY)
#define dispWriteData 0xFFD2 // Ativação do decodificador de endereços (F - A15 até A12, F - A11 até A8, D - A7 e A6, 0 - é o endereço CS_DISPLAY)
#define dispReadInst 0xFFE2 // Ativação do decodificador de endereços (F - A15 até A12, F - A11 até A8, E - A7 e A6, 0 - é o endereço CS_DISPLAY)
#define dispReadData 0xFFF2 // Ativação do decodificador de endereços (F - A15 até A12, F - A11 até A8, F - A7 e A6, 0 - é o endereço CS_DISPLAY)

#define LEFT 0x01
#define CENTER 0x02
#define RIGHT 0x03


static unsigned char __far __at dispWriteInst winstLCD; 	//  atribui valor ao endereço de instrucao de escrita
static unsigned char __far __at dispWriteData wdataLCD; 	//  atribui valor ao endereço de dados de escrita
static unsigned char __far __at dispReadInst rinstLCD; 		//  atribui valor ao endereço de instrucao de leitura
static unsigned char __far __at dispReadData rdataLCD; 		//  atribui valor ao endereço de dados de leitura

struct SChar{
	unsigned char adds[8];
};

struct Map{
	char schar;
};

static struct SChar point;
struct SChar SCmap[8];

struct Map map[4][16];

void LCDconfig();

unsigned char configMap(unsigned char pline, unsigned char pcol, unsigned char song);

void setMap1CGram();

void setMap2CGram();

void setMap3CGram();

void setMap4CGram();

void setMap5CGram();

void LCD_putTextAt(char* text, unsigned char line, unsigned char alignment);

unsigned char LCD_putText(char* text, unsigned char line, unsigned int time);

void LCD_putCharAt(char chr, unsigned char line, unsigned char col);

void LCD_putSCharAt(unsigned char sline, unsigned char scol, unsigned char line, unsigned char col);

void clearLCD();

void printMap();

void printMapAt(unsigned char row, unsigned char col);

void setCursorHomeAtLine(unsigned char line);
#endif
