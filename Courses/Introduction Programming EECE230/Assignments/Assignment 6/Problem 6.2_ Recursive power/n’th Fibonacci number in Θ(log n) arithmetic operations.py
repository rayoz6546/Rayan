#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov  5 23:17:30 2019

@author: ahmadbeydoun
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
    if n==0:
        return 0
    def recMatrixPowerFast(X,n):
        if n==1: #base case is the matrix itself
            return X
        else:
            if n%2==0: #if n is even we split into 2  and then we square it (here we square the matrix)
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