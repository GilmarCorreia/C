/*
 * ruas.c
 *
 *  Created on: 12 de dez de 2017
 *      Author:
 *      Alexandre Alves Pires 21058016
 *      Bryan Valeriano 21061215
 *      Gilmar Correia Jeronimo 11014515
 *      Matheus Dias Alves 11113615
 *      Willian Teruya Kimura 11075614
 *
 *
 * O arquivo lido foi o ruas.json pelo método in(), é possível rodar o Log2016_CEM_RMSP.json, porém
 * o tempo demora para ler o arquivo. O arquivo lido pode ser mais eficiente ao rodar a função in2()
 * após rodado in(); resultando melhor aproximação do programa.
 *
 *O programa só roda com coordenadas e id que por ventura se encontrem e existam no vetor inputs
 */



#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <limits.h>
#include <math.h>
#include "geison.h"

#define row 27
#define readChars 30000 //6000000

static long long int i=0, j=0, k=0, l=0;

static unsigned long long int m=0, t=0, p=0, position=0, coordx=0, size=0;
static unsigned long long int position2[18] = {0};
static long long int linha[18] = {-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1};
static unsigned long long int pos=0;

FILE *ruas,*xInitial,*yInitial,*xFinal,*yFinal,*ID,*LENGTH,
	 *START_LEFT,*END_LEFT,*START_RIGHT,*END_RIGHT,*PARITY,*LEFT_ZIP,
	 *RIGHT_ZIP,*CEP_E,*CEP_D,*SETOR_CEP,*EXTENSAO_M,*NOME_CAPS;

static dados entradas[row];

static char inputs[readChars];
static char cep_e[row][20] = {'\0'}, cep_d[row][20] = {'\0'}, setor_cep[row][20] = {'\0'};
static char nome_caps[row][500] = {'\0'};

static long long int findString(char*substring, int u){
	size = strlen(substring);

	for(t = position2[u]; (t<strlen(inputs) && position!=size && linha[u]<row) ; t++){
		if(inputs[t] == substring[0]){
			for(p=0,position=0;p<size && inputs[t+p] == substring[p];p++)
				position++;
		}
		if(inputs[t] == '\n')
			linha[u]++;
	}
	if(position<size)
		position = 0;
	else
		position = t-2;

	position2[u] = position;

    return position;
}

