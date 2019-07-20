#include<8051.h>

/*
======================================================================================================
=====================================PROJETO 1 - ALARME DIGITAL=======================================
====================================================================================================== 
Nomes:
	Gilmar Correia Jeronimo         - 11014515
	Lucas Barboza Moreira Pinheiro  - 11017015
*/

#define dado7s 0xFFC0 // Ativação do decodificador de endereços (F - A15 até A12, F - A11 até A8, C - A7 e A6, 0 - é o endereço CS_DISP7S)
#define sel7s 0xFFC1  // Ativação do decodificador de endereços (F - A15 até A12, F - A11 até A8, C - A7 e A6, 1 - é o endereço CS_DISP7S_SELECT)
#define selTM 0xFFC3  // Ativação do decodificador de endereços para teclado matricial (F - A15 até A12, F - A11 até A8, C - A7 e A6, 3 - é o endereço CS_TECLADO)

static unsigned char __far __at dado7s dado; 		//  atribui valor ao endereço dado7s
static unsigned char __far __at sel7s sel; 			//  seleciona o chip ao endereço sel7s
static unsigned char __far __at selTM selTeclado; 	//  seleciona o chip ao endereço selTM


/* Control foi definida como flags do projeto. Conforme as etapas do projeto vão evoluindo control atualiza suas flags para perceber em qual parte *do programa se encontra. Se a variável for atribuída como:
* hour1      -> Ativa a atribuição da dezena da hora
* hour2      -> Ativa a atribuição da unidade da hora
* min1       -> Ativa a atribuição da dezena do minuto
* min2       -> Ativa a atribuição da unidade do minuto
* reset1     -> Ativa o delay para mostrar as os números digitados de hora e minuto
* day1       -> Ativa a atribuição da dezena do dia
* day2       -> Ativa a atribuição da unidade do dia
* month1     -> Ativa a atribuição da dezena do mês
* month2     -> Ativa a atribuição da unidade do mês
* reset2     -> Ativa o delay para mostrar as os números digitados da data
* year1      -> Ativa a atribuição do milhar do ano
* year2      -> Ativa a atribuição da centena do ano
* year3      -> Ativa a atribuição da dezena do ano
* year4      -> Ativa a atribuição da unidade do ano
* reset3     -> Ativa o delay para mostrar as os números digitados do ano
* clear      -> Ativa a condição padrão do relório, mostrar o horário
* showDay    -> Mostra o dia que foi configurado.
* showYear   -> Mostra o ano que foi configurado.
* showWeek   -> Mostra o dia da semana (SEG,TER,QUA,QUI,SEX,SAB,DOM)
* configHour -> Habilita a configuração do alarme para hora
* configDay  -> Habilita a configuração do alarme para dia e mês
*/
enum control {hour1,hour2,min1,min2,reset1,day1,day2,month1,month2,reset2,year1,year2,year3,year4,reset3,clear,showDay,showYear,showWeek,configHour,configDay};
//enum control {min1,min2,hour1,hour2,reset1,day1,day2,month1,month2,reset2,year1,year2,year3,year4,reset3,clear,showDay,showYear,showWeek,configHour,configDay};


/* A struct timer guarda as variáveis relacionada aos timers usados
*	TIMER0 -> Delay Milisseconds
*	TIMER1 -> Delay Microsseconds
*	
* 	Como a memória do timer interno dá overflow em 65535 e cada contagem acontece em 1 microssegundo, o timer dá um overflow a cada 65.535 milisegundos, portanto:
*	Cicles    = (Milisseconds * 1000)/ 65535 (DIVISÃO INTEIRA)
* 	lastClock = (Milisseconds * 1000)% 65535 (RESTO DA DIVISÃO)
*   finish   -> flag para informar que a contagem acabou
*   flag     -> Controla se o timer está temporizando ou não
*/
struct timer{
	unsigned int cycles;
	unsigned int lastClock;
	unsigned char finish;
	unsigned char flag;
};


/* A struct dataHora guarda as variáveis relacionada as configurações iniciais do alarme
*	dia    -> Guarda os valores de dia (dezena + unidade)
*	mes    -> Guarda os valores do mes (dezena + unidade)
*	ano    -> Guarda os valores do ano (milhar + centena + dezena + unidade)
*	hora   -> Guarda os valores de hora (dezena + unidade)
*	minuto -> Guarda os valores de minuto (dezena + unidade)
*/
struct dataHora{
	unsigned char dia;
	unsigned char mes;
	unsigned int ano;
	unsigned char hora;
	unsigned char min;
};


