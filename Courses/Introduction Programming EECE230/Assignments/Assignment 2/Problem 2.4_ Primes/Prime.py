#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 16:07:56 2019

@author: ahmadbeydoun
"""

n = int(input("Enter n:"))
if n<=1:
    print(n,"is not prime")
else:
    isPrime=True
    d=2
    while d<=n-1:
         if n%d==0:
            isPrime=False
            break
         d=d+1
    if isPrime:
        print(n,"is prime")
    else:
        print(n,"is not prime")