# -*- coding: utf-8 -*-
"""
Created on Tue Mar 17 21:05:09 2020

@author: RAYAN
"""



# Part a 
def generatePrimes(n):    
    B=[True for k in range(n)]
    B[1]=False
    B[0]=False
    w=2
    while(w**2<n):
        if B[w]==True:
            B.append(w)
            for j in range(w**2,n,w):
                B[j]=False
        w+=1
    P=[]
    for i in range(2,n):
        if B[i]==True:
            P.append(i)
    return (P,B)

(P,B)=generatePrimes(5)
print(P)

# Part b
def primesCount(n):
    (P,B)=generatePrimes(n)
    y=[]
    for i in range(n+1):
        numberOfPrimesCount=0
        for j in range(i):
            if B[j]==True:
                numberOfPrimesCount+=1
        y.append(numberOfPrimesCount)
    return y
print(primesCount(5))

# Part c
import matplotlib.pyplot as plt
import math
y=primesCount(200)
X1=[]
Y=[]
for i in range(200):
    X1.append(i)
    Y.append(y[i])
plt.xticks([0,25,50,75,100,125,150,175,200])
plt.yticks([0,10,20,30,40])
plt.xlabel('i')
plt.title('Density of primes')    
plt.plot(X1,Y,'r',label='pi(i)')
X2=[]
Z=[]
for i in range(2,200):
    X2.append(i)
    Z.append(i/(math.log(i)))
plt.plot(X2,Z,'k',label='i/log(i)')
plt.legend()       

            
            
                
            