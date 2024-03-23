#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int main()
{
	uint32_t *regmap = (uint32_t *) 0x70000000; // base address of axi_regmap as set in the Vivado address editor

	for (int i=0; i<5; i++){
		for (int j=0; j<5; j++){

			size_t x = rand()%200;
			size_t y = rand()%200;
			size_t z = rand()%2; //generate either 0 or 1 randomly
			regmap[0] = x; //input A
			regmap[1] = y; //input B
			regmap[2] = z; //input k=0 or 1
			size_t r = regmap[0]; //output S
			size_t c = regmap[2]; //output Cout
			if (z==0){
			printf("%2zu + %2zu = %3zu cout=%d (%s)\n",x,y,r,c,(r == x+y) ? "COR" : "ERR");
			}
			else {
				printf("%2zu - %2zu = %3zu cout=%d (%s)\n",x,y,r,c,(r == x-y) ? "COR" : "ERR");
			}
		}
	}
	return 0;
}
