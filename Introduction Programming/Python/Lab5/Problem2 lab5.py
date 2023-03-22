# -*- coding: utf-8 -*-
"""
Created on Wed Feb 26 15:04:31 2020

@author: rbh13
"""

#Part (A)

def indexOfmin(L,start,end):
    index=start
    for i in range(start,end):
        if L[i]<L[index]:
            index=i
    return index

#Part (B)
        
def selectionSort(L):
    n=len(L) 
    for j in range(n):
        minIndex=indexOfmin(L,j,n)
        L[j],L[minIndex]=L[minIndex],L[j] 
    return L

#Part (C)

st=input("Enter integers seperated by space for sorting:")
L=st.split()
n=len(L)
for w in range(n):
    L[w]=int(L[w])
print(L)
print("Sorted List:",selectionSort(L))        
        
            
    
        
            