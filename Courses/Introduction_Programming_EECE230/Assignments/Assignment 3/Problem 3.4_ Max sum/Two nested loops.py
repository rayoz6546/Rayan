#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Sep 24 21:59:04 2019

@author: ahmadbeydoun
"""

l=input("Enter integers spearated by spaces:")
L=[int(x) for x in l.split()]
summ=0
a=0
b=0
for i in range(len(L)):
    new_sum=0
    for j in range(i,len(L)):
        new_sum=new_sum+L[j]
        if new_sum>summ:
            summ=new_sum
            a=i
            b=j
print ("Max-sum=",summ)
if summ!=0:
    print ("A max-sum subsequence:")
    for s in range(a,b+1):
        print (L[s],end=" ")