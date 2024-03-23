# -*- coding: utf-8 -*-
"""
Created on Wed Nov 20 14:29:30 2019

@author: amb73
"""

def longestZeroSumSubList(L):
    D={}
    s0=L[0]
    D[s0]=0
    a=-1
    b=0
    for i in range(1,len(L)):
        si=L[i]+s0
        s0=si
        if si not in D:
            D[si]=i
        else:
            if b-a<=i-D[si]:
                a=D[si]
                b=i
    if a!=-1:
        return L[a+1:b+1]
    else:
        return []
print(longestZeroSumSubList([1, 10, -1, -1, 2, 3, -5, 26]))
print(longestZeroSumSubList([1 ,10, -1, -1, 4, 3, -5, 26]))
print(longestZeroSumSubList([1, 10, 1, -1, 4, 3, -5, 26]))
print(longestZeroSumSubList([1, 10, 1, 0, 4, 3, -5, 26]))
print(longestZeroSumSubList([1, 10, 1, 1, 4, 3, -5, 26]))
print(longestZeroSumSubList([-1, -1, 2, 3, -5, 26]))
print(longestZeroSumSubList([2, 2, -1, 0, -1, 2]))
print(longestZeroSumSubList([1, 0, -2, 1, 0, 1, -1, 0, -1, 2, -2, -2]))