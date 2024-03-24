#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Sep 20 11:09:50 2019

@author: ahmadbeydoun
"""

s=input("Enter the integers in the first sequence spearated by spaces:")
t=input("Enter the integers in the second sequence spearated by spaces:")
L1=[int(x) for x in s.split()]
L2=[int(x) for x in t.split()]
is_permuted=True
c=0
if len(L1)!=len(L2):
    is_permuted=False
else:
    for i in range(len(L1)):
        for j in range(len(L1)):
            if L1[i]==L2[j]:
                L2[j]="X"
                c+=1
                break
    if c!=len(L1):
        is_permuted=False
if is_permuted:
    print ("Sequence 2 is a permutation of sequence 1")
else:
    print ("Sequence 2 is not a permutation of sequence 1")