/* A struct tecladoMatricial guarda as variáveis relacionada as configurações do teclado matricial
*	control       -> Variável que utilizará como parâmetro os ENUM CONTROL
*   value[4]      -> Cada posição do vetor value guarda os parâmetros atribuídos ao DISPLAY7S correspondente, sendo a posição 0 relativa ao display da mais a esquerda e a posição 4 relativa ao display mais a direita.
*	vectorControl -> Controla a qual display será atribuído o valor pressionado.
*/
struct tecladoMatricial{
	unsigned char control;
	unsigned char value[4];
	unsigned char vectorControl;
};

struct tecladoMatricial TM;		// Atribuição de um tecladoMatricial nomeado de TM.

struct dataHora dh;			// Atribuição de uma dataHora nomeada de dh.
struct dataHora alarm;			// Atribuição de uma dataHora nomeada de alarm.

struct timer Timer0;			// Atribuição de um timer nomeado de Timer0.
struct timer Timer1;			// Atribuição de um timer nomeado de Timer0.


/*
* FUNÇÃO RELACIONADAS AO DISPLAY7S
*/

/* FUNÇÃO add7s:
*  	- Função para retornar o endereço hexadecimal do display 7s correspondente ao decimal ou letra entrada
*		decimal -> Variável do número/letra desejado
*		dot 	-> Se o número apresentará ponto ou não
*		se decimal = 16 só acenderá o ponto.
*/
unsigned char add7s(unsigned char decimal, unsigned char dot){

	char letter = decimal;
	
	unsigned char address[16] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
	 
	if (decimal <= 15)
		return address[decimal]+(dot*(128));
	else if (decimal == 16)
		return 128; // Só acende o ponto
	else if(letter == 'S')
		return 0x6D;
	else if(letter == 'E')
		return 0x79;
	else if(letter == 'G')
		return 0x3D;
	else if(letter == 'T')
		return 0x78;
	else if(letter == 'R')
		return 0x50;
	else if(letter == 'Q')
		return 0x67;
	else if(letter == 'U')
		return 0x1C;
	else if(letter == 'A')
		return 0x77;
	else if(letter == 'I')
		return 0x06;
	else if(letter == 'X')
		return 0x76;
	else if(letter == 'B')
		return 0x7C;
	else if(letter == 'D')
		return 0x5E;
	else if(letter == 'O')
		return 0x5C;
	else if(letter == 'N')
		return 0x54;
	
	return 0;
}


/* FUNÇÃO delayMicroseconds:
* 	Funcao para delay em microsegundos que recebe como parâmetro a quantidade de microsegundos desejados 
*	OBS: Diferente do delayMiliseconds, esse delay ele ESPERA ATÉ TERMINAR A TEMPORIZAÇÃO, para desativar comentar as linhas com &
*		
*	Limite da função microseconds = 65535;
*/
void delayMicroseconds(unsigned int microseconds){

	Timer1.lastClock = 65535 - microseconds; 	// Cálculo de quantos microsecundos o temporizador deve começar
	TR1 = 1;					// Inicializar o timer
	
	while(!Timer1.finish); 				//& Espera a flag retornar o valor desejado 
	
	Timer1.finish = 0; 				//&	Zera a flag
	
	// SE EU QUISER CONTROLAR O RELÓGIO COM MICROSSEGUNDOS DESCOMENTAR ESSA LINHA ABAIXO:
	/*
	if(TM.control>=clear)
		atualizaHora();
	*/
}


/* FUNÇÃO timerMicroseconds:
* 	Função que controla a interrupção do TIMER1
*/
void timerMicroseconds() __interrupt 3{ //(slide aplicmicro 11_C.pdf pg.13)

	TH1 = 0; 				// Zerar os bits mais significativos do temporizador
	TL1 = 0; 				// Zerar os bits menos significativos do temporizador
	TF1 = 0;				// Zero a flag do contador
	TR1 = 0;				// Paro timer1
	
	TH1 = Timer1.lastClock & 0xFF ;		// Atribui ao ultimo timer o valor dos bits mais significativos
	TL1 = Timer1.lastClock >> 8;		// Atribui ao ultimo timer o valor dos bits menos significativos
    //Timer1.cycles--;				// decrementa cycles
	
 	Timer1.finish = 1;			// finish é uma flag que indica que o tempo acabou
}


