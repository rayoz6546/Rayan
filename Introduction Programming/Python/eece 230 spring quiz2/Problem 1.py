# -*- coding: utf-8 -*-
"""
Created on Sun Apr 26 21:15:34 2020

@author: RAYAN
"""
#from math import sqrt
#class threeDPoint:
#    def __init__(self,x=0,y=0,z=0):
#        assert type(x)==int or type(y)==int or type(z)==int or type(x)==float or type(y)==float or type(z)==float,"Incorrect type!"
#        self.x=x
#        self.y=y
#        self.z=z
#    def __str__(self):
#        return "("+ str(self.x) + "," + str(self.y) + "," + str(self.z) + ")"
#    def __add__(self,other):
#        return threeDPoint(self.x + other.x, self.y +other.y, self.z + other.z)
#    def __mul__(self,c):
#        assert type(c)==int or type(c)==float,"Incorrect type!"
#        return threeDPoint(c*self.x, c*self.y, c*self.z)
#def distance(p,q):
##    assert len(p)==3 or len(q)==3,"Not three dimensional!"
#    summation=(p.x - q.x)**2 + (p.y - q.y)**2 + (p.z - q.z)**2
#    return sqrt(summation)
#
#A = threeDPoint() 
#B = threeDPoint(1,3.1,2) 
#C = threeDPoint(2.1,12,5.4) 
#print(A) 
#print(B) 
#print(C) 
#print(B+C) 
#print(B*1.1) 
#print(B*3) 
#print(distance(B,C))
#
#def closestPair(L):
#    n=len(L)
#    if n<=1:
#        return (None,None)
#    else:
#        D={}
#        for i in range(n):
#            for j in range(i):
#                distance=distance(L[i],L[j])
#                if distance not in D:
#                    D[1]
            
                
#def genStrings(n):
#    if n==0:
#        return [""]
#    else:
#        L=genStrings(n-1)
#        print(L)
#        L1=["a","b","c"]
#        L2=[]
#        for x in L1:
#            for i in range(len(L)):
#                s=L[i]
#                if x!=s and len(s)<2:
#                    L2.append(x+L[i])
#                elif x!=s[0] and len(s)>=2:
#                    L2.append(x+L[i])
#        return L2
#
#print(genStrings(3))
    
#def binarySearch(L,x):
#    n=len(L)
#    i=0    #start 
#    j=n-1   #end
#    result=-1
#    while i<=j:
#        middle=(i+j)//2
#        if L[middle]==x:
#            result=middle
#            j=middle-1
#        if L[middle]<x:
#            i=middle+1
#        else:
#            j=middle-1
#    return result
#
#def find(A):
#    A.sort()
#    n=len(A)
#    L=[]
#    for w in range(n):
#        result2=binarySearch(A,-A[w])
#        if result2!=-1:
#            L.append(-A[w])
#            
#            
#        
#    return L
#
#print(find([3,-10,-3,5,6,2,8,10,-2])) 
#print(find([3,-10,-3,5,6,8,2,10,-2,-5,-6,-8])) 
#print(find([3,-10,5,6,8,2]))
        
        
#def insertionSortModified(L,low,high):
#    for j in range(low,high+1):
#        key=L[j]
#        i=j-1
#        while i>=0 and L[i]>key:
#            L[i+1]=L[i]
#            i=i-1
#        L[i+1]=key
#    return L
#A = [5,6,1,3,2,1,7,9,5,100,15, 2,17,56] 
#print(A) 
#insertionSortModified(A, 6, 11) 
#print(A)












    
    
        
     
    