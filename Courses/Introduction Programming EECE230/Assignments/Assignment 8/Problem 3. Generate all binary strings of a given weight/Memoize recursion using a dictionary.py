#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov 28 21:46:05 2019

@author: ahmadbeydoun
"""

def genBinStrMemoized(n,w):
    def genBinStr(n,w):
        L=[]
        if n<0 or w<0:
            return L
        elif n==w:
            return ["1"*n]
        if (n-1,w) not in D:
            X=genBinStr(n-1,w)
            D[(n-1,w)]=X
            for s in X:
                L.append("0"+s)
        else:
            L.append("0"+str(D[n-1,w][0]))
        if (n-1,w-1) not in D1:
            if w>0:
                Y=genBinStr(n-1,w-1)
                D1[(n-1,w-1)]=Y
                for s in Y:
                    L.append("1"+s) 
        else:
            L.append("1"+str(D1[n-1,w-1][0]))
        return L
    D={}
    D1={}
    return genBinStr(n,w)
print(genBinStrMemoized(3,0))
print(genBinStrMemoized(3,1))
print(genBinStrMemoized(3,2))
print(genBinStrMemoized(3,3))
print(genBinStrMemoized(4,2))
print(genBinStrMemoized(6,1))