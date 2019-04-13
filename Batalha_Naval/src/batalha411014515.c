#include "batalha.h"
#include <time.h>
#include <math.h>

#define TOTAL_411014515 ((NSUBS*SUBMARINO_SIZE)+(NCORVS*CORVETA_SIZE)+(FRAGATA_SIZE)+(AERODROMO_SIZE))
#define somar_411014515	2000
#define tirar_411014515	155

unsigned int i_411014515, j_411014515; //VARI�VEIS DE CONTROLE PARA FOR
static unsigned int loop_411014515 = 1; //CONTROLE DO PRIMEIRO TIRO
static unsigned int epoca_411014515 = 0;//CONTROLE DO tirosOpos[100]
static unsigned int maior50_411014515 = 0;
static unsigned int t_411014515 = 0;//CONTROLE DO meusTiros[100]
static unsigned int p_411014515 = 27;

static int random_411014515[10][10] = {0}; //SALVA OS VALORES RAND�MICOS DE POSI��O
static int random_2_411014515[10][10] = {0}; //SALVA OS VALORES RAND�MICOS DE POSI��O
static int random_3_411014515[10][10] = {0};

static int impactos_411014515[10][10] = {0}; //SALVA A CASA DOS NAVIOS ACERTADOS DO OPONENTE
static int frota_411014515[10][10] = {0}; //SALVA A CASA DOS MEUS NAVIOS

static t_coordenada tirosOpos_411014515[100] = {{-1},{-1}}; //SALVA AS COORDENADAS DOS TIROS DADOS PELO OPONENTE

static t_coordenada meusTiros_411014515[100] = {{-1},{-1}}; //SALVA AS COORDENADAS DO MEU TIRO

typedef struct {
	int linha;    //QUAL LINHA EST� O VE�CULO
	int coluna1;  //INDICA A POSI��O INICIAL DO VE�CULO
	int coluna2;  //INDICA A POSI��O FINAL DO VE�CULO
	int size;	  //INDICA O TAMANHO DO VE�CULO COLOCADO
	int impactos; //INDICA QUAL FOI ABATIDO
} posicao_de_navio_411014515;

typedef struct {
	int menor;
	int orient;
} t_menor_411014515;

/*
 	 	   0	 1	   2	 3	   4 	 5	   6 	 7	   8     9

0		|  0  |  F  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
1		|  0  |  F  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  S  |
2		|  0  |  F  |  0  |  S  |  0  |  0  |  0  |  0  |  0  |  0  |
3		|  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
4		|  0  |  0  |  C  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
5		|  S  |  0  |  C  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
6		|  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
7		|  0  |  C  |  C  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
8		|  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
9		|  A  |  A  |  A  |  A  |  A  |  0  |  0  |  0  |  0  |  0  |
*/

//INICIALIZA BARCOS DA SEQU�NCIA ACIMA
posicao_de_navio_411014515 navios_411014515[] = {
	{0,3,3,SUBMARINO_SIZE,0},
	{2,3,3,SUBMARINO_SIZE,0},
	{5,0,0,SUBMARINO_SIZE,0},
	{4,2,2,CORVETA_SIZE,0},
	{7,1,2,CORVETA_SIZE,0},
	{0,1,1,FRAGATA_SIZE,0},
	{9,0,4,AERODROMO_SIZE,0}
};

typedef struct stdados_411014515 {
	posicao_de_navio_411014515 *posicao_dos_meus_navios;
} dados_411014515;

typedef struct{
	t_coordenada N; // COORDENADA NORTE
	t_coordenada NE;// COORDENADA NORDESTE
	t_coordenada L; // COORDENADA LESTE
	t_coordenada SE;// COORDENADA SUDESTE
	t_coordenada S; // COORDENADA SUL
	t_coordenada SO;// COORDENADA SUDOESTE
	t_coordenada O; // COORDENADA OESTE
	t_coordenada NO;// COORDENADA NOROESTE
} rosa_411014515;

void PrintTabuleiroInt_411014515(int coordenadas[10][10]){
	/*
	 * FUN��O QUE IMPRIME O TABULEIRO 10X10 RECEBENDO N�MEROS INTEIROS
	 */
	for(i_411014515=0; i_411014515<10; i_411014515++){
		for(j_411014515=0; j_411014515<10; j_411014515++){
			if(coordenadas[i_411014515][j_411014515]<10)
				printf("%d    ",coordenadas[i_411014515][j_411014515]);
			else{
				if(coordenadas[i_411014515][j_411014515]<100 && coordenadas[i_411014515][j_411014515]>=10)
					printf("%d   ",coordenadas[i_411014515][j_411014515]);
				else{
					if(coordenadas[i_411014515][j_411014515]<1000 && coordenadas[i_411014515][j_411014515]>=100)
						printf("%d  ",coordenadas[i_411014515][j_411014515]);
					else
						printf("%d ",coordenadas[i_411014515][j_411014515]);
				}
			}
		}
		printf("\n");
	}
}

