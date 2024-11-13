#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 19 13:14:07 2019

@author: ahmadbeydoun
"""

s=input("Enter numbers separated by spaces:")
L=[int(x) for x in s.split()]
is_sorted=True
for i in range(len(L)):
    for j in range(i,len(L)):
        if L[i]>L[j]:
            is_sorted=False
            break
if is_sorted:
    print ("YES: input is sorted")
else:
    print ("NO: input is not sorted")