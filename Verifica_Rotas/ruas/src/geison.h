/*
 * geison.h
 *
 *  Created on: 6 de dez de 2017
 *      Author: Bryan Valeriano
 */

#ifndef GEISON_H_
#define GEISON_H_

#include <stdio.h>
#include <stdlib.h>

typedef struct{
	long int xInitial;
	long int yInitial;
	long int xFinal;
	long int yFinal;
} coordinates;

typedef struct{
	char *type;
	coordinates coord;
} geometry;

typedef struct{
	long int ID;
	long int length;
	//short int dir;
	//int data;
	//char *municipio;
	//char *distrito;
	//char *bairro;
	//char *nomesigla;
	//char *tipolog;
	//char nometit[2];
	//char nomeprep[2];
	//char name[2];
	int start_left;
	int end_left;
	int start_right;
	int end_right;
	short int parity;
	int left_zip;
	int right_zip;
	char *cep_e;
	char *cep_d;
	char *setorcep;
	int extensao_m;
	//char nome_acen[2];
	char *nome_caps;
	//int onibus;
} properties;

typedef struct{
	char *type;
	geometry geo;
	properties prop;
} dados;

typedef struct Nome{
	char *nome_caps;
	struct Nome *esq;
	struct Nome *dir;
} nome;

#endif /* GEISON_H_ */