float* Normalizar_411014515(int coordenadas[10][10]){

	/*
	 * FUN��O QUE PEGA TODOS OS DADOS DE UMA MATRIZ 10X10 E NORMALIZA ELES
	 */
	static float Normalizado_411014515[100]={0};
	float soma = 0;

	for(i_411014515=0; i_411014515<200; i_411014515++)
		if(i_411014515<100)
			soma += coordenadas[i_411014515/10][i_411014515%10];
		else
			*(Normalizado_411014515+(i_411014515-100)) = (float) coordenadas[(i_411014515-100)/10][(i_411014515-100)%10]/soma;

	return Normalizado_411014515;
}

t_coordenada MaxPorc_411014515(float* coordenadas){

	/*
	 * FUN��O QUE ACHA A PARTIR DA MATRIZ NORMALIZADA QUAL COORDENADA TEM M�XIMA PORCENTAGEM
	 */

	t_coordenada max = {0,0};
	float maximo = *(coordenadas);

	for(i_411014515=0; i_411014515<100; i_411014515++){
		if(maximo<*(coordenadas+i_411014515)){
			maximo = *(coordenadas+i_411014515);
			max.linha = i_411014515/10;
			max.coluna = i_411014515%10;
		}
	}

	return max;
}

int randomico_411014515(){

	srand(p_411014515);

	p_411014515++;

	long int x = rand();

	int pot = rand()%5;

	int k, dez = 1;

	for(k=0;k<pot;k++)
		dez = dez * 10;

	long int alea = 0;

	if(pot!=1)
		alea = (x/dez)-((x/(dez * 10))*10);
	else
		alea = (x/10)-((x/(10*10))*10);

	long int* p = &(alea);
	alea += (int)p;
	alea += rand();

	if(maior50_411014515)
		alea += rand();

	pot = rand()%4;

	if(pot!=1)
		alea = (x/dez)-((x/(dez * 10))*10);
	else
		alea = (alea/10)-((alea/(10*10))*10);

	if(alea<0)
		alea = -1*alea;

	return alea;
}

t_coordenada atira_411014515(t_dados *dados){
	/*
	 * A FUN��O ATIRA_411014515 CRIA NA PRIMEIRA JOGADA UMA MATRIZ COM N�MEROS RAND�MICOS,
	 * A PARTIR DA DISTRIBUI��O SE NORMALIZA A MATRIZ E ACHA A COORDENADA DE M�XIMA PROBABILIDADE
	 * DE CONTER UMA EMBARCA��O.
	 *
	 * AP�S GUARDA O TIRO NO VETOR meusTiros.
	 */

	if(loop_411014515){
		for(i_411014515=0; i_411014515<155362;i_411014515++){
			random_411014515[randomico_411014515()][randomico_411014515()]++;
			random_2_411014515[rand()%10][rand()%10]++;
		}
		loop_411014515 = 0;
	}

	t_coordenada ca;

	ca.linha = MaxPorc_411014515(Normalizar_411014515(random_411014515)).linha;
	ca.coluna = MaxPorc_411014515(Normalizar_411014515(random_411014515)).coluna;

	t_coordenada cb;

	cb.linha = MaxPorc_411014515(Normalizar_411014515(random_2_411014515)).linha;
	cb.coluna = MaxPorc_411014515(Normalizar_411014515(random_2_411014515)).coluna;

	t_coordenada cc;

	cc.linha = MaxPorc_411014515(Normalizar_411014515(random_3_411014515)).linha;
	cc.coluna = MaxPorc_411014515(Normalizar_411014515(random_3_411014515)).coluna;

	t_coordenada c;

	if(random_411014515[ca.linha][ca.coluna]<random_2_411014515[cb.linha][cb.coluna] && (rand()%2))
		random_411014515[ca.linha][ca.coluna] = random_2_411014515[cb.linha][cb.coluna];
	else{
		if(random_411014515[ca.linha][ca.coluna]<random_3_411014515[cc.linha][cc.coluna] && (rand()%2))
			random_411014515[ca.linha][ca.coluna] = random_3_411014515[cc.linha][cc.coluna];
	}

	c.linha = MaxPorc_411014515(Normalizar_411014515(random_411014515)).linha;
	c.coluna = MaxPorc_411014515(Normalizar_411014515(random_411014515)).coluna;

	meusTiros_411014515[t_411014515] = c; //Guardo as coordenadas dos meus tiros
	t_411014515++;

	return c;
}

int repetido_411014515(t_coordenada s[100],t_coordenada f){
	/*
	 * A PARTIR DE UM VETOR DE COORDENADAS IDENTIFICA SE EXISTE UMA COORDENADA REPETIDA
	 * 1 SE FALSO
	 * 0 SE VERDADEIRO
	 */

	int logic = 1;

	for(j_411014515 = 0; j_411014515<100 && logic==1;j_411014515++){
		if(f.linha==s[j_411014515].linha && f.coluna==s[j_411014515].coluna)
			logic = 0;
	}

	return logic;
}

