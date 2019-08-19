#include<Math.h>

unsigned char pow(unsigned char base, unsigned char power){
	unsigned char n, total = 1;
	
	for(n = 0; n < power; n++){
		total*=base; 
	}
	
	return total;
}