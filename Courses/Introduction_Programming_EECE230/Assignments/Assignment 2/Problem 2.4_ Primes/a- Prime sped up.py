#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 16:20:14 2019

@author: ahmadbeydoun
"""

n = int(input("Enter n:"))
if n<=1:
    print(n,"is not prime")
else:
    isPrime=True
    d=2
    while d*d<=n:
         if n%d==0:
            isPrime = False
            break
         d=d+1
    if isPrime:
        print(n,"is prime")
    else:
        print(n,"is not prime")