void arrumaRandom_411014515(rosa_411014515 ponto, int orient){
	/*
	 * FUN��O QUE ARRUMA A MATRIZ RANDOM OBSERVANDO A ORIENTA��O DO BARCO ATINGIDO.
	 *
	 * orient 2 -> SUBMARINO
	 * 		  1 -> VERT
	 * 		  0 -> HOR
	 */
	if((orient !=5)){
	if( (orient==2 || orient==0 || orient == 6) && repetido_411014515(meusTiros_411014515,ponto.N)!=0 && ponto.N.linha>=0 && ponto.N.coluna >= 0){
		random_411014515[ponto.N.linha][ponto.N.coluna] = 0;
		meusTiros_411014515[t_411014515] = ponto.N;
		t_411014515++;
	}}

	if(repetido_411014515(meusTiros_411014515,ponto.NE)!=0 && ponto.NE.linha >= 0 && ponto.NE.coluna >= 0){
		random_411014515[ponto.NE.linha][ponto.NE.coluna] = 0;
		meusTiros_411014515[t_411014515] = ponto.NE;
		t_411014515++;
	}

	if(repetido_411014515(meusTiros_411014515,ponto.NO)!=0 && ponto.NO.linha >= 0 && ponto.NO.coluna >= 0){
		random_411014515[ponto.NO.linha][ponto.NO.coluna] = 0;
		meusTiros_411014515[t_411014515] = ponto.NO;
		t_411014515++;
	}

	if(orient!=6){
	if((orient==2 || orient == 0 || orient == 5) && repetido_411014515(meusTiros_411014515,ponto.S)!=0 && ponto.S.linha >= 0 && ponto.S.coluna >= 0){
		random_411014515[ponto.S.linha][ponto.S.coluna] = 0;
		meusTiros_411014515[t_411014515] = ponto.S;
		t_411014515++;
	}}

	if(repetido_411014515(meusTiros_411014515,ponto.SE)!=0 && ponto.SE.linha >= 0 && ponto.SE.coluna >= 0){
		random_411014515[ponto.SE.linha][ponto.SE.coluna] = 0;
		meusTiros_411014515[t_411014515] = ponto.SE;
		t_411014515++;
	}

	if(repetido_411014515(meusTiros_411014515,ponto.SO)!=0 && ponto.SO.linha >= 0 && ponto.SO.coluna >= 0){
		random_411014515[ponto.SO.linha][ponto.SO.coluna] = 0;
		meusTiros_411014515[t_411014515] = ponto.SO;
		t_411014515++;
	}

	if((orient!=4 && orient!=0) && repetido_411014515(meusTiros_411014515,ponto.O)!=0 && ponto.O.linha >= 0 && ponto.O.coluna >= 0){
		random_411014515[ponto.O.linha][ponto.O.coluna] = 0;
		meusTiros_411014515[t_411014515] = ponto.O;
		t_411014515++;
	}

	if((orient!=3 && orient!=0) && repetido_411014515(meusTiros_411014515,ponto.L)!=0 && ponto.L.linha >= 0 && ponto.L.coluna >= 0){
		random_411014515[ponto.L.linha][ponto.L.coluna] = 0;
		meusTiros_411014515[t_411014515] = ponto.L;
		t_411014515++;
	}
}

t_menor_411014515 verificaProximidade_411014515(int matriz[10][10], t_coordenada e){
	/*
	 * FUN��O QUE VERIFICA A ORIENTA��O DE UM BARCO E A MENOR DIST�NCIA DE OUTRO IMPACTO,
	 * SE FOR MENOR = 1 SIGNIFICA QUE A EMBARCA��O TEM MAIS DE UM M�DULO, SE FOR MAIOR QUE 1
	 * � UM SUBMARINO
	 */

	matriz[e.linha][e.coluna]++;

	int menor = 100;
	int dist;
	int orient = 2;

	for(i_411014515=0;i_411014515<10;i_411014515++){
		for(j_411014515=0;j_411014515<10;j_411014515++){
			if (matriz[i_411014515][j_411014515]!=0){
				dist = ((i_411014515-e.linha)*(i_411014515-e.linha)) + ((j_411014515-e.coluna)*(j_411014515-e.coluna));
				if(dist<menor && dist>0){
					menor = dist;
					if(((i_411014515-e.linha)*(i_411014515-e.linha))<=0)
						orient = 0;
					if(( (j_411014515-e.coluna)*(j_411014515-e.coluna) )<=0)
						orient = 1;
				}
			}
		}
	}

	t_menor_411014515 navio = {menor,orient};

	frota_411014515[e.linha][e.coluna]--;

	return navio;
}

