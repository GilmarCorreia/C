#include "batalha.h"
#include <time.h>
#include <math.h>

#define TOTAL_211014515 ((NSUBS*SUBMARINO_SIZE)+(NCORVS*CORVETA_SIZE)+(FRAGATA_SIZE)+(AERODROMO_SIZE))
#define somar_211014515	2000
#define tirar_211014515	10

unsigned int i_211014515, j_211014515; //VARI�VEIS DE CONTROLE PARA FOR
static unsigned int loop_211014515 = 1; //CONTROLE DO PRIMEIRO TIRO
static unsigned int epoca_211014515 = 0;//CONTROLE DO tirosOpos[100]
static unsigned int t_211014515 = 0;//CONTROLE DO meusTiros[100]

static int random_211014515[10][10] = {0}; //SALVA OS VALORES RAND�MICOS DE POSI��O

static int impactos_211014515[10][10] = {0}; //SALVA A CASA DOS NAVIOS ACERTADOS DO OPONENTE

static t_coordenada tirosOpos_211014515[100] = {{-1},{-1}}; //SALVA AS COORDENADAS DOS TIROS DADOS PELO OPONENTE

static t_coordenada meusTiros_211014515[100] = {{-1},{-1}}; //SALVA AS COORDENADAS DO MEU TIRO

typedef struct {
	int linha;    //QUAL LINHA EST� O VE�CULO
	int coluna1;  //INDICA A POSI��O INICIAL DO VE�CULO
	int coluna2;  //INDICA A POSI��O FINAL DO VE�CULO
	int size;	  //INDICA O TAMANHO DO VE�CULO COLOCADO
	int impactos; //INDICA QUAL FOI ABATIDO
} posicao_de_navio_211014515;

typedef struct {
	int menor;
	int orient;
} t_menor_211014515;

/*
 	 	   0	 1	   2	 3	   4 	 5	   6 	 7	   8     9

0		|  F  |  0  |  0  |  0  |  S  |  0  |  0  |  0  |  0  |  0  |
1		|  F  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  S  |
2		|  F  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
3		|  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
4		|  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
5		|  S  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  C  |
6		|  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  C  |
7		|  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
8		|  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
9		|  A  |  A  |  A  |  A  |  A  |  0  |  0  |  C  |  C  |  0  |
*/

//INICIALIZA BARCOS DA SEQU�NCIA ACIMA
posicao_de_navio_211014515 navios_211014515[] = {
	{0,4,4,1,0},
	{1,9,9,1,0},
	{5,0,0,1,0},
	{5,9,9,2,0},
	{9,7,8,2,0},
	{0,0,0,3,0},
	{9,0,4,5,0}
};

typedef struct stdados_211014515 {
	posicao_de_navio_211014515 *posicao_dos_meus_navios;
} dados_211014515;

typedef struct{
	t_coordenada N; // COORDENADA NORTE
	t_coordenada NE;// COORDENADA NORDESTE
	t_coordenada L; // COORDENADA LESTE
	t_coordenada SE;// COORDENADA SUDESTE
	t_coordenada S; // COORDENADA SUL
	t_coordenada SO;// COORDENADA SUDOESTE
	t_coordenada O; // COORDENADA OESTE
	t_coordenada NO;// COORDENADA NOROESTE
} rosa_211014515;

void PrintTabuleiroInt_211014515(int coordenadas[10][10]){
	/*
	 * FUN��O QUE IMPRIME O TABULEIRO 10X10 RECEBENDO N�MEROS INTEIROS
	 */
	for(i_211014515=0; i_211014515<10; i_211014515++){
		for(j_211014515=0; j_211014515<10; j_211014515++){
			if(coordenadas[i_211014515][j_211014515]<10)
				printf("%d    ",coordenadas[i_211014515][j_211014515]);
			else{
				if(coordenadas[i_211014515][j_211014515]<100 && coordenadas[i_211014515][j_211014515]>=10)
					printf("%d   ",coordenadas[i_211014515][j_211014515]);
				else{
					if(coordenadas[i_211014515][j_211014515]<1000 && coordenadas[i_211014515][j_211014515]>=100)
						printf("%d  ",coordenadas[i_211014515][j_211014515]);
					else
						printf("%d ",coordenadas[i_211014515][j_211014515]);
				}
			}
		}
		printf("\n");
	}
}

