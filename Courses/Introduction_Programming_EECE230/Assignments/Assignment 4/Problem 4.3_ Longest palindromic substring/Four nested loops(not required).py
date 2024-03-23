#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  2 14:56:08 2019

@author: ahmadbeydoun
"""

def isSubsequencePalindrome(s,start,end):
    is_palindrome=True
    c=0
    for i in range(start,end+1):
        if s[i]!=s[end-c]:
            is_palindrome=False
            break
        else:
            c+=1
    return is_palindrome
def longestPalSubsB(s):
    start=0
    end=0
    for i in range(len(s)):
        for j in range(i,len(s)):
            for k in range(i,j):
                if isSubsequencePalindrome(s,k,j):
                    if j-k>end-start:
                        start=k
                        end=j
    return s[start:end+1]