/* FUNÇÃO varreduraD7S:
*	Função que realiza a varredura do DISPLAY de 7 Segmentos, recebe como parâmetro:
*		D1   -> Digito/letra do primeiro display
*		D2   -> Digito/letra do segundo display
*		D3   -> Digito/letra do terceiro display
*		D4 	 -> Digito/letra do quarto display
*		time -> Tempo de varredura em microsegundos
*		dot  -> Se o segundo display irá ter ponto ou não 
*/
void varreduraD7S(unsigned char D1, unsigned char D2, unsigned char D3, unsigned char D4, unsigned int time, unsigned char dot){
	sel = 1; 			// seleciona o display 1 -> Mais a esquerda (possíveis valores: 1, 2, 4, 8)
	dado = add7s(D1,0); 		// atribuí o endereço hex ao dado7s
	delayMicroseconds(time);	// Espera um tempo para mostrar na tela
	
	sel = 2;			// seleciona o display 2
	dado = add7s(D2,dot); 		// atribuí o endereço hex ao dado7s	
	delayMicroseconds(time);	// Espera um tempo para mostrar na tela
	
	sel = 4;			// seleciona o display 3
	dado = add7s(D3,0); 		// atribuí o endereço hex ao dado7s
	delayMicroseconds(time);	// Espera um tempo para mostrar na tela
	
	sel = 8;			// seleciona o display 4
	dado = add7s(D4,0); 		// atribuí o endereço hex ao dado7s			
	delayMicroseconds(time);	// Espera um tempo para mostrar na tela
}

/* FUNÇÃO digitosLetter7S:
*	Função que retorna os digitos que devem ser colocados na tela dado um dia da semana, se o parâmetro for:
*		0 -> Retorna as letras relacionadas a SEGUNDA
*		1 -> Retorna as letras relacionadas a TERCA
*		2 -> Retorna as letras relacionadas a QUARTA
*		3 -> Retorna as letras relacionadas a QUINTA
*		4 -> Retorna as letras relacionadas a SEXTA
*		5 -> Retorna as letras relacionadas a SABADO
*		6 -> Retorna as letras relacionadas a DOMINGO
*/
unsigned char * digitosLetter7S(unsigned char weekDay){
	unsigned char Digits[4] = {0,0,0,0}; 
	
	if(weekDay == 0){
		Digits[0] = 'S';
		Digits[1] = 'E';
		Digits[2] = 'G';
	}
	else if(weekDay == 1){
		Digits[0] = 'T';
		Digits[1] = 'E';
		Digits[2] = 'R';
	}
	else if(weekDay == 2){
		Digits[0] = 'Q';
		Digits[1] = 'U';
		Digits[2] = 'A';
	}
	else if(weekDay == 3){
		Digits[0] = 'Q';
		Digits[1] = 'U';
		Digits[2] = 'I';
	}
	else if(weekDay == 4){
		Digits[0] = 'S';
		Digits[1] = 'E';
		Digits[2] = 'X';
	}
	else if(weekDay == 5){
		Digits[0] = 'S';
		Digits[1] = 'A';
		Digits[2] = 'B';
	}
	else if(weekDay == 6){
		Digits[0] = 'D';
		Digits[1] = 'O';
		Digits[2] = 'N';
		Digits[3] = 'N';
	}
	
	return Digits;
}
/*
* FUNÇÕES RELACIONADAS AO DISPLAY7S
*/

/*
* FUNÇÕES RELACIONADAS AO TECLADO MATRICIAL
*/

