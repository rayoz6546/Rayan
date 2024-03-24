# -*- coding: utf-8 -*-
"""
Created on Fri Jun 19 12:23:03 2020

@author: RAYAN
"""

# Rayan Hassan, Rana Chams Bacha, Sarah Zeinoun, Majd Osseiran

def grayCode(n): # n is number of bits
    
    if n==1:    # base case: if we have 1 bit, L=['0','1']
        return ['0','1']
    
    else:
        a=grayCode(n-1)  # recursive call 
        b=a.copy()    # recursive call (the reflected code-words)
        
        # here we are simply following the reverse way of the pattern
        # that we showed in the Word page, so we wanna start with n bits
        # and reach the base case, which is n=1.
    
    # Now let's group everything in a list L, and add the necessary 0's and 1's 
    # to form the gray code. 
    L=[]   
    for i in a:
        L.append('0'+i)  # the first 2^n code-words with leading ZEROS
    for j in b:
        L.append('1'+j)   # Last 2^n code-words with leading ONES
        
    return L    
    
print(grayCode(6))