rosa_411014515 rosaDosVentos_411014515(t_coordenada d){

	/*
	 * FUN��O QUE RETORNA, A PARTIR DE UM PONTO, SUAS COORDENADAS ADJACENTES
	 */

	rosa_411014515 ponto;

	ponto.N.linha  = d.linha-1; ponto.N.coluna  = d.coluna;
	ponto.NE.linha = d.linha-1; ponto.NE.coluna = d.coluna+1;
	ponto.L.linha  = d.linha;   ponto.L.coluna  = d.coluna+1;
	ponto.SE.linha = d.linha+1; ponto.SE.coluna = d.coluna+1;
	ponto.S.linha  = d.linha+1; ponto.S.coluna  = d.coluna;
	ponto.SO.linha = d.linha+1; ponto.SO.coluna = d.coluna-1;
	ponto.O.linha  = d.linha;   ponto.O.coluna  = d.coluna-1;
	ponto.NO.linha = d.linha-1; ponto.NO.coluna = d.coluna-1;

	if(d.coluna==0){
		ponto.O.linha = -1; ponto.O.coluna = -1;
		ponto.SO.linha = -1; ponto.SO.coluna = -1;
		ponto.NO.linha = -1; ponto.NO.coluna = -1;
	}

	if(d.coluna==9){
		ponto.L.linha = -1; ponto.L.coluna = -1;
		ponto.SE.linha = -1; ponto.SE.coluna = -1;
		ponto.NE.linha = -1; ponto.NE.coluna = -1;
	}

	if(d.linha==0){
		ponto.N.linha = -1; ponto.N.coluna = -1;
		ponto.NE.linha = -1; ponto.NE.coluna = -1;
		ponto.NO.linha = -1; ponto.NO.coluna = -1;
	}

	if(d.linha==9){
		ponto.S.linha = -1; ponto.S.coluna = -1;
		ponto.SE.linha = -1; ponto.SE.coluna = -1;
		ponto.SO.linha = -1; ponto.SO.coluna = -1;
	}

	return ponto;
}

