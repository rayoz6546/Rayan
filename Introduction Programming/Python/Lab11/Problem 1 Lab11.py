# -*- coding: utf-8 -*-
"""
Created on Thu Apr 16 19:56:34 2020

@author: RAYAN
"""

def isPalindrome(s):
    
    def isPalindromeRec(s,low,high):
        if low>=high:     # if it's an empty string (0>-1) OR if we only have one element
            return True
        if s[low].lower()==s[high].lower(): # (.lower) to treat capital and small letters equally
            return isPalindromeRec(s,low+1,high-1)
        else:
            return False
        
    n=len(s)
    return isPalindromeRec(s,0,n-1)

print(isPalindrome("anna")) 
print(isPalindrome("civIc")) 
print(isPalindrome("a")) 
print(isPalindrome("tx1aa1Xt")) 
print(isPalindrome(""))  
print(isPalindrome("Cavic")) 
print(isPalindrome("ab")) 