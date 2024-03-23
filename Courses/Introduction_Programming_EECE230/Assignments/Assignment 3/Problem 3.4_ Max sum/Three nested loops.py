#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Sep 22 19:44:39 2019

@author: ahmadbeydoun
"""
l=input("Enter integers spearated by spaces:")
L=[int(x) for x in l.split()]
summ=0
a=0
b=0
for i in range(len(L)):
    for j in range(i,len(L)):
        new_sum=0
        for k in range(i,j+1):
            new_sum=new_sum+L[k]
            if new_sum>summ:
                summ=new_sum
                a=i
                b=k
print ("Max-sum=",summ)
if summ!=0:
    print ("A max-sum subsequence:")
    for s in range(a,b+1):
        print (L[s],end=" ")