/* FUNÇÃO TM2HEX:
*  		Função usado para retornar qual o correspondente valor NOMIMAL foi apertado do teclado matricial, recebe como parâmetro:
*			value -> Valor dado ao pressionar o teclado matricial (TM).
*
*		TECLADO			VALOR CORRESPONDENTE DADO PELO DISPOSITIVO A PRESSIONAR A TECLA CORRESPONDENTE
*		|---------------|       |-----------------------|
*		| 1 | 2 | 3 | A |       |  1  |  2  |  4  |  8  |
*		|---------------|       |-----------------------|
*		| 4 | 5 | 6 | B |	| 16  | 32  | 64  | 128 |
*		|---------------|       |-----------------------|
*		| 7 | 8 | 9 | C |	|  1  |  2  |  4  |  8  | -> PARA DIFERENCIAR AS PRIMEIRA 2 LINHAS DAS SEGUNDAS SOMA-SE 128 QUANDO FEITA A VARREDURA
*		|---------------|       |-----------------------|
*		| F | 0 | E | D |	| 16  | 32  | 64  | 128 | -> PARA DIFERENCIAR A PRIMEIRAS 2 LINHAS DAS SEGUNDAS SOMA-SE 128 QUANDO FEITA A VARREDURA
*		|---------------|       |-----------------------|
*/
unsigned char TM2HEX(unsigned int value){
	
	switch(value){
		case 1:					// Se o resultado for 1 do TM
			return 1;			// retorna 1
		case 2: 
			return 2;			// retorna 2
		case 4: 
			return 3;			// retorna 3
		case 8:
			return 10;			// retorna A
		case 16:
			return 4;			// retorna 4
		case 32:
			return 5;			// retorna 5
		case 64:
			return 6;			// retorna 6
		case 128:
			return 11;			// retorna B
		case 129:
			return 7;			// retorna 7
		case 130: 
			return 8;			// retorna 8
		case 132: 
			return 9;			// retorna 9
		case 136:
			return 12;			// retorna C
		case 144:
			return 15;			// retorna F
		case 160:
			return 0;			// retorna 0
		case 192:
			return 14;			// retorna E
		case 256:
			return 13;			// retorna D
	}
	
	return 0;
}