float* Normalizar_211014515(int coordenadas[10][10]){

	/*
	 * FUN��O QUE PEGA TODOS OS DADOS DE UMA MATRIZ 10X10 E NORMALIZA ELES
	 */
	static float Normalizado_211014515[100]={0};
	float soma = 0;

	for(i_211014515=0; i_211014515<200; i_211014515++)
		if(i_211014515<100)
			soma += coordenadas[i_211014515/10][i_211014515%10];
		else
			*(Normalizado_211014515+(i_211014515-100)) = (float) coordenadas[(i_211014515-100)/10][(i_211014515-100)%10]/soma;

	return Normalizado_211014515;
}

t_coordenada MaxPorc_211014515(float* coordenadas){

	/*
	 * FUN��O QUE ACHA A PARTIR DA MATRIZ NORMALIZADA QUAL COORDENADA TEM M�XIMA PORCENTAGEM
	 */

	t_coordenada max = {0,0};
	float maximo = *(coordenadas);

	for(i_211014515=0; i_211014515<100; i_211014515++){
		if(maximo<*(coordenadas+i_211014515)){
			maximo = *(coordenadas+i_211014515);
			max.linha = i_211014515/10;
			max.coluna = i_211014515%10;
		}
	}

	return max;
}

int randomico_211014515(){

	int x = rand();

	int pot = rand()%4;

	int k, dez=1;

	for(k=0;k<pot;k++)
		dez = dez*10;

	int alea = (x/dez)-((x/(dez*10))*10);

	if(alea<0)
		alea = -1*alea;

	return alea;
}

t_coordenada atira_211014515(t_dados *dados){
	/*
	 * A FUN��O ATIRA_211014515 CRIA NA PRIMEIRA JOGADA UMA MATRIZ COM N�MEROS RAND�MICOS,
	 * A PARTIR DA DISTRIBUI��O SE NORMALIZA A MATRIZ E ACHA A COORDENADA DE M�XIMA PROBABILIDADE
	 * DE CONTER UMA EMBARCA��O.
	 *
	 * AP�S GUARDA O TIRO NO VETOR meusTiros.
	 */

	if(loop_211014515){

		srand(time(NULL));

		for(i_211014515=0; i_211014515<100000;i_211014515++)
			random_211014515[rand()%10][rand()%10]++;
		loop_211014515 = 0;
	}

	t_coordenada c;

	c.linha = MaxPorc_211014515(Normalizar_211014515(random_211014515)).linha;
	c.coluna = MaxPorc_211014515(Normalizar_211014515(random_211014515)).coluna;

	meusTiros_211014515[t_211014515] = c; //Guardo as coordenadas dos meus tiros
	t_211014515++;

	return c;
}

int repetido_211014515(t_coordenada s[100],t_coordenada f){
	/*
	 * A PARTIR DE UM VETOR DE COORDENADAS IDENTIFICA SE EXISTE UMA COORDENADA REPETIDA
	 * 1 SE FALSO
	 * 0 SE VERDADEIRO
	 */

	int logic = 1;

	for(j_211014515 = 0; j_211014515<100 && logic==1;j_211014515++){
		if(f.linha==s[j_211014515].linha && f.coluna==s[j_211014515].coluna)
			logic = 0;
	}

	return logic;
}

