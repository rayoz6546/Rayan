#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Sep 13 11:29:45 2019

@author: ahmadbeydoun
"""

n = int(input("Enter n:"))
if n<=1:
    print(n,"is not prime")
else:
    isPrime=True
    d=2
    while d*d<=n and isPrime==True:
         if n%d==0:
            isPrime = False
         d=d+1
    if isPrime:
        print(n,"is prime")
    else:
        print(n,"is not prime")