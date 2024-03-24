#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 19 13:16:56 2019

@author: ahmadbeydoun
"""

s=input("Enter the integers in the first sequence spearated by spaces:")
t=input("Enter the integers in the second sequence spearated by spaces:")
L1=[int(x) for x in s.split()]
L2=[int(x) for x in t.split()]
if L1==L2:
    print ("Sequences are equal")
else:
    print ("Sequences are not equal")