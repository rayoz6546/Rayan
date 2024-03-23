#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Nov 17 20:27:22 2019

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
def ternaryMergeSort(A,low,high):
    if low<high: #base case if low=high or high<low nothing will happen 
        #because empty lists and lists of size 1 are alredy sorted
        third = low+(high-low)//3
        twoThird= low+2*(high-low)//3 
        ternaryMergeSort(A,low,third) 
        ternaryMergeSort(A,third+1,twoThird)
        ternaryMergeSort(A,twoThird+1,high) 
        A2=merge(A[low:third+1],A[third+1:twoThird+1]) # merge the lower third and mid third parts of the list
        A[low:high+1]=merge(A2,A[twoThird+1:high+1]) # merge the one before with upper third 
        #and store result in initial list therefore we change to the new sorted parts of the list/the whole list
A = []
print("A:",A)
ternaryMergeSort(A,0,len(A)-1)
print("Sorted:",A)
A= [1]
print("A:",A)
ternaryMergeSort(A,0,len(A)-1)
print("Sorted:",A)
A = [1,2]
print("A:",A)
ternaryMergeSort(A,0,len(A)-1)
print("Sorted:",A)
A = [2,1]
print("A:",A)
ternaryMergeSort(A,0,len(A)-1)
print("Sorted:",A)
A = [5,6,1,3,2,1,7,9,5,15,100,2,17,56]
print("A:",A)
ternaryMergeSort(A,0,len(A)-1)
print("Sorted:",A)
A = [20-i for i in range(20)]
print("A:",A)
ternaryMergeSort(A,0,len(A)-1)
print("Sorted:",A)