/* FUNÇÃO verreduraTecladoMat:
*	Função que executa a varredura do teclado matricial e controla em qual parte o programa se encontra, atribuíndo os valores de acordo com o ENUM CONTROL.
*/
void varreduraTecladoMat(){
	unsigned int dadoTM = 0, dadoTM1, dadoTM2;
	unsigned char boolHour1, boolHour2, boolMin1, boolMin2, boolControl;
	
	selTeclado = 0x40;								// Habilitando as duas primeiras linhas do TM
	dadoTM1 = selTeclado;								// Lendo o valor pressionado
		
	selTeclado = 0x80;								// Habilitando as duas ultimas linhas do TM
	dadoTM2 = selTeclado;								// Lendo o valor pressionado
	
	
	if(dadoTM1 != 0 || dadoTM2 != 0){						// Se estou apertando algum botão
	
		if (dadoTM1 !=0)							// Se estou apertando as primeiras linhas
			dadoTM = dadoTM1;						// Atribuí o valor pressionado ao dadoTM 
		else if(dadoTM2 !=0)							// Se estou apertando as duas últimas linhas
			dadoTM = dadoTM2 + 128;						// Atribuí o valor pressionado ao dadoTM
			
			
		TM.value[TM.vectorControl] = TM2HEX(dadoTM);				// Coloca no vetor do Display o valor correspondente ao pressionado.
		
		do{
			selTeclado = 0x40;
			dadoTM1 = selTeclado;	
			selTeclado = 0x80;
			dadoTM2 = selTeclado;
		} while((dadoTM1 == dadoTM) || (dadoTM2 +128 == dadoTM ));		// Espera até soltar o botão (DEBOUCER)
		
	
		boolHour1 = ((TM.control == hour1 || (TM.control == configHour && TM.vectorControl == 0 )) && TM2HEX(dadoTM) <=2); // Verifica se o digito da dezena da hora que está sendo pressionado é o correto
		
		boolHour2 = ((TM.control == hour2 || (TM.control == configHour && TM.vectorControl == 1 )) && ((TM2HEX(dadoTM) <=9 && TM.value[0] <= 1) || (TM2HEX(dadoTM) <=3 && TM.value[0] == 2)) ); // Verifica se o digito da unidade da hora que está sendo pressionado é o correto
		
		boolMin1 = ((TM.control == min1 || (TM.control == configHour && TM.vectorControl == 2 )) && TM2HEX(dadoTM) <=5); // Verifica se o digito da dezena do minuto que está sendo pressionado é o correto
		
		boolMin2 = ((TM.control == min2 || (TM.control == configHour && TM.vectorControl ==3 )) && TM2HEX(dadoTM) <=9); // Verifica se o digito da unidade do minuto que está sendo pressionado é o correto
		
		boolControl = ((TM.control> min2 && TM.control<configHour) || TM.control == configDay); // Como apresenta duas vezes que se configura o horário, no alarme e no início do display, a boolControl atribuí as correções para esses momentos, para os outros, deixa apenas configurar o dia e o ano.
	
		if( !(boolHour1 || boolHour2 || boolMin1 || boolMin2 || boolControl) )
			TM.value[TM.vectorControl] = 16;
		else{

			if(TM.control == hour1)
				dh.hora = 10*TM.value[TM.vectorControl]; 					// Atribuí o valor para a dezena da hora de dh
			else if(TM.control == hour2)
				dh.hora += TM.value[TM.vectorControl];						// Atribuí o valor para a unidade da hora de dh
			else if(TM.control == min1)
				dh.min = 10*TM.value[TM.vectorControl];						// Atribuí o valor para a dezena do minuto de dh
			else if(TM.control == min2)
				dh.min += TM.value[TM.vectorControl];						// Atribuí o valor para a unidade do minuto de dh
			
			else if(TM.control == day1)
				dh.dia = 10*TM.value[TM.vectorControl];						// Atribuí o valor para a dezena do dia de dh
			else if(TM.control == day2)
				dh.dia += TM.value[TM.vectorControl];						// Atribuí o valor para a unidade do dia de dh
			else if(TM.control == month1)
				dh.mes = 10*TM.value[TM.vectorControl];						// Atribuí o valor para a dezena do mes de dh
			else if(TM.control == month2)
				dh.mes += TM.value[TM.vectorControl];						// Atribuí o valor para a unidade do mes de dh
				
			else if(TM.control == year1)
				dh.ano = 1000*TM.value[TM.vectorControl];					// Atribuí o valor para o milhar do ano de dh
			else if(TM.control == year2)
				dh.ano += 100*TM.value[TM.vectorControl];					// Atribuí o valor para a centena do ano de dh
			else if(TM.control == year3)
				dh.ano += 10*TM.value[TM.vectorControl];					// Atribuí o valor para a dezena do ano de dh
			else if(TM.control == year4){
				dh.ano += TM.value[TM.vectorControl];						// Atribuí o valor para a unidade do ano de dh
				TM.vectorControl = 0;
			}
		
			else if(TM.control == configHour && TM.vectorControl == 0){				// Se estiver no modo de configuração de hora
				alarm.hora = 10*TM.value[TM.vectorControl];					// Atribuí o valor para a dezena da hora do alarme
				TM.vectorControl++;
			}
			else if(TM.control == configHour && TM.vectorControl == 1){
				alarm.hora += TM.value[TM.vectorControl];					// Atribuí o valor para a unidade da hora do alarme
				TM.vectorControl++;
			}
			else if(TM.control == configHour && TM.vectorControl == 2){
				alarm.min = 10*TM.value[TM.vectorControl];					// Atribuí o valor para a dezena do minuto do alarme
				TM.vectorControl++;
			}
			else if(TM.control == configHour && TM.vectorControl == 3){
				alarm.min += TM.value[TM.vectorControl];					// Atribuí o valor para a unidade do minuto do alarme
				TM.control = configDay;								// Atribuí a configuração do dia
				TM.value[0] = 16;								// Coloca ponto no display 1
				TM.value[1] = 16;								// Coloca ponto no display 2
				TM.value[2] = 16;								// Coloca ponto no display 3
				TM.value[3] = 16;								// Coloca ponto no display 4
				TM.vectorControl = 0;								// Reinicializa a variável
			}
		
		
			else if(TM.control == configDay && TM.vectorControl == 0){
				alarm.dia = 10*TM.value[TM.vectorControl];					// Atribuí o valor para a dezena do dia do alarme
				TM.vectorControl++;
			}
			else if(TM.control == configDay && TM.vectorControl == 1){
				alarm.dia += TM.value[TM.vectorControl];					// Atribuí o valor para a unidade do dia do alarme
				TM.vectorControl++;
			}
			else if(TM.control == configDay && TM.vectorControl == 2){
				alarm.mes = 10*TM.value[TM.vectorControl];					// Atribuí o valor para a dezena do mes do alarme
				TM.vectorControl++;
			}
			else if(TM.control == configDay && TM.vectorControl == 3){
				alarm.mes += TM.value[TM.vectorControl];					// Atribuí o valor para a unidade do mes do alarme
				TM.control = clear;								// Volta para mostrar o horário
				TM.vectorControl = 0;								// Reinicializa a variável
			}
		
		
			if(TM.control<clear){
				TM.vectorControl++;
				TM.control++;
			}
			else{
				if (TM.value[TM.vectorControl] == 13 && TM.control == clear)		// Se o valor digitado for 'D' e o botão não tiver sido posteriormente ativado
					TM.control = showDay;						// Ativa leitura da Data
				else if(TM.value[TM.vectorControl] == 13 && TM.control == showDay)	// Se o valor digitado for 'D' e a leitura da data estiver ativada
					TM.control = clear;												// Desativa leitura da Data
				else if(TM.value[TM.vectorControl] == 10 && TM.control == clear) 	// Se o valor digitado for 'A' e o botao não tiver sido posteriormente ativado
					TM.control = showYear;						// Ativa leitura do Ano
				else if(TM.value[TM.vectorControl] == 10 && TM.control == showYear)	// Se o valor digitado for 'A' e a leitura do Ano estiver ativada
					TM.control = clear;												// Desativa leitura do Ano
				else if(TM.value[TM.vectorControl] == 14 && TM.control == clear)	// Se o valor digitado for 'E' e o botao não tiver sido posteriormente ativado
					TM.control = showWeek;						// Ativa leitura do dia da semana
				else if(TM.value[TM.vectorControl] == 14 && TM.control == showWeek)	// Se o valor digitado for 'E' e a leitura do Ano estiver ativada
					TM.control = clear;												// Desativa leitura do dia da semana
				else if(TM.value[TM.vectorControl] == 12 && TM.control == clear){	// Se o valor digitado for 'C' e a leitura do horário para o alarme é ativado.
					TM.control = configHour;					// Atribui a configuração do horário do alarme
					TM.vectorControl = 0;						// Reinicializa a variável
					TM.value[0] = 16;												// Coloca ponto no display 1
					TM.value[1] = 16;												// Coloca ponto no display 2
					TM.value[2] = 16;												// Coloca ponto no display 3
					TM.value[3] = 16;												// Coloca ponto no display 4
				}

			}
		}
	}
}

