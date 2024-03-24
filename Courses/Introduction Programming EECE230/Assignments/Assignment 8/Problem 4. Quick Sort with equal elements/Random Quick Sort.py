#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov 28 22:47:09 2019

@author: ahmadbeydoun
"""

import numpy.random as rand
def randPartition(A,p,r):
    randIndex=rand.randint(p,r+1)
    (A[randIndex],A[r])=(A[r],A[randIndex])
    return partition(A,p,r)
def randQuickSort(A):
    def randQuickSortRec(A,p,r):
        if p<r:
            q=randPartition(A,p,r)
            randQuickSortRec(A,p,q-1)
            randQuickSortRec(A,q+1,r)
    randQuickSortRec(A,0,len(A)-1)
 
def partition(A,p,r):
    x=A[r]
    i=p-1
    for j in range(p,r):
        if A[j]<=x:
            i+=1
            (A[i],A[j])=(A[j],A[i])
    (A[i+1],A[r])=(A[r],A[i+1])
    return i+1

A=[2, 8, 7, 1, 3, 5, 6, 4]
print (A)
randQuickSort(A)
print (A)