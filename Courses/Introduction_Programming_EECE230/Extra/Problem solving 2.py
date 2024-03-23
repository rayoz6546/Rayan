# -*- coding: utf-8 -*-
"""
Created on Sat Mar 14 05:34:59 2020

@author: RAYAN
"""

s=input("Enter real numbers:")
L=s.split()
n=len(L)
i=0
j=0
maximum=L[0]
for i in range(n):
    for j in range(i):
        if L[i]>=L[j]:
            maximum=L[i]
   
print(maximum)
    