void in(){

	ruas = fopen("ruas.json", "r");
	fread(inputs, sizeof(inputs), 1, ruas);

	char teste[20];

	xInitial = fopen("xInitial.txt","wt");
	yInitial = fopen("yInitial.txt","wt");
	xFinal = fopen("xFinal.txt","wt");
	yFinal = fopen("yFinal.txt","wt");
	ID = fopen("ID.txt","wt");
	LENGTH = fopen("LENGTH.txt","wt");
	START_LEFT = fopen("START_LEFT.txt","wt");
	END_LEFT = fopen("END_LEFT.txt","wt");
	START_RIGHT = fopen("START_RIGHT.txt","wt");
	END_RIGHT = fopen("END_RIGHT.txt","wt");
	PARITY = fopen("PARITY.txt","wt");
	LEFT_ZIP = fopen("LEFT_ZIP.txt","wt");
	RIGHT_ZIP= fopen("RIGHT_ZIP.txt","wt");
	CEP_E = fopen("CEP_E.txt","wt");
	CEP_D= fopen("CEP_D.txt","wt");
	SETOR_CEP = fopen("SETOR_CEP.txt","wt");
	EXTENSAO_M= fopen("EXTENSAO_M.txt","wt");
	NOME_CAPS = fopen("NOME_CAPS.txt","wt");

	for(i=0;i<(sizeof(inputs)/sizeof(char)) && linha[2]<row;i++){
		if(i<42 || inputs[i] == '}' || inputs[i] == '{' ||
		   inputs[i] == '"' || inputs[i] == ']' || inputs[i] == ':')
			inputs[i] = '$';
		if(inputs[i] == '\n')
			linha[2]++;
	}

	char *word[2] = {"coordinates","properties"};

	for(i=0;i<row;i++){

		j=-1;

		while(j<1){
			j++;

			pos = findString(word[j],j)+1;

			for(m=pos;pos && inputs[m]!='$';m++)
				inputs[m] = '$';

			if(j==1){
				for(m=pos;pos && inputs[m] != '[';m--)
					coordx = m;

				for(m=pos;pos && inputs[m+1]!='$';m++)
					inputs[m+1] = '$';
			}

			int size = strlen(word[j]) + 4;
			k=0;

			int controle = 0;

			if(j==0){
				while(inputs[pos+size]!='$' && inputs[pos+size]!='[' && inputs[pos+size]!='\0' && inputs[pos+size]!='\n'){

					if(inputs[pos+size]==',')
						controle = 1;

					if(controle == 0){
						if(inputs[pos+size]!='.' && inputs[pos+size]!='-')
							entradas[i].geo.coord.xInitial = entradas[i].geo.coord.xInitial*10 + (inputs[pos+size] - '0');
					}
					else{
						if(inputs[pos+size]!=','){
							if(inputs[pos+size]!='.' && inputs[pos+size]!='-')
								entradas[i].geo.coord.yInitial= entradas[i].geo.coord.yInitial*10 + (inputs[pos+size] - '0');
						}
					}

				k++;
				pos++;

				}
			}
			else{
				while(inputs[coordx]!='$' && inputs[coordx]!='[' && inputs[coordx]!='\0' && inputs[pos+size]!='\n'){
					if(inputs[coordx]==',')
						controle=1;

					if(controle == 0){
						if(inputs[coordx]!='.' && inputs[coordx]!='-')
							entradas[i].geo.coord.xFinal = entradas[i].geo.coord.xFinal*10 + (inputs[coordx] - '0');
					}
					else{
						if(inputs[coordx]!=','){
							if(inputs[coordx]!='.' && inputs[coordx]!='-')
								entradas[i].geo.coord.yFinal= entradas[i].geo.coord.yFinal*10 + (inputs[coordx] - '0');
						}
					}

					coordx++;
				}
			}
		}

		while(entradas[i].geo.coord.xInitial/10000000 == 0)
			entradas[i].geo.coord.xInitial*=10;
		while(entradas[i].geo.coord.yInitial/10000000 == 0)
			entradas[i].geo.coord.yInitial*=10;
		while(entradas[i].geo.coord.xFinal/10000000 == 0)
			entradas[i].geo.coord.xFinal*=10;
		while(entradas[i].geo.coord.yFinal/10000000 == 0)
			entradas[i].geo.coord.yFinal*=10;

		entradas[i].geo.coord.xInitial *=-1;
		entradas[i].geo.coord.yInitial *=-1;
		entradas[i].geo.coord.xFinal *=-1;
		entradas[i].geo.coord.yFinal *=-1;

		ltoa(entradas[i].geo.coord.xInitial,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), xInitial);
		fwrite("\n", sizeof(char), 1, xInitial);

		ltoa(entradas[i].geo.coord.yInitial,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), yInitial);
		fwrite("\n", sizeof(char), 1, yInitial);

		ltoa(entradas[i].geo.coord.xFinal,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), xFinal);
		fwrite("\n", sizeof(char), 1, xFinal);

		ltoa(entradas[i].geo.coord.yFinal,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), yFinal);
		fwrite("\n", sizeof(char), 1, yFinal);

	}

	char *words[14] = {"ID","LENGTH","START_LEFT","END_LEFT","START_RIGH","END_RIGHT",
					  "PARITY", "LEFT_ZIP", "RIGHT_ZIP","CEP_E","CEP_D","SETORCEP",
					  "EXTENSAO_M","NOME_CAPS"};

	linha[2] = -1;

	for(i=0;i<(sizeof(inputs)/sizeof(char)) && linha[2]<row;i++){
		if(i<42 || inputs[i] == ',' || inputs[i] == '[' || inputs[i] == ']' || inputs[i] == '"'
				|| inputs[i] == '}' || inputs[i] == '}' || inputs[i] == ':' || inputs[i] == '{'
				|| inputs[i] == '-')
			inputs[i] = '$';
		if(inputs[i] == '\n')
			linha[2]++;
	}

	for(j=0;j<14;j++){

		i=0;
		l=0;

		do{
			pos = findString(words[j],j+3)+1;

			for(m=pos;pos && inputs[m]!='$';m++)
				inputs[m] = '$';

			size = strlen(words[j]) + 2;

			if(j == 9 || j == 10 || j == 11 || j == 13)
				size+=1;

			k=0;

			while(inputs[pos+size]!='$' && inputs[pos+size]!='\n' && inputs[pos+size]!=',' && inputs[pos+size]!='[' && inputs[pos+size]!='\0'){
				switch(j){
					case 0:
						entradas[i].prop.ID = entradas[i].prop.ID*10 + (inputs[pos+size] - '0');
						break;

					case 1:
						if(inputs[pos+size]!='.')
							entradas[i].prop.length= entradas[i].prop.length*10 + (inputs[pos+size] - '0');
						break;

					case 2:
						entradas[i].prop.start_left = entradas[i].prop.start_left*10 + (inputs[pos+size] - '0');
						break;
					case 3:
						entradas[i].prop.end_left = entradas[i].prop.end_left*10 + (inputs[pos+size] - '0');
						break;
					case 4:
						entradas[i].prop.start_right = entradas[i].prop.start_right*10 + (inputs[pos+size] - '0');
						break;
					case 5:
						entradas[i].prop.end_right = entradas[i].prop.end_right*10 + (inputs[pos+size] - '0');
						break;
					case 6:
						entradas[i].prop.parity = entradas[i].prop.parity*10 + (inputs[pos+size] - '0');
						break;
					case 7:
						entradas[i].prop.left_zip = entradas[i].prop.left_zip*10 + (inputs[pos+size] - '0');
						break;
					case 8:
						entradas[i].prop.right_zip = entradas[i].prop.right_zip*10 + (inputs[pos+size] - '0');
						break;
					case 9:
						cep_e[l][k] = inputs[pos+size];
						break;
					case 10:
						cep_d[l][k] = inputs[pos+size];
						break;
					case 11:
						setor_cep[l][k] = inputs[pos+size];
						break;
					case 12:
						entradas[i].prop.extensao_m = entradas[i].prop.extensao_m*10 + (inputs[pos+size] - '0');
						break;
					case 13:
						nome_caps[l][k] = inputs[pos+size];
						break;
				}
				k++;
				pos++;
			}
			i++;
			l++;
		} while(i<row);
	}

	for(i=0;i<row;i++){
		entradas[i].prop.cep_e = cep_e[i];
		entradas[i].prop.cep_d = cep_d[i];
		entradas[i].prop.setorcep = setor_cep[i];
		entradas[i].prop.nome_caps = nome_caps[i];

		if(entradas[i].prop.start_left == 69560)
			entradas[i].prop.start_left = -1;
		if(entradas[i].prop.start_right == 69560)
			entradas[i].prop.start_right = -1;
		if(entradas[i].prop.end_left == 69560)
			entradas[i].prop.end_left = -1;
		if(entradas[i].prop.end_right == 69560)
			entradas[i].prop.end_right = -1;
		if(entradas[i].prop.left_zip == 69560)
			entradas[i].prop.left_zip= -1;
		if(entradas[i].prop.right_zip == 69560)
			entradas[i].prop.right_zip = -1;

		ltoa(entradas[i].prop.ID,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), ID);
		fwrite("\n", sizeof(char), 1, ID);

		ltoa(entradas[i].prop.length,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), LENGTH);
		fwrite("\n", sizeof(char), 1, LENGTH);

		ltoa(entradas[i].prop.start_left,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), START_LEFT);
		fwrite("\n", sizeof(char), 1, START_LEFT);

		ltoa(entradas[i].prop.end_left,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), END_LEFT);
		fwrite("\n", sizeof(char), 1, END_LEFT);

		ltoa(entradas[i].prop.start_right,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), START_RIGHT);
		fwrite("\n", sizeof(char), 1, START_RIGHT);

		ltoa(entradas[i].prop.end_right,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), END_RIGHT);
		fwrite("\n", sizeof(char), 1, END_RIGHT);

		ltoa(entradas[i].prop.parity,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), PARITY);
		fwrite("\n", sizeof(char), 1, PARITY);

		ltoa(entradas[i].prop.left_zip,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), LEFT_ZIP);
		fwrite("\n", sizeof(char), 1, LEFT_ZIP);

		ltoa(entradas[i].prop.right_zip,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), RIGHT_ZIP);
		fwrite("\n", sizeof(char), 1, RIGHT_ZIP);

		fwrite(entradas[i].prop.cep_e, sizeof(char), strlen(entradas[i].prop.cep_e), CEP_E);
		fwrite("\n", sizeof(char), 1, CEP_E);

		fwrite(entradas[i].prop.cep_d, sizeof(char), strlen(entradas[i].prop.cep_d), CEP_D);
		fwrite("\n", sizeof(char), 1, CEP_D);

		fwrite(entradas[i].prop.setorcep, sizeof(char), strlen(entradas[i].prop.setorcep), SETOR_CEP);
		fwrite("\n", sizeof(char), 1, SETOR_CEP);

		ltoa(entradas[i].prop.extensao_m,teste,10);
		fwrite(teste, sizeof(char), strlen(teste), EXTENSAO_M);
		fwrite("\n", sizeof(char), 1, EXTENSAO_M);

		fwrite(entradas[i].prop.nome_caps, sizeof(char), strlen(entradas[i].prop.nome_caps), NOME_CAPS);
		fwrite("\n", sizeof(char), 1, NOME_CAPS);

	}

}