void impacto_411014515(t_coordenada c, t_impacto imp, t_dados *dados){

	/*
	 * Recebe o resultado do impacto no oponente
	 */
	random_411014515[c.linha][c.coluna]=0;

	rosa_411014515 ponto = rosaDosVentos_411014515(c);

	if(imp == 1){
		if(repetido_411014515(meusTiros_411014515,ponto.L)!=0 && ponto.L.linha>=0 && ponto.L.coluna>=0)
			random_411014515[ponto.L.linha][ponto.L.coluna]-=tirar_411014515;

		if(repetido_411014515(meusTiros_411014515,ponto.O)!=0 && ponto.O.linha>=0 && ponto.O.coluna>=0)
			random_411014515[ponto.O.linha][ponto.O.coluna]-=tirar_411014515;

		if(repetido_411014515(meusTiros_411014515,ponto.N)!=0 && ponto.N.linha>=0 && ponto.N.coluna>=0)
			random_411014515[ponto.N.linha][ponto.N.coluna]-=tirar_411014515;

		if(repetido_411014515(meusTiros_411014515,ponto.S)!=0 && ponto.S.linha>=0 && ponto.S.coluna>=0)
			random_411014515[ponto.S.linha][ponto.S.coluna]-=tirar_411014515;
	}


	t_menor_411014515 perto;

	if(imp == 3){ //SE O TIRO AFUNDOU E N�O ESTAVA PR�XIMO DE NENHUM OUTRO IMPACTO
				  //SIGNIFICA QUE ERA UM SUBMARINO, ZERAR AS CASAS ADJACENTES
		random_411014515[c.linha][c.coluna]=1;
		perto = verificaProximidade_411014515(impactos_411014515,c);

		//printf("\n orient: %d\n",perto.orient);

		if(perto.menor>1 || perto.menor>=100)
			arrumaRandom_411014515(ponto,2);

		if(perto.menor<=1 && perto.orient == HOR && random_411014515[ponto.O.linha][ponto.O.coluna] != 1 && random_411014515[ponto.L.linha][ponto.L.coluna] == 1){
			arrumaRandom_411014515(ponto,3);
			c = ponto.L;
			ponto = rosaDosVentos_411014515(c);
			while(random_411014515[ponto.O.linha][ponto.O.coluna] == 1  && random_411014515[ponto.L.linha][ponto.L.coluna] == 1){
				c = ponto.L;
				ponto = rosaDosVentos_411014515(c);
			}
			arrumaRandom_411014515(ponto,4);
		}

		if(perto.menor<=1 && perto.orient == HOR && random_411014515[ponto.O.linha][ponto.O.coluna] == 1 && random_411014515[ponto.L.linha][ponto.L.coluna] != 1){
			arrumaRandom_411014515(ponto,4);
			c = ponto.O;
			ponto = rosaDosVentos_411014515(c);
			while(random_411014515[ponto.O.linha][ponto.O.coluna] == 1  && random_411014515[ponto.L.linha][ponto.L.coluna] == 1){
				c = ponto.O;
				ponto = rosaDosVentos_411014515(c);
			}
			arrumaRandom_411014515(ponto,3);
		}

		if(perto.menor<=1 && perto.orient == VERT && random_411014515[ponto.N.linha][ponto.N.coluna] == 1 && random_411014515[ponto.S.linha][ponto.S.coluna] != 1){
			arrumaRandom_411014515(ponto,5);
			c = ponto.N;
			ponto = rosaDosVentos_411014515(c);
			while(random_411014515[ponto.S.linha][ponto.S.coluna] == 1  && random_411014515[ponto.N.linha][ponto.N.coluna] == 1){
				c = ponto.N;
				ponto = rosaDosVentos_411014515(c);
			}
			arrumaRandom_411014515(ponto,6);
		}

		if(perto.menor<=1 && perto.orient == VERT && random_411014515[ponto.N.linha][ponto.N.coluna] != 1 && random_411014515[ponto.S.linha][ponto.S.coluna] == 1){
			arrumaRandom_411014515(ponto,6);
			c = ponto.S;
			ponto = rosaDosVentos_411014515(c);
			while(random_411014515[ponto.S.linha][ponto.S.coluna] == 1  && random_411014515[ponto.N.linha][ponto.N.coluna] == 1){
				c = ponto.S;
				ponto = rosaDosVentos_411014515(c);
			}
			arrumaRandom_411014515(ponto,5);
		}

	}

	if(imp == 2){
		random_411014515[c.linha][c.coluna]=1;
		perto = verificaProximidade_411014515(impactos_411014515,c);

		if(repetido_411014515(meusTiros_411014515,ponto.N)!=0 && ponto.N.linha>=0 && ponto.N.coluna>=0)
			random_411014515[ponto.N.linha][ponto.N.coluna] +=somar_411014515;

		if(repetido_411014515(meusTiros_411014515,ponto.L)!=0 && ponto.L.linha>=0 && ponto.L.coluna>=0)
			random_411014515[ponto.L.linha][ponto.L.coluna] +=somar_411014515;

		if(repetido_411014515(meusTiros_411014515,ponto.S)!=0 && ponto.S.linha>=0 && ponto.S.coluna>=0)
			random_411014515[ponto.S.linha][ponto.S.coluna] +=somar_411014515;

		if(repetido_411014515(meusTiros_411014515,ponto.O)!=0 && ponto.O.linha>=0 && ponto.O.coluna>=0)
			random_411014515[ponto.O.linha][ponto.O.coluna] +=somar_411014515;

		if(perto.menor<=1 && perto.orient == HOR)
			arrumaRandom_411014515(ponto,HOR);

		if(perto.menor<=1 && perto.orient == VERT)
			arrumaRandom_411014515(ponto,VERT);
	}

	if(imp == 4)
		random_411014515[c.linha][c.coluna]=1;

	//printf("\n");

	//PrintTabuleiroInt_411014515(random_411014515);

}

t_impacto alvejado_411014515(t_coordenada c, t_dados *dados){

	/*
	 * Recebe tiro do oponente e retorna o resultado do impacto
	 */

	t_impacto imp = AGUA;
	int BOOL = 1;

	for(i_411014515=0;i_411014515<7 && BOOL == 1;i_411014515++){
		if(navios_411014515[i_411014515].coluna2 != navios_411014515[i_411014515].coluna1){
			if(c.linha==navios_411014515[i_411014515].linha && c.coluna>=navios_411014515[i_411014515].coluna1 && c.coluna<=navios_411014515[i_411014515].coluna2){
				imp = ACERTOU;
				if(repetido_411014515(tirosOpos_411014515,c))
					navios_411014515[i_411014515].impactos++;
				if(navios_411014515[i_411014515].impactos == navios_411014515[i_411014515].size)
					imp = AFUNDOU;
				BOOL = 0;
			}
		}
		else{
			if(c.linha >= navios_411014515[i_411014515].linha && c.linha<=(navios_411014515[i_411014515].linha+navios_411014515[i_411014515].size-1) && c.coluna==navios_411014515[i_411014515].coluna1){
				imp = ACERTOU;
				if(repetido_411014515(tirosOpos_411014515,c))
					navios_411014515[i_411014515].impactos++;
				if(navios_411014515[i_411014515].impactos == navios_411014515[i_411014515].size)
					imp = AFUNDOU;
				BOOL = 0;
			}
		}
	}

	tirosOpos_411014515[epoca_411014515] = c;
	epoca_411014515++;

	return imp;
}

