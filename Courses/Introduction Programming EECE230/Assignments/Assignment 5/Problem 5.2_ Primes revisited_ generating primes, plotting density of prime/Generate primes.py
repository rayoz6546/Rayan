#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 16:06:54 2019

@author: ahmadbeydoun
"""

def generatePrimes(n):
    P=[]
    c=0
    if n<2:
        return (P,c)
    else:
        for i in range(2,n):
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
(P,B)=generatePrimes(2)
print(P)
(P,B)=generatePrimes(10)
print(P)
(P,B)=generatePrimes(20)
print(P)
(P,B)=generatePrimes(100)
print(P)