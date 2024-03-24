#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Sep 22 19:53:02 2019

@author: ahmadbeydoun
"""

l=input("Enter integers spearated by spaces:")
L=[int(x) for x in l.split()]
summ=0
for i in range(len(L)):
    for j in range(i,len(L)):
        A=L[i:j+1]
        new_sum=sum(L[i:j+1])
        if new_sum>summ:
            summ=new_sum
            B=A
print ("Max-sum=",summ)
if summ!=0:
    print ("A max-sum subsequence:")
    print (B)