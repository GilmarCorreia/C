#ifndef SERIAL_H_INCLUDED
#define SERIAL_H_INCLUDED

#include "LCD.h"

static char rxMsg = 0;

struct position{
	unsigned char sline;
	unsigned char scol;
	unsigned char line;
	unsigned char col;
};

//struct position player;

void transmitter(unsigned char message);

char receiver();

void serialConfig(unsigned char read,struct position *gamer);

unsigned char serialBegin();

unsigned char serialControl(struct SChar scmap[8], struct Map map[4][16]);
#endif
