#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct  1 16:30:09 2019

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
            if isSubsequencePalindrome(s,i,j):
                if j-i>end-start:
                    start=i
                    end=j
    return s[start:end+1]
print(longestPalSubsB("aceexcivicgrfdds"))
print(longestPalSubsB("civicgrfdds"))
print(longestPalSubsB("aceexcivic"))
print(longestPalSubsB("civic"))
print(longestPalSubsB("123abba1"))
print(longestPalSubsB("abba1"))
print(longestPalSubsB("123abba"))
print(longestPalSubsB("12345"))
print(longestPalSubsB(" "))