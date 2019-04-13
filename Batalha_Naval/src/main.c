#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <pthread.h>
#include <string.h>

#include "batalha.h"


#define NVASOS NSUBS+NCORVS+2

extern void construtor_0000000000(t_dados *dados);
extern void construtor_0000000001(t_dados *dados);
extern void construtor_11014515(t_dados *dados);
extern void construtor_211014515(t_dados *dados);
extern void construtor_311014515(t_dados *dados);
extern void construtor_411014515(t_dados *dados);

typedef struct {
	t_navio n;
	int size;
	t_coordenada coords[AERODROMO_SIZE];
	t_impacto danos[AERODROMO_SIZE];
	int impactos;
} t_vaso;

typedef enum {
	ATIVO,
	FINALIZADO
} t_status;

struct data_jogo {
	t_status status;
	t_dados d1;
	t_dados d2;
	int j1,j2;
	void (*c1)(t_dados *dados);
	void (*c2)(t_dados *dados);
	t_vaso vasos[2][NVASOS];
	int valido[2];
	int vasos_afundados[2];
	int vitorioso;
};

int esta_separado(t_vaso *vaso1, t_vaso *vaso2)
{
	if(vaso1->coords[0].linha > vaso2->coords[vaso2->size-1].linha + 1)
	{
		/* vaso 1 abaixo do vaso 2 */
		return 1;
	}

	if(vaso2->coords[0].linha > vaso1->coords[vaso1->size-1].linha + 1)
	{
		/* vaso 2 abaixo do vaso 1 */
		return 1;
	}

	if(vaso1->coords[0].coluna > vaso2->coords[vaso2->size-1].coluna + 1)
	{
		/* vaso 1 a esquerda do vaso 2 */
		return 1;
	}

	if(vaso2->coords[0].coluna > vaso1->coords[vaso1->size-1].coluna + 1)
	{
		/* vaso 2 a esquerda do vaso 1 */
		return 1;

	}
	return 0;
}

void verifica_frota(struct data_jogo *dj)
{
	int j;
	int i;
	int v,vv;
	t_dados *d[2];
	t_vaso *vaso;
	t_vaso *vaso2;
	int linha;
	int coluna;

	dj->vasos_afundados[0]=0;
	dj->vasos_afundados[1]=0;
	d[0] = &(dj->d1);
	d[1] = &(dj->d2);
	dj->valido[0] = 1;
	dj->valido[1] = 1;
	for(j=0; j < 2; j++)
	{
		v=0;
		for(i=0;i<NSUBS;i++){
			dj->vasos[j][v].n = d[j]->f.s[i];
			dj->vasos[j][v].size=SUBMARINO_SIZE;
			v++;
		}
		for(i=0;i<NCORVS;i++){
			dj->vasos[j][v].n = d[j]->f.c[i];
			dj->vasos[j][v].size=CORVETA_SIZE;
			v++;
		}
		dj->vasos[j][v].n = d[j]->f.f;
		dj->vasos[j][v].size=FRAGATA_SIZE;
		v++;
		dj->vasos[j][v].n = d[j]->f.a;
		dj->vasos[j][v].size=AERODROMO_SIZE;
		dj->valido[j] = 1;
		for(v=0;v<NVASOS;v++)
		{
			vaso = &(dj->vasos[j][v]);
			vaso->impactos = 0;
			linha = vaso->n.linha;
			coluna = vaso->n.coluna;
			for(i=0;i<vaso->size;i++){
				vaso->coords[i].coluna=coluna;
				vaso->coords[i].linha=linha;
				vaso->danos[i]=NULO;
				if(linha >= NLINHAS || coluna >= NCOLUNAS || linha < 0 || coluna < 0)
					dj->valido[j] = 0;
				if(vaso->n.orientacao == VERT)
					linha++;
				else
					coluna++;
			}
		}
		for(v=0;v<NVASOS;v++)
		{
			vaso = &(dj->vasos[j][v]);
			for(vv=v+1;vv < NVASOS;vv++)
			{
				vaso2 = &(dj->vasos[j][vv]);
				if(!esta_separado(vaso,vaso2))
					dj->valido[j] = 0;
			}
		}
	}
	return;
}

t_impacto alvejado(t_coordenada c, t_dados *dados, int j, struct data_jogo *dj)
{
	int i;
	int v;
	t_vaso *vaso;

	for(v=0;v<NVASOS;v++)
	{
		vaso = &(dj->vasos[j][v]);
		for(i=0;i<vaso->size;i++)
		{
			if(vaso->coords[i].coluna == c.coluna &&
			   vaso->coords[i].linha  == c.linha )
			{
				if(vaso->danos[i]==NULO)
				{
					vaso->danos[i]=ACERTOU;
					vaso->impactos++;
					if(vaso->impactos == vaso->size)
					{
						dj->vasos_afundados[j]++;
					}

				}
				if(dj->vasos_afundados[j] == NVASOS)
					return VITORIA;
				else
					if(vaso->impactos == vaso->size)
						return AFUNDOU;
					else return ACERTOU;
			}
		}
	}
	return AGUA;
}

