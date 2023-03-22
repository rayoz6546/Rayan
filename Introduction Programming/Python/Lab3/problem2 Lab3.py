# -*- coding: utf-8 -*-
"""
Created on Wed Feb 12 14:26:08 2020

@author: rbh13
"""
#PART A

n=int(input("Input number to compute factorial:"))
i=0
x=1
while i<n:
    x=x*(n-i)
    i+=1
print("Using a While loop, the factorial of",n,"is",x)

#PART B

n=int(input("Input number to compute factorial:"))
i=0
x=1
for i in range(0,n):
    x=x*(n-i)
print("Using a for loop, the factorial of",n,"is",x)

#PART C

import math
n=int(input("Input number to compute factorial:"))
x=math.factorial(n)
print("Using the math library, the factorial of",n,"is",x)