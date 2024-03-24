#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 19 13:16:30 2019

@author: ahmadbeydoun
"""
s=input("Enter the integers in the first sequence spearated by spaces:")
t=input("Enter the integers in the second sequence spearated by spaces:")
L1=[int(x) for x in s.split()]
L2=[int(x) for x in t.split()]
is_equal=True
if len(L1)!=len(L2):
    is_equal=False
else:
    for i in range(len(L1)):
            if L1[i]!=L2[i]:
                is_equal=False
                break
if is_equal:
    print ("Sequences are equal")
else:
    print ("Sequences are not equal")