void arrumaRandom_211014515(rosa_211014515 ponto, int orient){
	/*
	 * FUN��O QUE ARRUMA A MATRIZ RANDOM OBSERVANDO A ORIENTA��O DO BARCO ATINGIDO.
	 *
	 * orient 2 -> SUBMARINO
	 * 		  1 -> VERT
	 * 		  0 -> HOR
	 */
	if((orient !=5)){
	if( (orient==2 || orient==0 || orient == 6) && repetido_211014515(meusTiros_211014515,ponto.N)!=0 && ponto.N.linha>=0 && ponto.N.coluna >= 0){
		random_211014515[ponto.N.linha][ponto.N.coluna] = 0;
		meusTiros_211014515[t_211014515] = ponto.N;
		t_211014515++;
	}}

	if(repetido_211014515(meusTiros_211014515,ponto.NE)!=0 && ponto.NE.linha >= 0 && ponto.NE.coluna >= 0){
		random_211014515[ponto.NE.linha][ponto.NE.coluna] = 0;
		meusTiros_211014515[t_211014515] = ponto.NE;
		t_211014515++;
	}

	if(repetido_211014515(meusTiros_211014515,ponto.NO)!=0 && ponto.NO.linha >= 0 && ponto.NO.coluna >= 0){
		random_211014515[ponto.NO.linha][ponto.NO.coluna] = 0;
		meusTiros_211014515[t_211014515] = ponto.NO;
		t_211014515++;
	}

	if(orient!=6){
	if((orient==2 || orient == 0 || orient == 5) && repetido_211014515(meusTiros_211014515,ponto.S)!=0 && ponto.S.linha >= 0 && ponto.S.coluna >= 0){
		random_211014515[ponto.S.linha][ponto.S.coluna] = 0;
		meusTiros_211014515[t_211014515] = ponto.S;
		t_211014515++;
	}}

	if(repetido_211014515(meusTiros_211014515,ponto.SE)!=0 && ponto.SE.linha >= 0 && ponto.SE.coluna >= 0){
		random_211014515[ponto.SE.linha][ponto.SE.coluna] = 0;
		meusTiros_211014515[t_211014515] = ponto.SE;
		t_211014515++;
	}

	if(repetido_211014515(meusTiros_211014515,ponto.SO)!=0 && ponto.SO.linha >= 0 && ponto.SO.coluna >= 0){
		random_211014515[ponto.SO.linha][ponto.SO.coluna] = 0;
		meusTiros_211014515[t_211014515] = ponto.SO;
		t_211014515++;
	}

	if((orient!=4 && orient!=0) && repetido_211014515(meusTiros_211014515,ponto.O)!=0 && ponto.O.linha >= 0 && ponto.O.coluna >= 0){
		random_211014515[ponto.O.linha][ponto.O.coluna] = 0;
		meusTiros_211014515[t_211014515] = ponto.O;
		t_211014515++;
	}

	if((orient!=3 && orient!=0) && repetido_211014515(meusTiros_211014515,ponto.L)!=0 && ponto.L.linha >= 0 && ponto.L.coluna >= 0){
		random_211014515[ponto.L.linha][ponto.L.coluna] = 0;
		meusTiros_211014515[t_211014515] = ponto.L;
		t_211014515++;
	}
}

t_menor_211014515 verificaProximidade_211014515(t_coordenada e){
	/*
	 * FUN��O QUE VERIFICA A ORIENTA��O DE UM BARCO E A MENOR DIST�NCIA DE OUTRO IMPACTO,
	 * SE FOR MENOR = 1 SIGNIFICA QUE A EMBARCA��O TEM MAIS DE UM M�DULO, SE FOR MAIOR QUE 1
	 * � UM SUBMARINO
	 */

	impactos_211014515[e.linha][e.coluna]++;

	int menor = 100;
	int dist;
	int orient = 2;

	for(i_211014515=0;i_211014515<10;i_211014515++){
		for(j_211014515=0;j_211014515<10;j_211014515++){
			if (impactos_211014515[i_211014515][j_211014515]!=0){
				dist = ((i_211014515-e.linha)*(i_211014515-e.linha)) + ((j_211014515-e.coluna)*(j_211014515-e.coluna));
				if(dist<menor && dist>0){
					menor = dist;
					if(((i_211014515-e.linha)*(i_211014515-e.linha))<=0)
						orient = 0;
					if(( (j_211014515-e.coluna)*(j_211014515-e.coluna) )<=0)
						orient = 1;
				}
			}
		}
	}

	t_menor_211014515 navio = {menor,orient};

	return navio;
}

