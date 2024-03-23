#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct  1 17:07:12 2019

@author: ahmadbeydoun
"""

def longestPalSubsB(s):
    start=0
    end=0
    for i in range(len(s)):
        for j in range(i,len(s)):
            for k in range(i,j):
                if s[k]==s[j] and s[k+1]==s[j-1]:
                    if j-k>end-start:
                        start=k
                        end=j
    return s[start:end+1]
print(longestPalSubsB("aceexcivicgrfdds"))
#Does not work for ciivic