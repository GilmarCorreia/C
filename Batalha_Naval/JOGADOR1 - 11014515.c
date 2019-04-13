#include "batalha.h"
#include <math.h>
#include <time.h>

#define total ((NSUBS*SUBMARINO_SIZE)+(NCORVS*CORVETA_SIZE)+(FRAGATA_SIZE)+(AERODROMO_SIZE))

typedef struct {
	int linha;    //QUAL LINHA ESTÁ O VEÍCULO
	int coluna1;  //INDICA A POSIÇÃO INICIAL DO VEÍCULO
	int coluna2;  //INDICA A POSIÇÃO FINAL DO VEÍCULO
	int size;	  //INDICA O TAMANHO DO VEÍCULO COLOCADO
	int impactos; //INDICA QUAL FOI ABATIDO
	int casas[5];
} posicao_de_navio_11014515;


//  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
//  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  S  |  0  |
//  0  |  0  |  S  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
//  F  |  0  |  0  |  0  |  0  |  C  |  0  |  0  |  0  |  0  |
//  F  |  0  |  0  |  0  |  0  |  C  |  0  |  0  |  0  |  0  |
//  F  |  0  |  0  |  0  |  0  |  0  |  0  |  S  |  0  |  0  |
//  0  |  0  |  0  |  C  |  C  |  0  |  0  |  0  |  0  |  0  |
//  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
//  0  |  0  |  0  |  A  |  A  |  A  |  A  |  A  |  0  |  0  |
//  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |

