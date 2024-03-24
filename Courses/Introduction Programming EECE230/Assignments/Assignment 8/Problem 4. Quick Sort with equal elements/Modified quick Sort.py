#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov 28 22:59:00 2019

@author: ahmadbeydoun
"""

import numpy.random as rand
def randPartition2(A,p,r):
    randIndex=rand.randint(p,r+1)
    (A[randIndex],A[r])=(A[r],A[randIndex])
    return partition2(A,p,r)
def randQuickSort2(A):
    def randQuickSortRec(A,p,r):
        if p<r:
            (i1,i2)=randPartition2(A,p,r)
            randQuickSortRec(A,p,i1-1)
            randQuickSortRec(A,i2+1,r)
    randQuickSortRec(A,0,len(A)-1)
def partition2(A,p,r):
    x = A[r]
    i1 = p-1
    i2 =p-1
    for j in range(p,r):
        if A[j]==x:
            i2+=1
            (A[i2],A[j])=(A[j],A[i2])
        elif A[j]<x:
            i1+=1
            i2+=1
            (A[i2],A[i1])=(A[i1],A[i2])
            (A[i1],A[j])=(A[j],A[i1])
    i2+=1
    (A[r],A[i2])=(A[i2],A[r])
    i1+=1
    return (i1,i2)
A1=[]
A2=[1]
A3=[0,1,2,0,1,2,0,1,2,1]
A4=[5,6,5,5,1,3,5,2,1,7,9,5,15,100,5, 2,17,5,56]
for A in (A1,A2,A3,A4):
    randQuickSort2(A)
    print("A sorted:",A)