#include "batalha.h"

typedef struct {
	int linha;
	int coluna1;
	int coluna2;
	int size;
	int impactos;
	int casas[5];
} posicao_de_navio_0000000000;

posicao_de_navio_0000000000 navios_0000000000[] = {
		{1,8,8,1,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
		{0,1,1,1,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
		{0,3,3,1,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
		{2,0,1,2,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
		{2,5,6,2,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
		{4,0,2,3,0,{AGUA,AGUA,AGUA,AGUA,AGUA}},
		{6,0,4,5,0,{AGUA,AGUA,AGUA,AGUA,AGUA}}
};


typedef struct stdados_0000000000{
	posicao_de_navio_0000000000 *posicao_dos_meus_navios;
} dados_0000000000;

t_coordenada atira_0000000000(t_dados *dados)
{
	/*
	 * Atira no oponente na coordenada c
	 */
	t_coordenada c;
	c.linha = 0;
	c.coluna = 0;
	return c;
}

t_impacto alvejado_0000000000(t_coordenada c, t_dados *dados)
{
	/*
	 * Recbe tiro do oponente e retorna o resultado do impacto
	 */
	int j;
	int casa;
	t_impacto i = AGUA;
	dados_0000000000 *d = (dados_0000000000 *)dados->userstruct;
	posicao_de_navio_0000000000 *p;

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

void impacto_0000000000(t_coordenada c, t_impacto i, t_dados *dados)
{
	/*
	 * Recbe o resultado do impacto no oponente
	 */
	return;

}

void construtor_0000000000(t_dados *dados)
{
	/*
	* inicia dados e
	* Informa a posicao dos navios no inicio do jogo
	* ao controle do jogo
	*/
	int n, c;
	dados->ra="0000000000";
	t_frota mf = {
				{
						{navios_0000000000[0].linha,navios_0000000000[0].coluna1,HOR},
						{navios_0000000000[1].linha,navios_0000000000[1].coluna1,HOR},
						{navios_0000000000[2].linha,navios_0000000000[2].coluna1,HOR}},
				{
						{navios_0000000000[3].linha,navios_0000000000[3].coluna1,HOR},
						{navios_0000000000[4].linha,navios_0000000000[4].coluna1,HOR}
				},
				{navios_0000000000[5].linha,navios_0000000000[5].coluna1,HOR},
				{navios_0000000000[6].linha,navios_0000000000[6].coluna1,HOR}
		};
	dados->f = mf;
	dados->userstruct_size = sizeof(dados_0000000000);
	dados->atira = &atira_0000000000;
	dados->alvejado = &alvejado_0000000000;
	dados->impacto = &impacto_0000000000;

	dados_0000000000 *d = (dados_0000000000 *)dados->userstruct;
	d->posicao_dos_meus_navios = navios_0000000000;
	for(n = 0; n < NSUBS + NCORVS + 2;n++)
	{
		navios_0000000000[n].impactos = 0;
		for(c = 0; c < AERODROMO_SIZE; c++)
		{
			navios_0000000000[n].casas[c] = AGUA;
		}
	}
	return;

}


