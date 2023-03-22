# -*- coding: utf-8 -*-
"""
Created on Thu Feb 20 21:57:29 2020

@author: RAYAN
"""

#Part A
st=input("Enter integers seperated by spaces:")
L=st.split()
for i in range(len(L)):
    L[i]=int(L[i])
n=len(L)
Sum=0
maxSum=0
for j in range(0,n):
    for k in range(j,n):
        Sum=0
        for p in range(j,k+1):
            Sum+=L[p]
            if Sum>maxSum:
                maxSum=Sum
                a=j
                b=k
allNegative=False
for h in range(n):
    if L[h]>0:
        allNegative=False
    else:
        allNegative=True
        
if allNegative==False:
    print("Max-sum=",int(maxSum))
    print("A max-sum subsequence:")
    for s in range(a,b+1):
        print(L[s],end=' ')
else:
    print("Max-sum=",int(maxSum))

#Part B
st=input("Enter integers seperated by spaces:")
L=st.split()
for i in range(len(L)):
    L[i]=int(L[i])
n=len(L)
maxSum=0
for j in range(0,n):
    for k in range(j,n):
        Sum=0
        Sum=sum(L[j:k+1])
        if Sum>=maxSum:
            maxSum=Sum
            a=j
            b=k
allNegative=False
h=0
for h in range(n):
    if L[h]>0:
        allNegative=False
    else:
        allNegative=True
        
if allNegative==False:
    print("Max-sum=",int(maxSum))
    print("A max-sum subsequence:")
    for s in range(a,b+1):
        print(L[s],end=' ')
else:
    print("Max-sum=",int(maxSum))

#Part C
st=input("Enter integers seperated by spaces:")
L=st.split()
for i in range(len(L)):
    L[i]=int(L[i])
n=len(L)
Sum=0
maxSum=0
for j in range(0,n):
    Sum=0
    for k in range(j,n):
        Sum+=L[k]
        if Sum>maxSum:
            maxSum=Sum
            a=j
            b=k
allNegative=False
for h in range(n):
    if L[h]>0:
        allNegative=False
    else:
        allNegative=True
        
if allNegative==False:
    print("Max-sum=",int(maxSum))
    print("A max-sum subsequence:")
    for s in range(a,b+1):
        print(L[s],end=' ')
else:
    print("Max-sum=",int(maxSum))
            
        


