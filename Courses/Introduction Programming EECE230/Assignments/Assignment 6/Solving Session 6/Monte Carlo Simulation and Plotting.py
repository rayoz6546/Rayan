#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 14:53:07 2019

@author: ahmadbeydoun
"""
import numpy.random as rand
import matplotlib.pyplot as plt
from math import pi
def monteCraloPiApproximation(N):
    m=0
    approximatePi=[]
    for n in range(1,N+1):
        x=rand.uniform(-1,1)
        y=rand.uniform(-1,1)
        if x**2+y**2<=1:
            m+=1
        approximatePi.append(4*m/n)
    return approximatePi
N=10000
X=[i for i in range(1,N+1)]
approximatePi=monteCraloPiApproximation(N)
plt.figure(1)
plt.clf()
plt.subplot(2,1,1)
plt.plot(X,approximatePi,"r",label="approximation")
plt.plot(X,[pi]*N,'k',label="pi")
plt.xlabel("n")
plt.legend()
AbsError=[abs(approximatePi[i]-pi) for i in range(N)]
plt.subplot(2,1,2)
plt.plot(X,AbsError,"k")
plt.xlabel("n")
plt.yscale("log")
plt.ylabel("Absolute value of \napproximation error")