/*
* FUNÇÕES RELACIONADAS AO TECLADO MATRICIAL
*/


/* FUNÇÃO getDiaDaSemana:
* 		Função que dado um DIA, MES e ANO, retorna qual o dia da semana sendo:
*			0 -> SEGUNDA
*			1 -> TERCA
*			2 -> QUARTA
*			3 -> QUINTA
*			4 -> SEXTA
*			5 -> SABADO
*			6 -> DOMINGO
*		ALGORITMO BASEADO NO SITE: 
*/
unsigned char getDiaDaSemana(unsigned char dia,unsigned char mes,unsigned char ano){

	unsigned char JND =                                                     
          dia                                                      
        + ((153 * (mes + 12 * ((14 - mes) / 12) - 3) + 2) / 5) 
        + (365 * (ano + 4800 - ((14 - mes) / 12)))              
        + ((ano + 4800 - ((14 - mes) / 12)) / 4)                
        - ((ano + 4800 - ((14 - mes) / 12)) / 100)              
        + ((ano + 4800 - ((14 - mes) / 12)) / 400)              
        - 32045;
        
	return JND % 7;
}

/* FUNÇÃO verificaData:
*  		Função que verifica se a data é válida ou não, dado um DAY, MONTH e YEAR retorna:
*			0 -> se a data não existir
*			1 -> se a data existir
*/
unsigned char verificaData(unsigned char day, unsigned char month, unsigned int year){
	unsigned char bissexto = 0;
	
	if(year % 400 == 0 || (year % 100 != 0 && year % 4 == 0))
		bissexto = 1;

	if((day > 0 && day<=31) && (month>0 && month<=12)){
		if(day == 31 && (month != 1 && month != 3 && month != 5 && month != 7 && month != 8 && month != 10 && month != 12))
			return 0;
		else if(day == 30 && (month != 4 && month != 6 && month != 9 && month != 11))
			return 0;
		else if(day == 29 && month == 2 && bissexto == 0)
			return 0;
		else if(month == 2 && day>29 )
			return 0;
		
			
		return 1;	
	}
	
	return 0;
}