t_frota minhaFrota_411014515(){

	t_frota mf;

	int teste = 0;

	while(teste<1000){

	int total2;

	do{
		total2 = 0;

		srand(p_411014515);

		p_411014515++;

		for(i_411014515 = 0; i_411014515 < 100;i_411014515++)
			frota_411014515[i_411014515/10][i_411014515%10] = 0;

		/*
		* Posicionando o AERODROMO
		*/

		if(randomico_411014515()%2==0){
			mf.a.orientacao = HOR;
			mf.a.linha = randomico_411014515();
			mf.a.coluna = randomico_411014515();
			while (mf.a.coluna>5)
				mf.a.coluna = randomico_411014515();

			navios_411014515[6].linha = mf.a.linha;
			navios_411014515[6].coluna1 = mf.a.coluna;
			navios_411014515[6].coluna2 = mf.a.coluna + (navios_411014515[6].size - 1);
		}
		else{
			mf.a.orientacao = VERT;
			mf.a.coluna = randomico_411014515();
			mf.a.linha = randomico_411014515();
			while (mf.a.linha>5)
				mf.a.linha = randomico_411014515();

			navios_411014515[6].linha = mf.a.linha;
			navios_411014515[6].coluna1 = mf.a.coluna;
			navios_411014515[6].coluna2 = mf.a.coluna;
		}

		for(i_411014515 = 0; i_411014515<5; i_411014515++){
			if(mf.a.orientacao==HOR)
				frota_411014515[mf.a.linha][mf.a.coluna+i_411014515] = 1;
			else
				frota_411014515[mf.a.linha+i_411014515][mf.a.coluna] = 1;
		}


		/*
		 * Posicionando a FRAGRATA
		 */

		t_coordenada frag;

		if(randomico_411014515()%2==0){
			mf.f.orientacao = HOR;
			mf.f.linha = randomico_411014515();
			mf.f.coluna = randomico_411014515();
			while(mf.f.coluna>6)
				mf.f.coluna = randomico_411014515();

			frag.linha = mf.f.linha;
			frag.coluna = mf.f.coluna;

			while(verificaProximidade_411014515(frota_411014515,frag).menor<=2 ||
				  verificaProximidade_411014515(frota_411014515,(t_coordenada) {frag.linha,frag.coluna+1}).menor<=2 ||
				  verificaProximidade_411014515(frota_411014515,(t_coordenada) {frag.linha,frag.coluna+2}).menor<=2){

				frag.linha = randomico_411014515();
				frag.coluna = randomico_411014515();
				while(frag.coluna>7)
					frag.coluna = randomico_411014515();

			}

			navios_411014515[5].linha = frag.linha;
			navios_411014515[5].coluna1 = frag.coluna;
			navios_411014515[5].coluna2 = frag.coluna + (navios_411014515[5].size-1);
		}
		else{
			mf.f.orientacao = VERT;
			mf.f.coluna = randomico_411014515();
			mf.f.linha = randomico_411014515();
			while(mf.f.linha>7)
				mf.f.linha = randomico_411014515();

			frag.linha = mf.f.linha;
			frag.coluna = mf.f.coluna;

			while(verificaProximidade_411014515(frota_411014515, frag).menor<=2 ||
				  verificaProximidade_411014515(frota_411014515, (t_coordenada) {frag.linha+1,frag.coluna}).menor<=2 ||
				  verificaProximidade_411014515(frota_411014515, (t_coordenada) {frag.linha+2,frag.coluna}).menor<=2){

				frag.linha = randomico_411014515();
				frag.coluna = randomico_411014515();
				while(frag.linha>7)
					frag.linha = randomico_411014515();

			}

			navios_411014515[5].linha = frag.linha;
			navios_411014515[5].coluna1 = frag.coluna;
			navios_411014515[5].coluna2 = frag.coluna;
		}

		for(i_411014515 = 0; i_411014515<3; i_411014515++){
			if(mf.f.orientacao==HOR)
				frota_411014515[frag.linha][frag.coluna+i_411014515] = 1;
			else
				frota_411014515[frag.linha+i_411014515][frag.coluna] = 1;
		}

		mf.f.linha = frag.linha;
		mf.f.coluna = frag.coluna;

		/*
		 * Posicionamento da Corveta 1
		 */

		t_coordenada corv1;

		if(randomico_411014515()%2==0){
			mf.c[0].orientacao = HOR;
			mf.c[0].linha = randomico_411014515();
			mf.c[0].coluna = randomico_411014515();
			while(mf.c[0].coluna>8)
				mf.c[0].coluna = randomico_411014515();

			corv1.linha = mf.c[0].linha;
			corv1.coluna = mf.c[0].coluna;

			while(verificaProximidade_411014515(frota_411014515,corv1).menor<=2 ||
				  verificaProximidade_411014515(frota_411014515,(t_coordenada) {corv1.linha,corv1.coluna+1}).menor<=2){

				corv1.linha = randomico_411014515();
				corv1.coluna = randomico_411014515();
				while(corv1.coluna>8)
					corv1.coluna = randomico_411014515();

			}

			navios_411014515[3].linha = corv1.linha;
			navios_411014515[3].coluna1 = corv1.coluna;
			navios_411014515[3].coluna2 = corv1.coluna + (navios_411014515[3].size-1);
		}
		else{
			mf.c[0].orientacao = VERT;
			mf.c[0].coluna = randomico_411014515();
			mf.c[0].linha = randomico_411014515();
			while(mf.c[0].linha>8)
				mf.c[0].linha = randomico_411014515();

			corv1.linha = mf.c[0].linha;
			corv1.coluna = mf.c[0].coluna;

			while(verificaProximidade_411014515(frota_411014515, corv1).menor<=2 ||
				  verificaProximidade_411014515(frota_411014515, (t_coordenada) {corv1.linha+1,corv1.coluna}).menor<=2){

				corv1.linha = randomico_411014515();
				corv1.coluna = randomico_411014515();
				while(corv1.linha>8)
					corv1.linha = randomico_411014515();

			}

			navios_411014515[3].linha = corv1.linha;
			navios_411014515[3].coluna1 = corv1.coluna;
			navios_411014515[3].coluna2 = corv1.coluna;
		}

		for(i_411014515 = 0; i_411014515<2; i_411014515++){
			if(mf.c[0].orientacao==HOR)
				frota_411014515[corv1.linha][corv1.coluna+i_411014515] = 1;
			else
				frota_411014515[corv1.linha+i_411014515][corv1.coluna] = 1;
		}

		mf.c[0].linha = corv1.linha;
		mf.c[0].coluna = corv1.coluna;

		/*
		 * Posicionamento da Corveta 2
		 */

		t_coordenada corv2;

		if(randomico_411014515()%2==0){
			mf.c[1].orientacao = HOR;
			mf.c[1].linha = randomico_411014515();
			mf.c[1].coluna = randomico_411014515();
			while(mf.c[1].coluna>8)
				mf.c[1].coluna = randomico_411014515();

			corv2.linha = mf.c[1].linha;
			corv2.coluna = mf.c[1].coluna;

			while(verificaProximidade_411014515(frota_411014515,corv2).menor<=2 ||
				  verificaProximidade_411014515(frota_411014515,(t_coordenada) {corv2.linha,corv2.coluna+1}).menor<=2){

				corv2.linha = randomico_411014515();
				corv2.coluna = randomico_411014515();
				while(corv2.coluna>8)
					corv2.coluna = randomico_411014515();

			}

			navios_411014515[4].linha = corv2.linha;
			navios_411014515[4].coluna1 = corv2.coluna;
			navios_411014515[4].coluna2 = corv2.coluna + (navios_411014515[4].size-1);
		}
		else{
			mf.c[1].orientacao = VERT;
			mf.c[1].coluna = randomico_411014515();
			mf.c[1].linha = randomico_411014515();
			while(mf.c[1].linha>8)
				mf.c[1].linha = randomico_411014515();

			corv2.linha = mf.c[1].linha;
			corv2.coluna = mf.c[1].coluna;

			while(verificaProximidade_411014515(frota_411014515, corv2).menor<=2 ||
				  verificaProximidade_411014515(frota_411014515, (t_coordenada) {corv2.linha+1,corv2.coluna}).menor<=2){

				corv2.linha = randomico_411014515();
				corv2.coluna = randomico_411014515();
				while(corv2.linha>8)
					corv2.linha = randomico_411014515();

			}

			navios_411014515[4].linha = corv2.linha;
			navios_411014515[4].coluna1 = corv2.coluna;
			navios_411014515[4].coluna2 = corv2.coluna;
		}

		for(i_411014515 = 0; i_411014515<2; i_411014515++){
			if(mf.c[1].orientacao==HOR)
				frota_411014515[corv2.linha][corv2.coluna+i_411014515] = 1;
			else
				frota_411014515[corv2.linha+i_411014515][corv2.coluna] = 1;
		}

		mf.c[1].linha = corv2.linha;
		mf.c[1].coluna = corv2.coluna;

		/*
		 * Posicionamento submarino 1
		 */

		t_coordenada sub1;

		mf.s[0].orientacao = HOR;
		mf.s[0].linha = randomico_411014515();
		mf.s[0].coluna = randomico_411014515();

		sub1.linha = mf.s[0].linha;
		sub1.coluna = mf.s[0].coluna;

		while(verificaProximidade_411014515(frota_411014515,sub1).menor<=2){
			sub1.linha = randomico_411014515();
			sub1.coluna = randomico_411014515();
		}

		navios_411014515[0].linha = sub1.linha;
		navios_411014515[0].coluna1 = sub1.coluna;
		navios_411014515[0].coluna2 = sub1.coluna;

		frota_411014515[sub1.linha][sub1.coluna] = 1;

		mf.s[0].linha = sub1.linha;
		mf.s[0].coluna = sub1.coluna;

		/*
		 * Posicionamento submarino 2
		 */

		t_coordenada sub2;

		mf.s[1].orientacao = HOR;
		mf.s[1].linha = randomico_411014515();
		mf.s[1].coluna = randomico_411014515();

		sub2.linha = mf.s[1].linha;
		sub2.coluna = mf.s[1].coluna;

		while(verificaProximidade_411014515(frota_411014515,sub2).menor<=2){
			sub2.linha = randomico_411014515();
			sub2.coluna = randomico_411014515();
		}

		navios_411014515[1].linha = sub2.linha;
		navios_411014515[1].coluna1 = sub2.coluna;
		navios_411014515[1].coluna2 = sub2.coluna;

		frota_411014515[sub2.linha][sub2.coluna] = 1;

		mf.s[1].linha = sub2.linha;
		mf.s[1].coluna = sub2.coluna;

		/*
		 * Posicionamento submarino 3
		 */

		t_coordenada sub3;

		mf.s[2].orientacao = HOR;
		mf.s[2].linha = randomico_411014515();
		mf.s[2].coluna = randomico_411014515();

		sub3.linha = mf.s[2].linha;
		sub3.coluna = mf.s[2].coluna;

		while(verificaProximidade_411014515(frota_411014515,sub3).menor<=2){
			sub3.linha = randomico_411014515();
			sub3.coluna = randomico_411014515();
		}

		navios_411014515[2].linha = sub3.linha;
		navios_411014515[2].coluna1 = sub3.coluna;
		navios_411014515[2].coluna2 = sub3.coluna;

		frota_411014515[sub3.linha][sub3.coluna] = 1;

		mf.s[2].linha = sub3.linha;
		mf.s[2].coluna = sub3.coluna;

		for(i_411014515 = 0;i_411014515<100;i_411014515++)
			total2 = total2 + frota_411014515[i_411014515/10][i_411014515%10];

	} while(total2 < TOTAL_411014515);

	for(i_411014515 = 0; i_411014515<100;i_411014515++)
		random_3_411014515[i_411014515/10][i_411014515%10]+=frota_411014515[i_411014515/10][i_411014515%10];

	teste++;
	}

	return mf;
}