posicao_de_navio_11014515 navios_11014515[] = {
	{1,8,8,SUBMARINO_SIZE,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
	{2,2,2,SUBMARINO_SIZE,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
	{5,7,7,SUBMARINO_SIZE,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
	{3,5,5,CORVETA_SIZE,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
	{6,3,4,CORVETA_SIZE,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
	{3,0,0,FRAGATA_SIZE,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
	{8,3,7,AERODROMO_SIZE,0,{AGUA,AGUA,AGUA,AGUA,AGUA}}
};

static unsigned int i, j, k, true=0;

typedef struct {
	float euclid[total];
	int index[total];
} matrix;

void PrintTabuleiro(t_coordenada coordenadas[total]){

	int l=1;

	for(i=0; i<10; i++){
		for(j=0; j<10; j++){
			for(k=0; k<total && true!=1; k++){
				if(i==coordenadas[k].linha && j==coordenadas[k].coluna){
					if(l<10)
						printf("%d   ",l);
					else
						printf("%d  ",l);
					l++;
					true = 1;
				}
			}

			if(true<=0)
				printf("0   ");

			true = 0;

		}
		printf("\n");
	}
	printf("\n");
}

matrix sort(matrix vetor){

	//Função que organiza uma matriz dada de distancias e indices
	// em ordem crescente.

	static matrix sort = {{0},{0}};
	float menor;

	for(i=0;i<total;i++){
		menor = vetor.euclid[i];
		k = i;
		for(j=0;j<total;j++){
			if((vetor.euclid[j])<menor && (vetor.euclid[j])<1000){
				menor = (vetor.euclid[j]);
				k = j;
			}
		}
		(vetor.euclid[k])=1000;
		sort.euclid[i] = menor;
		sort.index[i] = k;
	}

	printf("Sort: ");
	for(i=0;i<total;i++)
		printf("%.2f ", sort.euclid[i]);
	printf("\n");

	printf("Sort: ");
	for(i=0;i<total;i++)
		printf("%.4d ", sort.index[i]);
	printf("\n");

	return sort;
}

float* MenorDist(t_coordenada coordenadas[total], int refer, int n){

	// Função que calcula as n menores distâncias entre uma
	// coordenada de referência (refer) das coordenadas existentes;

	matrix distancias = {{0},{0}};
	static float menorDist[5];

	for(i=0;i<total;i++){
		if(i!=refer){
			distancias.euclid[i] = sqrt(((coordenadas[refer].linha - coordenadas[i].linha)*(coordenadas[refer].linha - coordenadas[i].linha))
						  + ((coordenadas[refer].coluna - coordenadas[i].coluna)*(coordenadas[refer].coluna - coordenadas[i].coluna)));
			distancias.index[i] = i;
		}
	}

	printf("Distancias: ");
	for(i=0;i<total;i++)
		printf("%.2f ", distancias.euclid[i]);
	printf("\n");

	printf("Distancias: ");
	for(i=0;i<total;i++)
		printf("%.4d ", distancias.index[i]);
	printf("\n");

	matrix teste = sort(distancias);

	for(i=1;i<n+1;i++)
		menorDist[i-1]= teste.euclid[i];

	return menorDist;
}

t_coordenada atira_11014515(t_dados *dados){

	t_coordenada coordenadas[total];
	srand(time(NULL));

	for(i=0; i<total;i++){
		true = 1;
		while(true){
			coordenadas[i].linha = (rand() % 10);
			coordenadas[i].coluna= (rand() % 10);
			true = 0;
			for(j=0;j<i && true!=1;j++){
				if((coordenadas[i].linha == coordenadas[j].linha) && (coordenadas[i].coluna == coordenadas[j].coluna))
					true = 1;
			}
		}
		printf("x: %d, y: %d \n",coordenadas[i].linha,coordenadas[i].coluna);
	}
	printf("\n");

	PrintTabuleiro(coordenadas);

	float* menor0 = MenorDist(coordenadas, 0, 5);

	for(i=0;i<5;i++)
		printf("%.2f ",*(menor0+i));

	t_coordenada c;
	c.linha = 0;
	c.coluna = 0;
	return c;
}

void impacto_11014515(t_coordenada c, t_impacto i, t_dados *dados){

	/*
	 * Recebe o resultado do impacto no oponente
	 */

	return;

}

typedef struct stdados_11014515 {
	posicao_de_navio_11014515 *posicao_dos_meus_navios;
} dados_11014515;

t_impacto alvejado_11014515(t_coordenada c, t_dados *dados){

	/*
	 * Recebe tiro do oponente e retorna o resultado do impacto
	 */

	int j;
	int casa;
	t_impacto i = AGUA;
	dados_11014515 *d = (dados_11014515 *)dados->userstruct;
	posicao_de_navio_11014515 *p;

	for(j=0;j<7;j++)
	{
		p = &d->posicao_dos_meus_navios[j];
		if(c.linha == p->linha)
			if( c.coluna >= p->coluna1 &&
				c.coluna <= p->coluna2)
			{
				i = ACERTOU;
				casa = c.coluna - p->coluna1;
				if(p->casas[casa]==AGUA)
				{
					p->casas[casa] = ACERTOU;
					p->impactos++;
				}
				if(p->impactos == p->size)
					i = AFUNDOU;
				return i;
			}
	}
	return i;
}

void construtor_11014515(t_dados *dados){
	/*
	* inicia dados e
	* Informa a posicao dos navios no inicio do jogo
	* ao controle do jogo
	*/

	dados->ra="11014515";
	t_frota mf = {
				{
						{navios_11014515[0].linha,navios_11014515[0].coluna1,HOR},
						{navios_11014515[1].linha,navios_11014515[1].coluna1,HOR},
						{navios_11014515[2].linha,navios_11014515[2].coluna1,HOR}},
				{
						{navios_11014515[3].linha,navios_11014515[3].coluna1,HOR},
						{navios_11014515[4].linha,navios_11014515[4].coluna1,HOR}
				},
				{navios_11014515[5].linha,navios_11014515[5].coluna1,HOR},
				{navios_11014515[6].linha,navios_11014515[6].coluna1,HOR}
		};
	dados->f = mf;
	dados->userstruct_size = sizeof(dados_11014515);
	dados->atira = &atira_11014515;
	dados->alvejado = &alvejado_11014515;
	dados->impacto = &impacto_11014515;

	dados_11014515 *d = (dados_11014515 *)dados->userstruct;
	d->posicao_dos_meus_navios = navios_11014515;
	return;
}


