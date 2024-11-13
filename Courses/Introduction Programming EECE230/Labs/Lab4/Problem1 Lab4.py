# -*- coding: utf-8 -*-
"""
Created on Fri Feb 14 23:11:05 2020

@author: RAYAN
"""

#Part A (1)
n=int(input("Enter the number of integers:"))
x=int(input("Enter integer:"))
i=0
isSorted=True
for i in range(n-1):
    y=int(input("Enter integer:"))
    if x<y:
        x=y
    else:
        isSorted=False
if isSorted==True:
    print("YES: input is sorted")
else:
    print("NO: input is not sorted")
#    
#Part A(2)
n=int(input("Enter the number of integers:"))
L=[0]*n
L[0]=int(input("Enter integer:"))
i=0
isSorted=True
for i in range(n-1):
    L[i]=int(input("Enter integer:"))
    if L[i]>=L[i+1]:
        isSorted=False 
    else:
        L[0]=L[i]
if isSorted==True:
    print("YES: input is sorted")
else:
    print("NO: input is not sorted")

#Part B
st=input("Enter integers seperated by spaces:")
L=st.split()
for i in range(len(L)):
    L[i]=int(L[i])
print("List is:",L)
for i in range(len(L)-1):
    if L[i]>L[i+1]:
        print("NO: input is not sorted")
        isSorted=False 
        break
if isSorted==True:
    print("YES: input is sorted")
    
        
    
        
   

        
        
    
    
        
