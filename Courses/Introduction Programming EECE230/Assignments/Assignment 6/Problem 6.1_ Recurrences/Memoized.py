#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct 16 15:52:14 2019

@author: ahmadbeydoun
"""

def g():
    global N
    N=N+1
def fMemoized(n):
    def f(n,L):
        g()
        if L[n]!=-1:  
            return L[n]
        elif  n==0 or n==1 or n==2:  
            L[n]=1
        else: 
            x=int(n/3)
            L[n] = f(n-1,L)+f(n-2,L)+f(n-3,L)+f(x,L)
        return L[n]
    L = [-1]*(n+1) 
    return f(n,L)
print("fMemoized for n = 0...9:")
for i in range(10):
    N=0
    print(fMemoized(i), end=" ")
N=0
print("\nf(25): ",fMemoized(25))
print("Number of recursive calls for 25:", N)