/* FUNÇÃO atualizaHora:
*  		Função que atribuí os valores de minuto, somando em horas, dias, meses e anos.
*/
void volatile atualizaHora(){

	unsigned char mes[] = {31,28,31,30,31,30,31,31,30,31,30,31}; 
	
	if(dh.ano % 400 == 0 || (dh.ano % 100 != 0 && dh.ano % 4 == 0))
		mes[1] = 29;

	dh.min++;
	
	if(dh.min == 60){
		dh.hora++;
		dh.min = 0;
		if(dh.hora == 24){
			dh.dia++;
			dh.hora = 0;
			dh.min = 0;
			if(dh.dia > mes[dh.mes - 1]){
				dh.mes++;
				dh.dia = 1;
				dh.hora = 0;
				dh.min = 0;
				if(dh.mes == 13){
					dh.ano++;
					dh.mes = 1;
					dh.dia = 1;
					dh.hora = 0;
					dh.min = 0;
				}			
			}
		}
	}
}

/* FUNÇÃO delayTime:
* 		Funcao para delay em miliegundos que recebe como parâmetro a quantidade de milisegundos desejados 
*		OBS: Diferente do delayMicroseconds, esse delay ele NÃO ESPERA ATÉ TERMINAR A TEMPORIZAÇÃO
*		
*/
void delayTime(unsigned int miliseconds){
	/*
	* Funcao para delay em milisegundos
	*/
	Timer0.flag=1;
	
	if(!Timer0.finish){
		Timer0.cycles = miliseconds/65;
		Timer0.lastClock = 65535 - ((miliseconds % 65)*1000); 
	
		TR0 = 1;
		Timer0.finish = 1;
	}
}

/* FUNÇÃO timerMiliseconds:
* 		Função que controla a interrupção do TIMER0
*/
void volatile timerMiliseconds() __interrupt 1{ //(slide aplicmicro 11_C.pdf pg.13)

	TH0 = 0; 									// Zerar os bits mais significativos do contador
	TL0 = 0; 									// Zerar os bits menos significativos do contador
	TF0 = 0;									// Zero a flag do contador
	TR0 = 0;									// Paro timer0
	
	if(Timer0.cycles > 1){
        Timer0.cycles--;						// decrementa cycles
		TR0 = 1;								// inicia contador
	}
	else if(Timer0.cycles == 1){
		TH0 = Timer0.lastClock & 0xFF ;			// Atribui ao ultimo timer o valor dos bits mais significativos
		TL0 = Timer0.lastClock >> 8;			// Atribui ao ultimo timer o valor dos bits menos significativos
        Timer0.cycles--;						// decrementa cycles
		TR0 = 1;								// inicia contador
	}	
	else if(Timer0.cycles == 0){
        Timer0.finish = 0;						// finish é uma flag que indica que o tempo acabou
        if(TM.control>=clear)
        	atualizaHora();
	}
}

/* FUNÇÃO configurations:
*		Função atribuí as configurações para o KIT funcionar
*/
void configurations(){
	IE = 0x8A; 				// Habilitando interrupções, timer0 e timer1 (slide sistmicro 03_Interrupções.pdf pg.9)
	IP = 0x02; 				// Habilitando prioridade de interrupções para timer0 (slide aplicmicro 11_C.pdf pg.13)
		
	TH0 = 0; 				// Zerar os bits mais significativos do temporizador TIMER0
	TL0 = 0; 				// Zerar os bits menos significativos do temporizador TIMER0
	
	TH1 = 0; 				// Zerar os bits mais significativos do contador TIMER1
	TL1 = 0; 				// Zerar os bits menos significativos do contador TIMER1
	
	TMOD = 0x01; 			// Habilitando contagem modo 16-bits (slide sistmicro 04_Timer.pdf pg.8)
	
	P1 = 0x00;				// Desligando os LEDS
	
	dh.dia = 0;
	dh.mes = 0;
	dh.ano = 0;
	dh.hora = 0;
	dh.min = 0;
	
	TM.control = 0;
	TM.value[0] = 16;		// Coloca ponto no display 1
	TM.value[1] = 16;		// Coloca ponto no display 2
	TM.value[2] = 16;		// Coloca ponto no display 3
	TM.value[3] = 16;		// Coloca ponto no display 4
}

