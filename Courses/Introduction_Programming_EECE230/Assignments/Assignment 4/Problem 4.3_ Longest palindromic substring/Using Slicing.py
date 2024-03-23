#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct  1 16:30:06 2019

@author: ahmadbeydoun
"""

def longestPalSubsA(s):
    start=0
    end=0
    for i in range(len(s)):
        for j in range(i,len(s)):
            t=s[i:j+1]
            if t==t[::-1]:
                if j-i>end-start:
                    start=i
                    end=j+1
    return s[start:end]
print(longestPalSubsA("aceexcivicgrfdds"))
print(longestPalSubsA("civicgrfdds"))
print(longestPalSubsA("aceexcivic"))
print(longestPalSubsA("civic"))
print(longestPalSubsA("123abba1"))
print(longestPalSubsA("abba1"))
print(longestPalSubsA("123abba"))
print(longestPalSubsA("12345"))
print(longestPalSubsA(""))