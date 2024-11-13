#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Nov 17 20:26:27 2019

@author: ahmadbeydoun
"""

def  merge(L,R):
    C=[]
    m=len(L)
    n=len(R)
    i=0
    j=0
    while i!=m and j !=n: 
        if L[i]<R[j]: 
            C.append(L[i])
            i+=1
        else: 
            C.append(R[j])
            j+=1
    while i!=m:
        C.append(L[i])
        i+=1       
    while j!=n: 
        C.append(R[j])
        j+=1      
    return C
def mergeSort(A,low,high):
    if low<high:
        mid=(low+high)//2
        mergeSort(A,low,mid)
        mergeSort(A,mid+1,high)
        A[low:high+1]=merge(A[low:mid+1],A[mid+1:high+1])
    
