#ifndef BATALHA_H_
#define BATALHA_H_

#include <stdio.h>
#include <stdlib.h>

#define DATASIZE 10000

#define NSUBS 3
#define NCORVS 2
#define NLINHAS 10
#define NCOLUNAS 10

#define SUBMARINO_SIZE 1
#define CORVETA_SIZE 2
#define FRAGATA_SIZE 3
#define AERODROMO_SIZE 5

typedef enum {
	NULO,
	AGUA,
	ACERTOU,
	AFUNDOU,
	VITORIA
} t_impacto;

typedef enum {
	HOR,
	VERT
} t_orientacao;

typedef struct {
	int linha;
	int coluna;
} t_coordenada;

typedef struct {
	int linha;
	int coluna;
	t_orientacao orientacao;
} t_navio;

typedef struct {
	t_navio s[NSUBS];
	t_navio c[NCORVS];
	t_navio f;
	t_navio a;
} t_frota;

typedef struct stdados{
	char *ra;
	t_frota f;
	void *userstruct;
	int userstruct_size;
	t_coordenada (*atira)(struct stdados *dados);
	t_impacto (*alvejado)(t_coordenada c, struct stdados *dados);
	void (*impacto)(t_coordenada c, t_impacto i, struct stdados *dados);
} t_dados;

#endif /* BATALHA_H_ */