void in2(){
	xInitial = fopen("xInitial.txt","r");
	yInitial = fopen("yInitial.txt","r");
	xFinal = fopen("xFinal.txt","r");
	yFinal = fopen("yFinal.txt","r");
	ID = fopen("ID.txt","r");
	LENGTH = fopen("LENGTH.txt","r");
	NOME_CAPS = fopen("NOME_CAPS.txt","r");

	fread(inputs, sizeof(inputs), 1, xInitial);

	for(i=0,j=0;i<row && inputs[j]!='\0';i++){
		for(; inputs[j]!='\n' && inputs[j]!='\0' && inputs[j] != '-';j++)
			entradas[i].geo.coord.xInitial = entradas[i].geo.coord.xInitial*10 + (inputs[j] - '0');
		j++;
	}

	fread(inputs, sizeof(inputs), 1, yInitial);

	for(i=0,j=0;i<row && inputs[j]!='\0';i++){
		for(; inputs[j]!='\n' && inputs[j]!='\0' && inputs[j] != '-';j++)
			entradas[i].geo.coord.yInitial = entradas[i].geo.coord.yInitial*10 + (inputs[j] - '0');
		j++;
	}

	fread(inputs, sizeof(inputs), 1, xFinal);

	for(i=0,j=0;i<row && inputs[j]!='\0';i++){
		for(; inputs[j]!='\n' && inputs[j]!='\0' && inputs[j] != '-';j++)
			entradas[i].geo.coord.xFinal = entradas[i].geo.coord.xFinal*10 + (inputs[j] - '0');
		j++;
	}

	fread(inputs, sizeof(inputs), 1, yFinal);

	for(i=0,j=0;i<row && inputs[j]!='\0';i++){
		for(; inputs[j]!='\n' && inputs[j]!='\0' && inputs[j] != '-';j++)
			entradas[i].geo.coord.yFinal = entradas[i].geo.coord.yFinal*10 + (inputs[j] - '0');
		j++;
	}


	fread(inputs, sizeof(inputs), 1, ID);

	for(i=0,j=0;i<row && inputs[j]!='\0';i++){
		for(; inputs[j]!='\n' && inputs[j]!='\0';j++)
			entradas[i].prop.ID = entradas[i].prop.ID*10 + (inputs[j] - '0');
		j++;
	}

	fread(inputs, sizeof(inputs), 1, LENGTH);

	for(i=0,j=0;i<row && inputs[j]!='\0';i++){
		for(; inputs[j]!='\n' && inputs[j]!='.' && inputs[j]!='\0';j++)
			entradas[i].prop.length = entradas[i].prop.length*10 + (inputs[j] - '0');
		j++;
	}

	fread(inputs, sizeof(inputs), 1, NOME_CAPS);

	for(i=0,j=0;i<row && inputs[j]!='\0';i++){
		for(k=0; inputs[j]!='\n' && inputs[j]!='\0';j++,k++)
			nome_caps[i][k] = inputs[j];
		entradas[i].prop.nome_caps = nome_caps[i];
		j++;
	}
}

