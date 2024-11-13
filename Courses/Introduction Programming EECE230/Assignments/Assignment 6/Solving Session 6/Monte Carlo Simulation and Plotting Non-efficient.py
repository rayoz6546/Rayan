#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 14:06:33 2019

@author: ahmadbeydoun
"""

import numpy.random as rand
import matplotlib.pyplot as plt
from math import pi
def approximatePi(n):
    m=0
    for i in range(n):
        x=rand.uniform(-1,1)
        y=rand.uniform(-1,1)
        if x**2+y**2<=1:
            m+=1
    return 4*m/n
def monteCraloPiApproximation(N):
    L=[0]*N
    for i in range(1,N):
        L[i]=approximatePi(i)
    return L
N=1000
plt.figure(1)
plt.plot([i for i in range(N)],monteCraloPiApproximation(N),"r")
plt.plot([i for i in range(N)],[pi]*N,'k')
plt.xlabel("n")