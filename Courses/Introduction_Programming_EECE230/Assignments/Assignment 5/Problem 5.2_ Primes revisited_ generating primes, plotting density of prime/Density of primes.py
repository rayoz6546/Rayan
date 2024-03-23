#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 16:31:27 2019

@author: ahmadbeydoun
"""
def generatePrimes(n):
    P=[]
    c=0
    if n<2:
        return (P,c)
    else:
        for i in range(2,n+1):
            isPrime=True
            d=2
            while d*d<=i:
                if i%d==0:
                    isPrime=False
                    break    
                d+=1
            if isPrime:
                P.append(i)
                c+=1
        return (P,c)
def primesCount(n):
    L=[]
    for i in range(n):
        (P,B)=generatePrimes(i)
        L.append(B)
    return L
print(primesCount(5))
print(primesCount(10))