typedef struct{
	long long int dist;
	int direction;
}euclid;

static euclid euclidiana(int partida, int proximo, coordinates trajeto){

	euclid Path;
	Path.direction = 0;
	Path.dist = 0;

	coordinates nComum;
	if((entradas[proximo].geo.coord.xInitial == entradas[partida].geo.coord.xInitial && entradas[proximo].geo.coord.yInitial == entradas[partida].geo.coord.yInitial) ||
		(entradas[proximo].geo.coord.xInitial == entradas[partida].geo.coord.xFinal && entradas[proximo].geo.coord.yInitial == entradas[partida].geo.coord.yFinal)){
		nComum.xInitial = entradas[proximo].geo.coord.xFinal;
		nComum.yInitial = entradas[proximo].geo.coord.yFinal;
	}
	else{
		nComum.xInitial = entradas[proximo].geo.coord.xInitial;
		nComum.yInitial = entradas[proximo].geo.coord.yInitial;
	}

	Path.dist = (trajeto.xFinal - nComum.xInitial) * (trajeto.xFinal - nComum.xInitial) +
		   (trajeto.yFinal - nComum.yInitial) *(trajeto.yFinal - nComum.yInitial);

	if((nComum.xInitial - trajeto.xFinal) < 0 || (nComum.yFinal - trajeto.yFinal) < 0)
		Path.direction = 1;



	return Path;
}


