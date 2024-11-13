#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct  1 17:15:08 2019

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

def longestPalSubsC(s):
    n=len(s)
    max_palindrome=-1
    a=0
    b=0
    for center in range(n):
        left=center
        right=center
        while left>=0 and right<n:
            if isSubsequencePalindrome(s,left,right):
                if right-left>max_palindrome:
                    max_palindrome=right-left
                    a=left
                    b=right
            left-=1
            right+=1
        left=center
        right=center+1
        while left>=0 and right<n:
            if isSubsequencePalindrome(s,left,right):
                if right-left>max_palindrome:
                    max_palindrome=right-left
                    a=left
                    b=right
            left-=1
            right+=1
    return s[a:b+1]
print(longestPalSubsC("aceexcivicgrfdds"))
print(longestPalSubsC("civicgrfdds"))
print(longestPalSubsC("aceexcivic"))
print(longestPalSubsC("civic"))
print(longestPalSubsC("123abba1"))
print(longestPalSubsC("abba1"))
print(longestPalSubsC("123abba"))
print(longestPalSubsC("12345"))
print(longestPalSubsC(" "))