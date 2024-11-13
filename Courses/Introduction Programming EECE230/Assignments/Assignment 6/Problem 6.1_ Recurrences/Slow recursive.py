#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct 16 15:40:04 2019

@author: ahmadbeydoun
"""
def g():
    global N
    N=N+1
def f(n):
    g()
    if n==0 or n==1 or n==2:
        return 1
    else:
        x=int(n/3)
        temp=f(n-3)+f(n-2)+f(n-1)+f(x)
        return temp
print("f(n) for n = 0...9:")
for i in range(10):
    N=0
    print(f(i), end=" ")
N=0
print("\nf(25): ",f(25))
print("Number of recursive calls for 25:", N)