#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 16:41:31 2019

@author: ahmadbeydoun
"""
import matplotlib.pyplot as plt
from math import log
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
n=200
X=[i for i in range(n)]
Y=primesCount(n)
plt.figure(1)
plt.clf()
plt.plot(X,Y,"r",label="pi(i)")
plt.plot([i for i in range(2,n)],[(i/(log(i))) for i in range(2,n)],"k",label="i/log(i)")
plt.xlabel("n")
plt.legend()