void construtor_411014515(t_dados *dados){
	/*
	* inicia dados e
	* Informa a posicao dos navios no inicio do jogo
	* ao controle do jogo
	*/

	if(epoca_411014515 >=50)
		maior50_411014515=1;
	else
		maior50_411014515=0;

	i_411014515 = 0, j_411014515 = 0;
	loop_411014515 = 1; //CONTROLE DO PRIMEIRO TIRO
	epoca_411014515 = 0;//CONTROLE DO tirosOpos[100]
	t_411014515 = 0;//CONTROLE DO meusTiros[100]

	for(i_411014515=0;i_411014515<100;i_411014515++){
		if(random_411014515[i_411014515/10][i_411014515%10]==1)
			random_411014515[i_411014515/10][i_411014515%10] = 415;
		else
			random_411014515[i_411014515/10][i_411014515%10] = 0; //SALVA OS VALORES RAND�MICOS DE POSI��O

		random_2_411014515[i_411014515/10][i_411014515%10] = 0;
		random_3_411014515[i_411014515/10][i_411014515%10] = 0;

		impactos_411014515[i_411014515/10][i_411014515%10] = 0; //SALVA A CASA DOS NAVIOS ACERTADOS DO OPONENTE

		tirosOpos_411014515[i_411014515].linha = -1;
		tirosOpos_411014515[i_411014515].coluna = -1; //SALVA AS COORDENADAS DOS TIROS DADOS PELO OPONENTE

		meusTiros_411014515[i_411014515].linha = -1;
		meusTiros_411014515[i_411014515].coluna = -1; //SALVA AS COORDENADAS DO MEU TIRO

		frota_411014515[i_411014515/10][i_411014515%10] = 0;

		p_411014515 += randomico_411014515();
		p_411014515 += randomico_411014515();
	}

	for(i_411014515=0;i_411014515<7;i_411014515++){
		while(navios_411014515[i_411014515].impactos != 0)
			navios_411014515[i_411014515].impactos--;
	}

	dados->ra="411014515";

	t_frota mf = minhaFrota_411014515();

	//PrintTabuleiroInt_411014515(random_411014515);
	//PrintTabuleiroInt_411014515(random_3_411014515);

	dados->f = mf;
	dados->userstruct_size = sizeof(dados_411014515);
	dados->atira = &atira_411014515;
	dados->alvejado = &alvejado_411014515;
	dados->impacto = &impacto_411014515;

	dados_411014515 *d = (dados_411014515 *)dados->userstruct;
	d->posicao_dos_meus_navios = navios_411014515;
	return;
}