void* jogo(void *arg)
{
    struct data_jogo *dj = (struct data_jogo *)arg;
    int rodada;
    int jogador;
    int limite = NLINHAS * NCOLUNAS;
    int fim_de_jogo = 0;
    t_dados *ataca, *defende;
    t_coordenada c;
    t_impacto i, icontrole;
    int indice_atacante;

    printf("\n\nNovo Jogo\n");

    dj->vitorioso = -1;

    dj->valido[0] = 1;
    dj->valido[1] = 1;
	dj->c1(&dj->d1);

	if(dj->d1.userstruct_size > DATASIZE)
	{
		printf("userstuct do jogador %s invalido\n",dj->d1.ra);
		dj->valido[0] = 0;
	}
	dj->c2(&dj->d2);
	if(dj->d2.userstruct_size > DATASIZE)
	{
		printf("userstuct do jogador %s invalido\n",dj->d2.ra);
		dj->valido[1] = 0;
	}
	if(!dj->valido[0] || !dj->valido[1])
	{
		dj->status = FINALIZADO;
		return NULL;
	}

	verifica_frota(dj);
	if(!dj->valido[0])
		printf("Posicionamento do jogador %s invalido\n",dj->d1.ra);
	if(!dj->valido[1])
		printf("Posicionamento do jogador %s invalido\n",dj->d2.ra);
	if(!dj->valido[0] || !dj->valido[1])
	{
		dj->status = FINALIZADO;
		return NULL;
	}

    printf("Jogador 1: %s\n",dj->d1.ra);
    printf("Jogador 2: %s\n",dj->d2.ra);
	printf("Posicionamento valido dos jogadores\n");

	indice_atacante = 0;
	ataca = &(dj->d1);
	defende = &(dj->d2);
	for(rodada = 0; !fim_de_jogo && rodada < limite; rodada++)
	{
		for(jogador = 0; !fim_de_jogo && jogador < 2; jogador++)
		{
			c = ataca->atira(ataca);
			printf("\n%d %s %d %d",rodada,ataca->ra,c.linha,c.coluna);
			if(c.linha >= 0 && c.linha < NLINHAS &&
			   c.coluna >=0 && c.coluna < NCOLUNAS)
			{
				i = defende->alvejado(c,defende);
				icontrole = alvejado(c, defende, (jogador+1)%2, dj);
				if(icontrole != AGUA)
					printf(" Impacto!!!!");
				if(icontrole == VITORIA && i == AFUNDOU)
					i = VITORIA;
				if(i != icontrole){
					printf("\nErro ao Informar Impacto! Jogador %s, Posicao %d %d, Informado %d, Correto %d\n",
							defende->ra,c.linha,c.coluna,i,icontrole);
					fim_de_jogo = 1;
				}
				ataca->impacto(c, icontrole,ataca);
				if(icontrole == VITORIA){
					printf("\nVitoria de %s",ataca->ra);
					dj->vitorioso = indice_atacante;
					fim_de_jogo = 1;
				}
			}
			else
				ataca->impacto(c, AGUA,ataca);
			ataca = defende;
			if(ataca == &(dj->d1))
				defende = &(dj->d2);
			else
				defende = &(dj->d1);
			indice_atacante = (indice_atacante + 1)%2;
		}
	}
	dj->status = FINALIZADO;
    return NULL;
}

void inicia_jogo(void (*construtores[])(t_dados *dados), int j1, int j2, void *b[])
{
	pthread_t tid;
	int err;
	int tics;
	struct timespec ts;
	struct data_jogo dj;

	pthread_attr_t tattr;
	pthread_attr_init(&tattr);
	pthread_attr_setschedpolicy(&tattr, SCHED_RR);

	dj.d1.userstruct = b[j1];
	dj.d2.userstruct = b[j2];
	dj.c1 = construtores[j1];
	dj.c2 = construtores[j2];
	dj.j1=j1;
	dj.j2=j2;
	dj.status = ATIVO;

	err = pthread_create(&tid, &tattr, &jogo, &dj);
    if (err != 0)
            printf("\ncan't create thread :[%s]", strerror(err));
    else
    {
    ts.tv_sec=0;
    ts.tv_nsec=100000000;
    tics = 0;
    while(dj.status == ATIVO)
     {
    	nanosleep(&ts, NULL);
    	tics++;
    	if(tics > 100)
    	{
    		printf("timeout ");
    		pthread_cancel(tid);
    		printf("cancel\n");
    		break;
    	}
     }
    printf("\n");
    }
}

int main(int argc, char *argv[])
{
	char b_11014515[DATASIZE];
	char b_0000000001[DATASIZE];
	void *b[] = {
			b_11014515,
			b_0000000001
	};

	static void (*construtores[])(t_dados *dados) = {
			&construtor_11014515,
			&construtor_211014515
	};

	inicia_jogo(construtores, 1, 0, b);
	inicia_jogo(construtores, 1, 0, b);
	inicia_jogo(construtores, 0, 1, b);
	inicia_jogo(construtores, 0, 1, b);

    return 0;

}



