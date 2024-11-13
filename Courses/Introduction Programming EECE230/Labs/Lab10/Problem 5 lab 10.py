# -*- coding: utf-8 -*-
"""
Created on Sat Apr 11 11:20:01 2020

@author: RAYAN
"""

# Part a 
def recBinarySearch(L,x,low,high):
    if low>high:
        return True
    middle=(low+high)//2
    if L[middle]==x:
        return False
    elif L[middle]>x:
        return recBinarySearch(L,x,low,middle-1)
    else:
        return recBinarySearch(L,x,middle+1,high)
def elementDistinctnessFast(L):
    A=L[:]
    A.sort()
    n=len(A)
    i=0
    for x in A:
        i+=1
        if i<n:
            if recBinarySearch(A,x,i,n)==False:
                return False
    return True
print("Part A")
print(elementDistinctnessFast([1,2,5,10,3,31,32,33,37,50,250]))
print(elementDistinctnessFast([1,2]))
print(elementDistinctnessFast([1]))
print(elementDistinctnessFast([]))
print(elementDistinctnessFast([1,2,5,2,10]))
print(elementDistinctnessFast([10,1,2,10]))
print(elementDistinctnessFast([1,2,5,10,3,31,32,33,37,5,250]))
print(elementDistinctnessFast([2,2]))

print('\nPartB')

# Part b 
def twoSumFast(L,t):
    n=len(L)
    A=L[:]
    A.sort()
    i=0
    j=n-1
    while i<=j: 
        if A[i]+A[j]==t: 
            return True
        elif A[i]+A[j]>t:  
            j-=1
        else: 
            i+=1
    return False 
L =[8,1,3,11,5,7,-6 ,9]
print(twoSumFast(L,14))
print(twoSumFast(L,12))
print(twoSumFast(L,15))
print(twoSumFast(L,3))
print(twoSumFast(L,0))
print(twoSumFast(L,7))
print(twoSumFast(L,21))

print('\nPart C')

# Part c 
def twoSumFast(L,t):
    n=len(L)
    i=0
    j=n-1
    while i<=j: 
        if L[i]+L[j]==t: 
            return True
        elif L[i]+L[j]>t:  
            j-=1
        else: 
            i+=1
    return False 
def fourSumFast(L,t):
    n = len(L)
    A = []
    for i in range(n):  
        for j in range(i,n):
            A.append(L[i]+L[j])
    A.sort()
    return twoSumFast(A,t)
L = [13,5,7,9,112,16,27,31]
print(fourSumFast(L,24))
print(fourSumFast(L,40))
print(fourSumFast(L,62))
print(fourSumFast(L,98))
print(fourSumFast(L,0))
print(fourSumFast(L,10))
print(fourSumFast(L,29))
print(fourSumFast(L,89))
