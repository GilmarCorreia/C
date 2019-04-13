#include "batalha.h"

typedef struct {
	int linha;
	int coluna1;
	int coluna2;
	int size;
	int impactos;
	int casas[5];
} posicao_de_navio_0000000001;

posicao_de_navio_0000000001 navios_0000000001[] = {
		{0,6,6,1,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
		{0,2,2,1,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
		{0,4,4,1,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
		{2,0,1,2,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
		{2,5,6,2,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
		{4,0,2,3,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
		{6,0,4,5,0,{AGUA,AGUA,AGUA,AGUA,AGUA}}
};

typedef struct stdados_0000000001{
	t_coordenada proximo_tiro;
	t_navio *navios[NSUBS + NCORVS + 2];
	posicao_de_navio_0000000001 *posicao_dos_meus_navios;
} dados_0000000001;

t_coordenada atira_0000000001(t_dados *dados)
{
	/*
	 * Atira no oponente na coordenada c
	 */
	t_coordenada c;
	dados_0000000001 *d = (dados_0000000001 *)dados->userstruct;
	c = d->proximo_tiro;
	d->proximo_tiro.coluna++;
	if(d->proximo_tiro.coluna >= NCOLUNAS)
	{
		d->proximo_tiro.coluna = 0;
		d->proximo_tiro.linha++;
		if(d->proximo_tiro.coluna >= NLINHAS)
			d->proximo_tiro.linha = 0;
	}
	return c;
}

t_impacto alvejado_0000000001(t_coordenada c, t_dados *dados)
{
	/*
	 * Recbe tiro do oponente e retorna o resultado do impacto
	 */
	int j;
	int casa;
	t_impacto i = AGUA;
	dados_0000000001 *d = (dados_0000000001 *)dados->userstruct;
	posicao_de_navio_0000000001 *p;

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

void impacto_0000000001(t_coordenada c, t_impacto i, t_dados *dados)
{
	/*
	 * Recbe o resultado do impacto no oponente
	 */
	return;

}

void construtor_0000000001(t_dados *dados)
{
	/*
	* inicia dados e
	* Informa a posicao dos navios no inicio do jogo
	* ao controle do jogo
	*/
	dados->ra="0000000001";
	t_frota mf = {
				{
						{navios_0000000001[0].linha,navios_0000000001[0].coluna1,HOR},
						{navios_0000000001[1].linha,navios_0000000001[1].coluna1,HOR},
						{navios_0000000001[2].linha,navios_0000000001[2].coluna1,HOR}},
				{
						{navios_0000000001[3].linha,navios_0000000001[3].coluna1,HOR},
						{navios_0000000001[4].linha,navios_0000000001[4].coluna1,HOR}
				},
				{navios_0000000001[5].linha,navios_0000000001[5].coluna1,HOR},
				{navios_0000000001[6].linha,navios_0000000001[6].coluna1,HOR}
		};

	int i,j,n,c;
	t_coordenada t0 = {0,0};

	dados->f = mf;
	dados->userstruct_size = sizeof(dados_0000000001);
	dados->atira = &atira_0000000001;
	dados->alvejado = &alvejado_0000000001;
	dados->impacto = &impacto_0000000001;

	dados_0000000001 *d = (dados_0000000001 *)dados->userstruct;

	for(i=0;i<NSUBS;i++)
	{
		d->navios[i] = &(dados->f.s[i]);
	}
	for(j=0;j<NCORVS;j++)
	{
		d->navios[i] = &(dados->f.c[j]);
		i++;
	}
	d->navios[i] = &(dados->f.f);
	i++;
	d->navios[i] = &(dados->f.a);

	d->proximo_tiro = t0;

	d->posicao_dos_meus_navios = navios_0000000001;
	for(n = 0; n < NSUBS + NCORVS + 2;n++)
	{
		navios_0000000001[n].impactos=0;
		for(c = 0; c < AERODROMO_SIZE; c++)
		{
			navios_0000000001[n].casas[c] = AGUA;
		}
	}

	return;

}




