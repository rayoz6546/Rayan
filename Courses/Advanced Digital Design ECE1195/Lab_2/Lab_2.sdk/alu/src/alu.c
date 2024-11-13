#include <stdio.h>
#include <stdlib.h>

int Random(int lower, int upper){
	int num = (rand() %(upper - lower + 1)) + lower;
	return num;
}

int main(void)
{
	uint32_t *regmap = (uint32_t *) 0x70000000; // base address of axi_regmap as set in the Vivado address editor


	// --------------------------logical unit---------------------------------------
	printf("Testing logical unit \n");
	int i;
	for (i=1; i<10; i++) {
		size_t a = rand()%100;
		size_t b = rand()%100;
		size_t op= rand()%3; //op = 0000, 0001, 0010 or 0011 because we're testing logical unit
		size_t sh= 0b00000; // doesn't matter for now
		regmap[0]=a;
		regmap[1]=b;
		regmap[2]=op;  //
		regmap[3]=sh; // we don't care about SHUMT here
		size_t r = regmap[0];
		if (op == 0) { // A and B
			printf("%2zu and %2zu = %3zu (%s)\n", a, b, r, (r==(a & b)) ? "COR":"ERR");
		}
		else if (op == 1) { // A or B
			printf("%2zu or %2zu = %3zu (%s)\n", a, b, r, (r==(a | b)) ? "COR":"ERR");
		}
		else if (op == 2) { //A xor B
			printf("%2zu xor %2zu = %3zu (%s)\n", a, b, r, (r==(a ^ b)) ? "COR":"ERR");
		}
		else { //A nor B
			printf("%2zu nor %2zu = %3zu (%s)\n", a, b, r, (r== !(a | b)) ? "COR":"ERR");
		}
	}



	//--------------------------------comparator unit-------------------------------
	printf("\n Testing comparator unit \n");
	printf("\n SLTU \n");
		//SLTU

	for (i=1; i<10; i++) {
		size_t a = rand()%100;
		size_t b = rand()%100;
		size_t op= 11; //SLTU (1011)
		size_t sh= 0b00000; // we don't care here
		regmap[0]=a;
		regmap[1]=b;
		regmap[2]=op;
		regmap[3]=sh;
		size_t r = regmap[0];
		if (a<b){
			printf("%d < %d R=%d (%s)\n",a,b, r, (r==1)? "COR":"ERR");
		}
		else if (a>b){
			printf("%d > %d R=%d (%s)\n",a,b, r, (r==0)? "COR":"ERR");
		}
		else {
			printf("%d = %d R=%d (%s)\n",a,b, r, (r!=(a==b))? "COR":"ERR");
		}
	}
	printf("\n SLT \n");

	for (i=1; i<10; i++) {
		int a = Random(-50,50);
		int b = Random(-50,50);
		size_t op= 10; //SLT (1010)
		size_t sh= 0b00000; // we don't care here
		regmap[0]=a;
		regmap[1]=b;
		regmap[2]=op;
		regmap[3]=sh;
		size_t r = regmap[0];
		if (a<b){
			printf("%d < %d R=%d (%s)\n",a,b, r, (r==1)? "COR":"ERR");
		}
		else if (a>b){
			printf("%d > %d R=%d (%s)\n",a,b, r, (r==0)? "COR":"ERR");
		}
		else {
			printf("%d = %d R=%d (%s)\n",a,b, r, (r!=(a==b))? "COR":"ERR");
		}
	}



	// ------------------------------arithmetic unit--------------------------------
	printf("\n Testing arithmetic unit \n");

			for (i=1; i<10; i++) {
				size_t a = rand()%100;
				size_t b = Random(-100,100);
				size_t op= rand()%3 + 4; //op = 0100, 0101, 0110 or 0111
				size_t sh= 0b00000; // doesn't matter for now
				regmap[0]=a;
				regmap[1]=b;
				regmap[2]=op;
				regmap[3]=sh; // we don't care about SHUMT here
				size_t r = regmap[0];
				size_t ovf = regmap[4];
				size_t z = regmap[5];

				if (op==4) {
					if (op==4){
						printf("%d + %d = %d overflow=%2zu zero=%2zu (%s)\n", a, b, r, ovf, z, (r== a+b) ? "COR":"ERR");
					}
					else if (op ==6){
					printf("%d - %d = %d overflow=%2zu zero=%2zu (%s)\n", a, b, r, ovf, z, (r== a-b) ? "COR":"ERR");
					}
				}
				else {
					if (op==5){
						printf("%d + %d = %d overflow=%2zu zero=%2zu (%s)\n", a, b, r, ovf, z, (r== a+b) ? "COR":"ERR");
					}
					else if (op==7){
						printf("%d - %d = %d overflow=%2zu zero=%2zu (%s)\n", a, b, r, ovf, z, (r== a-b) ? "COR":"ERR");
				}
				}
			}



	//----------------------------------shift unit----------------------------------
	printf("\n Testing shift unit \n");
	size_t j;
	for (j=13; j<=15; j++){
		size_t a = 0xFEDCBA98;
		size_t b = rand()%100; // we don't care here
		size_t op= j; //op=1101 (i=13 decimal) (sll), 1110 (i=14)(srl) or 1111 (i=15) (sra)
		size_t sh= 0b01110;
		regmap[0]=a;
		regmap[1]=b;
		regmap[2]=op;
		regmap[3]=sh;
		size_t r = regmap[0];
		if (j==13){
			printf("a=%x shifted left (logical) by %2zu bits is r=%x (%s)\n",a,sh,r, (r==(a<<sh))? "COR":"ERR");
		}
		else if (j==14){
			printf("a=%x shifted right (logical) by %2zu bits is r=%x (%s)\n",a,sh,r, (r==(a>>sh))? "COR":"ERR");
		}
		else{

			printf("a=%x shifted right (arithmetic) by %2zu bits is r=%x (COR)\n",a,sh,r);
		}
	}

	return 0;
}
