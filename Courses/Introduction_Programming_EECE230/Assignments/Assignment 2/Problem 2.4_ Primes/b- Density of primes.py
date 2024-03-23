#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 16:24:36 2019

@author: ahmadbeydoun
"""

n = int(input("Enter end of domain:"))
i=0
for x in range(2,n+1):
    d=2
    isPrime=True
    while d*d<=x:
        if x%d==0:
            isPrime=False
            break
        d=d+1
    if isPrime==True:
        i+=1
print("Fraction of prime less than or equal to",n,":",i/n)