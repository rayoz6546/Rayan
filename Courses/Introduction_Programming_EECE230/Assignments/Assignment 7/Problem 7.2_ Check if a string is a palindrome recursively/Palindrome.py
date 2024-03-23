#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov 12 17:48:19 2019

@author: ahmadbeydoun
"""

def isPalindrome(s): # Wrapper function
    def isPalindromeRec(s,low,high):
        if low>=high:
            return True
        if s[low]==s[high]:
            return isPalindromeRec(s,low+1,high-1)
        else:
            return False
        return True
    n =len(s)
    return isPalindromeRec(s,0,n-1)
print(isPalindrome("anna"))
print(isPalindrome("civic"))
print(isPalindrome("a"))
print(isPalindrome("tx1aa1xt"))
print(isPalindrome(""))
print(isPalindrome("Civic"))
print(isPalindrome("ab"))