/* FUNÇÃO varredura:
*		Função executa a varredura do DISPLAY7S e do Teclado Matricial
*/
void varredura(unsigned char D1, unsigned char D2, unsigned char D3, unsigned char D4, unsigned int time, unsigned char dot){
	varreduraD7S(D1,D2,D3,D4,time,dot);
	varreduraTecladoMat();	
}

/* FUNÇÃO resetTM:
*		Espera um tempo depois de digitado o último display para mudar as opções
*/
void resetTM(){
	varredura(TM.value[0], TM.value[1], TM.value[2], TM.value[3],125,0);	// Mostra os valores selecionados nos Displays
	if(!Timer0.flag)														// Se o timer não estiver funcionando
		delayTime(1000);													// Ativa o timer
	if(!Timer0.finish){														// Quando o timer acabar sua temporização
		Timer0.flag = 0;													// o timer não está mais funcionando
		TM.value[0] = 16;													// Coloca ponto no display 1
		TM.value[1] = 16;													// Coloca ponto no display 2
		TM.value[2] = 16;													// Coloca ponto no display 3
		TM.value[3] = 16;													// Coloca ponto no display 4
		TM.vectorControl = 0;												// Reinicializa variável
		TM.control++;
	}
}

/* FUNÇÃO main:
*		Função que é a primeira a ser executada
*/
void main(){
	unsigned char *digits;
	
	configurations(); 																		// Atribuí as configurações

	while(1){
		
		if(TM.control == reset1 || TM.control == reset2 || TM.control == reset3){
			resetTM();
			if(TM.control == reset3){
				if(!verificaData(dh.dia,dh.mes,dh.ano)){									// Se a data colocada estiver errada, habilita para configurar novamente
					TM.value[0] = 16;														// Coloca ponto no display 1
					TM.value[1] = 16;														// Coloca ponto no display 2
					TM.value[2] = 16;														// Coloca ponto no display 3
					TM.value[3] = 16;														// Coloca ponto no display 4
					TM.vectorControl = 0;
					TM.control = day1;														// Habilita colocar a data novamente
				}
			}	
		}
		else if(TM.control == clear) 														// Se estiver em CONTROL = CLEAR
			varredura(dh.hora / 10,dh.hora % 10,dh.min / 10,dh.min%10,125,1);		// Mostra o horário
			//varredura(dh.min / 10,dh.min % 10,dh.hora / 10,dh.hora % 10,125,1);
		else if(TM.control == showDay)
			varredura(dh.dia / 10,dh.dia % 10,dh.mes / 10,dh.mes%10,125,1);			// Mostra o dia e mes
		else if(TM.control == showYear)
			varredura(dh.ano/1000,(dh.ano%1000) / 100,(dh.ano%100) / 10,dh.ano%10,125,0);	// Mostra o ano
		else if(TM.control == showWeek){
			digits = digitosLetter7S(getDiaDaSemana(dh.dia,dh.mes,dh.ano));			// Pega os digitos do dia da semana para atribuir ao display
			if(digits[3] == 0)
				digits[3] = 127;
				
			varredura(digits[0],digits[1],digits[2],digits[3],125,0);			// Mostra o dia da semana
		}

		else if(TM.control < clear || TM.control == configHour || TM.control == configDay)
			varredura(TM.value[0], TM.value[1], TM.value[2], TM.value[3],125,0);		// Mostra o número que está sendo pressionado
		
		if(TM.control>= clear){																// O tempo começa a se contado depois que configura todas as opção de horário, dia, mes e ano. Para começar depois de setar o horário, trocar para TM.control >=reset1 aqui e na linha 620 do código.
			if(!Timer0.flag)																// Se o timer não estiver ativo
				delayTime(2000);															// Inicializa a contagem de 1 minuto
			if(!Timer0.finish)																// Quando a contagem acabar
				Timer0.flag = 0;															// O timer não estará mais ativo
		}

		if(TM.control >= clear && TM.control != configHour && TM.control != configDay && 
			(alarm.hora == dh.hora && alarm.min == dh.min && alarm.dia == dh.dia && dh.mes == dh.mes)){	// Se o dia e o horário do alarme corresponder ao dia e horário atual de dh, acende os LEDS
			P1 += 1;
			if(P1 > 15)
				P1 = 1;
		}
		else if(alarm.min != dh.min)	// Quando os horários de alarme e dh não coincidirem os LEDS apagam
			P1 = 0;

	}
}