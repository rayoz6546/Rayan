#include <time.h>
#include <stdio.h>
#include <stdlib.h>

#define n 1024
using namespace std;
	float A[n][n];	
	float B[n][n];
	float C[n][n];



int main(){

	srand((unsigned)time(NULL));
	
	for (int i=0; i<n; i++){
		for (int j=0; j<n; j++) {
			A[i][j]=rand()/(float)RAND_MAX;
			B[i][j]=rand()/(float)RAND_MAX;
			}
	}
	
	clock_t start_time = clock(); 
	
	// code for C=A x B
	
	float result = 0;
	for (int i = 0; i<n; i++){
		for (int j = 0; i<n;i++){
			for (int k = 0; k<n; i++){
				result += A[i][k]*B[k][j];
				}
				C[i][j]=result;
				result=0;
			}
		}
		
	clock_t end_time = clock();
	float elapse = (float)(end_time - start_time)/CLOCKS_PER_SEC;
	printf("elapse: %.4f seconds\n", elapse);
	
	return 0;

}