rosa_211014515 rosaDosVentos_211014515(t_coordenada d){

	/*
	 * FUN��O QUE RETORNA, A PARTIR DE UM PONTO, SUAS COORDENADAS ADJACENTES
	 */

	rosa_211014515 ponto;

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

void impacto_211014515(t_coordenada c, t_impacto imp, t_dados *dados){

	/*
	 * Recebe o resultado do impacto no oponente
	 */
	random_211014515[c.linha][c.coluna]=0;

	rosa_211014515 ponto = rosaDosVentos_211014515(c);

	if(imp == 1){
		if(repetido_211014515(meusTiros_211014515,ponto.L)!=0 && ponto.L.linha>=0 && ponto.L.coluna>=0)
			random_211014515[ponto.L.linha][ponto.L.coluna]-=tirar_211014515;

		if(repetido_211014515(meusTiros_211014515,ponto.O)!=0 && ponto.O.linha>=0 && ponto.O.coluna>=0)
			random_211014515[ponto.O.linha][ponto.O.coluna]-=tirar_211014515;

		if(repetido_211014515(meusTiros_211014515,ponto.N)!=0 && ponto.N.linha>=0 && ponto.N.coluna>=0)
			random_211014515[ponto.N.linha][ponto.N.coluna]-=tirar_211014515;

		if(repetido_211014515(meusTiros_211014515,ponto.S)!=0 && ponto.S.linha>=0 && ponto.S.coluna>=0)
			random_211014515[ponto.S.linha][ponto.S.coluna]-=tirar_211014515;
	}


	t_menor_211014515 perto;

	if(imp == 3){ //SE O TIRO AFUNDOU E N�O ESTAVA PR�XIMO DE NENHUM OUTRO IMPACTO
				  //SIGNIFICA QUE ERA UM SUBMARINO, ZERAR AS CASAS ADJACENTES
		random_211014515[c.linha][c.coluna]=1;
		perto = verificaProximidade_211014515(c);

		//printf("\n orient: %d\n",perto.orient);

		if(perto.menor>1 || perto.menor>=100)
			arrumaRandom_211014515(ponto,2);

		if(perto.menor<=1 && perto.orient == HOR && random_211014515[ponto.O.linha][ponto.O.coluna] != 1 && random_211014515[ponto.L.linha][ponto.L.coluna] == 1){
			arrumaRandom_211014515(ponto,3);
			c = ponto.L;
			ponto = rosaDosVentos_211014515(c);
			while(random_211014515[ponto.O.linha][ponto.O.coluna] == 1  && random_211014515[ponto.L.linha][ponto.L.coluna] == 1){
				c = ponto.L;
				ponto = rosaDosVentos_211014515(c);
			}
			arrumaRandom_211014515(ponto,4);
		}

		if(perto.menor<=1 && perto.orient == HOR && random_211014515[ponto.O.linha][ponto.O.coluna] == 1 && random_211014515[ponto.L.linha][ponto.L.coluna] != 1){
			arrumaRandom_211014515(ponto,4);
			c = ponto.O;
			ponto = rosaDosVentos_211014515(c);
			while(random_211014515[ponto.O.linha][ponto.O.coluna] == 1  && random_211014515[ponto.L.linha][ponto.L.coluna] == 1){
				c = ponto.O;
				ponto = rosaDosVentos_211014515(c);
			}
			arrumaRandom_211014515(ponto,3);
		}

		if(perto.menor<=1 && perto.orient == VERT && random_211014515[ponto.N.linha][ponto.N.coluna] == 1 && random_211014515[ponto.S.linha][ponto.S.coluna] != 1){
			arrumaRandom_211014515(ponto,5);
			c = ponto.N;
			ponto = rosaDosVentos_211014515(c);
			while(random_211014515[ponto.S.linha][ponto.S.coluna] == 1  && random_211014515[ponto.N.linha][ponto.N.coluna] == 1){
				c = ponto.N;
				ponto = rosaDosVentos_211014515(c);
			}
			arrumaRandom_211014515(ponto,6);
		}

		if(perto.menor<=1 && perto.orient == VERT && random_211014515[ponto.N.linha][ponto.N.coluna] != 1 && random_211014515[ponto.S.linha][ponto.S.coluna] == 1){
			arrumaRandom_211014515(ponto,6);
			c = ponto.S;
			ponto = rosaDosVentos_211014515(c);
			while(random_211014515[ponto.S.linha][ponto.S.coluna] == 1  && random_211014515[ponto.N.linha][ponto.N.coluna] == 1){
				c = ponto.S;
				ponto = rosaDosVentos_211014515(c);
			}
			arrumaRandom_211014515(ponto,5);
		}

	}

	if(imp == 2){
		random_211014515[c.linha][c.coluna]=1;
		perto = verificaProximidade_211014515(c);

		if(repetido_211014515(meusTiros_211014515,ponto.N)!=0 && ponto.N.linha>=0 && ponto.N.coluna>=0)
			random_211014515[ponto.N.linha][ponto.N.coluna] +=somar_211014515;

		if(repetido_211014515(meusTiros_211014515,ponto.L)!=0 && ponto.L.linha>=0 && ponto.L.coluna>=0)
			random_211014515[ponto.L.linha][ponto.L.coluna] +=somar_211014515;

		if(repetido_211014515(meusTiros_211014515,ponto.S)!=0 && ponto.S.linha>=0 && ponto.S.coluna>=0)
			random_211014515[ponto.S.linha][ponto.S.coluna] +=somar_211014515;

		if(repetido_211014515(meusTiros_211014515,ponto.O)!=0 && ponto.O.linha>=0 && ponto.O.coluna>=0)
			random_211014515[ponto.O.linha][ponto.O.coluna] +=somar_211014515;

		if(perto.menor<=1 && perto.orient == HOR)
			arrumaRandom_211014515(ponto,HOR);

		if(perto.menor<=1 && perto.orient == VERT)
			arrumaRandom_211014515(ponto,VERT);
	}

	//printf("\n");

	//PrintTabuleiroInt_211014515(random_211014515);

	if(imp == 4){
		i_211014515 = 0, j_211014515 = 0;
		loop_211014515 = 1; //CONTROLE DO PRIMEIRO TIRO
		epoca_211014515 = 0;//CONTROLE DO tirosOpos[100]
		t_211014515 = 0;//CONTROLE DO meusTiros[100]

		for(i_211014515=0;i_211014515<100;i_211014515++){
			random_211014515[i_211014515/10][i_211014515%10] = 0; //SALVA OS VALORES RAND�MICOS DE POSI��O

			impactos_211014515[i_211014515/10][i_211014515%10] = 0; //SALVA A CASA DOS NAVIOS ACERTADOS DO OPONENTE

			tirosOpos_211014515[i_211014515].linha = -1;
			tirosOpos_211014515[i_211014515].coluna = -1; //SALVA AS COORDENADAS DOS TIROS DADOS PELO OPONENTE

			meusTiros_211014515[i_211014515].linha = -1;
			meusTiros_211014515[i_211014515].coluna = -1; //SALVA AS COORDENADAS DO MEU TIRO
		}

		for(i_211014515=0;i_211014515<7;i_211014515++){
			while(navios_211014515[i_211014515].impactos != 0)
				navios_211014515[i_211014515].impactos--;
		}
	}



}

t_impacto alvejado_211014515(t_coordenada c, t_dados *dados){

	/*
	 * Recebe tiro do oponente e retorna o resultado do impacto
	 */

	t_impacto imp = AGUA;

	int BOOL = 1;

	for(i_211014515=0;i_211014515<7 && BOOL == 1;i_211014515++){
		if(navios_211014515[i_211014515].coluna2 != navios_211014515[i_211014515].coluna1){
			if(c.linha==navios_211014515[i_211014515].linha && c.coluna>=navios_211014515[i_211014515].coluna1 && c.coluna<=navios_211014515[i_211014515].coluna2){
				imp = ACERTOU;
				if(repetido_211014515(tirosOpos_211014515,c))
					navios_211014515[i_211014515].impactos++;
				if(navios_211014515[i_211014515].impactos == navios_211014515[i_211014515].size)
					imp = AFUNDOU;
				BOOL = 0;
			}
		}
		else{
			if(c.linha >= navios_211014515[i_211014515].linha && c.linha<=(navios_211014515[i_211014515].linha+navios_211014515[i_211014515].size-1) && c.coluna==navios_211014515[i_211014515].coluna1){
				imp = ACERTOU;
				if(repetido_211014515(tirosOpos_211014515,c))
					navios_211014515[i_211014515].impactos++;
				if(navios_211014515[i_211014515].impactos == navios_211014515[i_211014515].size)
					imp = AFUNDOU;
				BOOL = 0;
			}
		}
	}

	tirosOpos_211014515[epoca_211014515] = c;
	epoca_211014515++;

	int total = 0;

	for(i_211014515 = 0;i_211014515<7;i_211014515++){
		total = total + navios_211014515[i_211014515].impactos;
		if(total == TOTAL_211014515)
			imp = VITORIA;
	}

	if(imp == VITORIA){
		i_211014515 = 0, j_211014515 = 0;
		loop_211014515 = 1; //CONTROLE DO PRIMEIRO TIRO
		epoca_211014515 = 0;//CONTROLE DO tirosOpos[100]
		t_211014515 = 0;//CONTROLE DO meusTiros[100]

		for(i_211014515=0;i_211014515<100;i_211014515++){
			random_211014515[i_211014515/10][i_211014515%10] = 0; //SALVA OS VALORES RAND�MICOS DE POSI��O

			impactos_211014515[i_211014515/10][i_211014515%10] = 0; //SALVA A CASA DOS NAVIOS ACERTADOS DO OPONENTE

			tirosOpos_211014515[i_211014515].linha = -1;
			tirosOpos_211014515[i_211014515].coluna = -1; //SALVA AS COORDENADAS DOS TIROS DADOS PELO OPONENTE

			meusTiros_211014515[i_211014515].linha = -1;
			meusTiros_211014515[i_211014515].coluna = -1; //SALVA AS COORDENADAS DO MEU TIRO
		}

		for(i_211014515=0;i_211014515<7;i_211014515++){
			while(navios_211014515[i_211014515].impactos != 0)
				navios_211014515[i_211014515].impactos--;
		}
	}

	return imp;
}

void construtor_211014515(t_dados *dados){
	/*
	* inicia dados e
	* Informa a posicao dos navios no inicio do jogo
	* ao controle do jogo
	*/

	i_211014515 = 0, j_211014515 = 0;
	loop_211014515 = 1; //CONTROLE DO PRIMEIRO TIRO
	epoca_211014515 = 0;//CONTROLE DO tirosOpos[100]
	t_211014515 = 0;//CONTROLE DO meusTiros[100]

	for(i_211014515=0;i_211014515<100;i_211014515++){
		random_211014515[i_211014515/10][i_211014515%10] = 0; //SALVA OS VALORES RAND�MICOS DE POSI��O

		impactos_211014515[i_211014515/10][i_211014515%10] = 0; //SALVA A CASA DOS NAVIOS ACERTADOS DO OPONENTE

		tirosOpos_211014515[i_211014515].linha = -1;
		tirosOpos_211014515[i_211014515].coluna = -1; //SALVA AS COORDENADAS DOS TIROS DADOS PELO OPONENTE

		meusTiros_211014515[i_211014515].linha = -1;
		meusTiros_211014515[i_211014515].coluna = -1; //SALVA AS COORDENADAS DO MEU TIRO
	}

	for(i_211014515=0;i_211014515<7;i_211014515++){
		while(navios_211014515[i_211014515].impactos != 0)
			navios_211014515[i_211014515].impactos--;
	}



	dados->ra="211014515";

	t_frota mf = {
		{
			{navios_211014515[0].linha,navios_211014515[0].coluna1,HOR},
			{navios_211014515[1].linha,navios_211014515[1].coluna1,HOR},
			{navios_211014515[2].linha,navios_211014515[2].coluna1,HOR}
		},
		{
			{navios_211014515[3].linha,navios_211014515[3].coluna1,VERT},
			{navios_211014515[4].linha,navios_211014515[4].coluna1,HOR}
		},
		    {navios_211014515[5].linha,navios_211014515[5].coluna1,VERT},

			{navios_211014515[6].linha,navios_211014515[6].coluna1,HOR}
	};

	dados->f = mf;
	dados->userstruct_size = sizeof(dados_211014515);
	dados->atira = &atira_211014515;
	dados->alvejado = &alvejado_211014515;
	dados->impacto = &impacto_211014515;

	dados_211014515 *d = (dados_211014515 *)dados->userstruct;
	d->posicao_dos_meus_navios = navios_211014515;
	return;
}
