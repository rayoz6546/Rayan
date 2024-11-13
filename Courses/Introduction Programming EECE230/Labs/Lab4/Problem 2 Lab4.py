# -*- coding: utf-8 -*-
"""
Created on Thu Feb 20 21:23:51 2020

@author: RAYAN
"""

#Part 1
s=input("Input string to check if palindrome:")
palindrome=True
j=len(s)-1
i=0
while (j>=i):
    
    if (s[i] == " "):
        i+=1
    if (s[j]== " "):
        j-=1
    else:
        
        if (s[i]).lower()==(s[j]).lower():
            palindrome=True
        else:
            palindrome=False
            break
        i+=1
        j-=1
if palindrome==True:
    print(s,"is a palindrome")
else:
    print(s,"is NOT a palindrome")
    
#Part 2
#string=input("Input string to check if palindrome:")
#rev_string=string[ : : -1]
#if string.lower()==rev_string.lower():
#    print(string,"is a palindrome")
#else:
#    print(string,"is NOT a palindrome")