int main(void){

	fflush(stdin);
	fflush(stdout);

	in();
	//in2();
/*
	i = 5;

	printf("%ld\n",entradas[i].geo.coord.xInitial);
	printf("%ld\n",entradas[i].geo.coord.yInitial);
	printf("%ld\n",entradas[i].geo.coord.xFinal);
	printf("%ld\n",entradas[i].geo.coord.yFinal);
	printf("%ld\n",entradas[i].prop.ID);
	printf("%ld\n",entradas[i].prop.length);
	printf("%d\n",entradas[i].prop.start_left);
	printf("%d\n",entradas[i].prop.end_left);
	printf("%d\n",entradas[i].prop.start_right);
	printf("%d\n",entradas[i].prop.end_right);
	printf("%d\n",entradas[i].prop.parity);
	printf("%d\n",entradas[i].prop.left_zip);
	printf("%d\n",entradas[i].prop.right_zip);
	printf("%s\n",entradas[i].prop.cep_e);
	printf("%s\n",entradas[i].prop.cep_d);
	printf("%s\n",entradas[i].prop.setorcep);
	printf("%d\n",entradas[i].prop.extensao_m);
	printf("%s\n",entradas[i].prop.nome_caps);
*/
	// MATRIZ DE ADJACÊNCIA DAS COORDENADAS - SE [I][J] == 1 ENTÃO O ID DA LINHA I SE LIGA AO ID
	// DA COLUNA J

	long int adj[row][row];

	for(i = 0;i<row;i++){
		for(j = 0;j<row;j++){
			adj[i][j] = 0;
			for(k=0;k<4;k++){
				switch(k){
					case 0:
						if(entradas[i].geo.coord.xInitial == entradas[j].geo.coord.xInitial ||
						   entradas[i].geo.coord.xInitial == entradas[j].geo.coord.xFinal)
							adj[i][j] = 1;//entradas[i].prop.length;
						break;
					case 1:
						if(entradas[i].geo.coord.yInitial == entradas[j].geo.coord.yInitial ||
						   entradas[i].geo.coord.yInitial == entradas[j].geo.coord.yFinal)
							adj[i][j]= 1;//entradas[i].prop.length;
						break;
					case 2:
						if(entradas[i].geo.coord.xFinal == entradas[j].geo.coord.xFinal ||
						   entradas[i].geo.coord.xFinal == entradas[j].geo.coord.xInitial)
							adj[i][j] = 1;//entradas[i].prop.length;
						break;
					case 3:
						if(entradas[i].geo.coord.yFinal == entradas[j].geo.coord.yFinal ||
						   entradas[i].geo.coord.yFinal == entradas[j].geo.coord.yInitial)
							adj[i][j] = 1;//entradas[i].prop.length;
						break;
				}
			}
			if(i == j)
				adj[i][j]=0;
			//printf("%d ", adj[i][j]);
		}
		//printf("\n");
	}

	//COORDENADAS DO TRAJETO DESEJADO
	coordinates trajeto;


	trajeto.xInitial = -46530836;
	trajeto.yInitial = -23641578;
	trajeto.xFinal = -46528956;
	trajeto.yFinal = -23638824;

	printf("Ponto de Partida: [%ld,%ld] \n"
			"Ponto de Chegada:[%d,%d]\n\n", trajeto.xInitial, trajeto.yInitial,trajeto.xFinal,trajeto.yFinal);

	// VAI PROCURAR O ID DAS COORDENADAS
	long int Initial_ID = 0, Final_ID = 0;

	for(i=0;i<row;i++){
		if((entradas[i].geo.coord.xInitial == trajeto.xInitial && entradas[i].geo.coord.yInitial == trajeto.yInitial) ||
		   (entradas[i].geo.coord.xFinal == trajeto.xInitial && entradas[i].geo.coord.yFinal == trajeto.yInitial))
			Initial_ID = i;
		if((entradas[i].geo.coord.xInitial == trajeto.xFinal && entradas[i].geo.coord.yInitial == trajeto.yFinal) ||
		   (entradas[i].geo.coord.xFinal == trajeto.xFinal && entradas[i].geo.coord.yFinal == trajeto.yFinal))
			Final_ID = i;
	}

	printf("Partida ID: %ld e Chegada ID: %ld\n\n",entradas[Initial_ID].prop.ID,entradas[Final_ID].prop.ID);

	int proximo;
	euclid Path;
	long long int menor= 100000000000;

	while(Initial_ID != Final_ID){
		menor= 100000000000;
		Path.dist= 100000000000;
		printf("ENTRE NA %s (ID: %d)\n", entradas[Initial_ID].prop.nome_caps,  entradas[Initial_ID].prop.ID);

		if(Initial_ID != Final_ID){
			for(i=0;i<row;i++){
				if(adj[Initial_ID][i]!=0){
					Path = euclidiana(Initial_ID,i,trajeto);
				}
				if(Path.dist<menor){
					menor = Path.dist;
					proximo = i;
				}
			}
		}
		else
			proximo = Initial_ID;

		if(proximo != Initial_ID){
			adj[Initial_ID][proximo]=0;
			adj[proximo][Initial_ID]=0;
			Initial_ID = proximo;
		}

		if(Path.direction)
			printf("VIRE A DIREITA\n");
		else
			printf("VIRE A ESQUERDA\n");
	}
	printf("ENTRE NA %s (ID: %d)\n", entradas[Initial_ID].prop.nome_caps,  entradas[Initial_ID].prop.ID);

	return 0;

}


