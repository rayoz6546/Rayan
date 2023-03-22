# -*- coding: utf-8 -*-
"""
Created on Sat Apr 11 11:16:45 2020

@author: RAYAN
"""

def multMatrices(A,B):
          """ A and B are lists of lists representing two 2 by 2 matrices"""
          C00 = A[0][0]*B[0][0]+A[0][1]*B[1][0]
          C01 = A[0][0]*B[0][1]+A[0][1]*B[1][1]
          C10 = A[1][0]*B[0][0]+A[1][1]*B[1][0]
          C11 = A[1][0]*B[0][1]+A[1][1]*B[1][1]
          C = [[C00, C01], [C10, C11]]
          return C
      
        
def fibMatrixVersion(n): #Wrapper function
    ## assumes n is a non-negative integer 
    if n==0:
        return 0
    def recMatrixPowerFast(X,n):
        ## X is a list of lists representing a 2 by 2 matrix and n is a non-negative integer
        
        if n==1: # here, the base case is the matrix itself
            return X
        else:
            if n%2==0: #if n is even we have to split into 2 and then square the matrix
                                   
                y=recMatrixPowerFast(X,n/2) 
                X=multMatrices(y,y)
                return X
            else:
                m=n-1
                y=recMatrixPowerFast(X,m/2)
                D=multMatrices(y,y)
                E=multMatrices(D,X)
                return E
    C = recMatrixPowerFast(X,n)
    return C[0][1]


X=[[1,1],[1,0]]
for i in range(11):
    print("F_",i,":", fibMatrixVersion(i))
print("F_ 100 :", fibMatrixVersion(100))