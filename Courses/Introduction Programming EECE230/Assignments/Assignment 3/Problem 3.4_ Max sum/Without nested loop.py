#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Sep 24 22:47:59 2019

@author: ahmadbeydoun
"""

l=input("Enter integers spearated by spaces:")
L=[int(x) for x in l.split()]
summ=L[0]
new_sum=L[0]
a=0
b=0
for i in range(1,len(L)):
    if L[i]>=new_sum+L[i]:
        new_sum=L[i]
        a=i
    else:
        new_sum=new_sum+L[i]
    if summ>new_sum:
        summ=summ
    elif new_sum>=summ:
        summ=new_sum
        b=i
print ("Max-sum=",summ)
if summ!=0:
    print ("A max-sum subsequence:")
    for s in range(a,b+1):
        print (L[s],end=" ")
# for a long list such as "-10 -1 3 4 -3 5 -2 7 -11 2 4 1 2 -3 4 5 -9 2 6 -10 5" this takes around 40 steps 
#but with three nested loops ot takes more tham 1000 steps
