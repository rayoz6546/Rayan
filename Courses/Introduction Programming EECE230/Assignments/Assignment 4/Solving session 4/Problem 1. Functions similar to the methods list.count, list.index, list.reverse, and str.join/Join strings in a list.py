#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 15:00:16 2019

@author: ahmadbeydoun
"""

def join(sep,L):
    if len(L)==0:
        return ""
    res=L[0]
    for i in range(1,len(L)):
        res+=sep+L[i]
    return res
    
sep=" "
L = ["abc", "a", "abcd"]
print(sep.join(L))
print(join(sep,L))