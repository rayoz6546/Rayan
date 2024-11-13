#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov 28 22:32:00 2019

@author: ahmadbeydoun
"""

def partition(A,p,r):
    x=A[r]
    i=p-1
    for j in range(p,r):
        if A[j]<=x:
            i+=1
            (A[i],A[j])=(A[j],A[i])
    (A[i+1],A[r])=(A[r],A[i+1])
    return i+1
def quickSort(A):
    def quickSortRec(A,p,r):
        if p<r:
            q=partition(A,p,r)
            quickSortRec(A,p,q-1)
            quickSortRec(A,q+1,r)
    quickSortRec(A,0,len(A)-1)
A=[2, 8, 7, 1, 3, 5, 6, 4]
print (A)
quickSort(A)
print (A)