# -*- coding: utf-8 -*-
"""
Created on Wed Feb 26 14:08:43 2020

@author: rbh13
"""

def sumL(M,N):
    u=len(M)
    L=[0]*u
    for k in range(u):
        L[k]+=M[k]+N[k]
    return L
    
def distance(P,Q):
    v=len(P)
    terms=0
    for w in range(v):
        terms+=(Q[w]-P[w])**2
    return (terms)**0.5

st1=input("Enter first Lists numbers seperated by space:")
L1=st1.split()
n1=len(L1)
for i in range(n1):
    L1[i]=float(L1[i])
st2=input("Enter second Lists numbers seperated by space:")
L2=st2.split()
n2=len(L2)
for j in range(n2):
    L2[j]=float(L2[j])
    
if n1!=n2:
    print("Error,Lists of different sizes")
else:
    print("Sum of the two Lists:",sumL(L1,L2))
    print("Distance between the two Lists:",round(distance(L1,L2),2))
    
    



    
    
