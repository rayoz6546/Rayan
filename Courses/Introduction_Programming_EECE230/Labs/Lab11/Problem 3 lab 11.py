# -*- coding: utf-8 -*-
"""
Created on Fri Apr 17 14:34:48 2020

@author: RAYAN
"""

# Part a

def anagrams(s1,s2):
    n1=len(s1)
    n2=len(s2)
    if n1!=n2:
        return False
    else:
        D1={}
        D2={}
        for i1 in s1:
            if i1 not in D1:   
                D1[i1]=1
            else:
                D1[i1]+=1
        for i2 in s2:
            if i2 not in D2:
                D2[i2]=1
            else:
                D2[i2]+=1
    # So now we have 2 dictionnaries. Each one will tell us how many times a character
    # in each string is repeated. So we will have something like {"E":3, "3":1.....}
    # and then we will compare D1 and D2, which means we will see if there is the same 
    # number of each character in each string or not. If so, it means directly that the
    # second one can be made by rearranging the first one.
    if D1==D2:
        return True
    else:
        return False
    
print(anagrams("","")) 
print(anagrams("i","i"))  
print(anagrams("is","si"))  
print(anagrams("fun","nfu"))  
print(anagrams("aaabaab","abba"))  
print(anagrams("aaabaab","baabaaa"))  
print(anagrams("EECE230","EECE230"))  
print(anagrams("EECE230","3EE02CE"))  
print(anagrams("EECE230","3EEE02E")) 

# Part b (i)


def longestZeroSumSubList(L):
     n=len(L)
     A=[]      # List in which I will store all the zero-sum sublists
     for i in range(n):
        
         l=[L[i]]      # l is a zero-sum sublist, for each i fixed.
         for j in range(i+1,n):  # so here for a fixed i, we add L[i] to the other 
             # elements. So if we take the first example that we have, we add 1 to 10
             # and then 1 + 10 -1, and then 1+10-1-1 and etc... until we get sum=0
             # When we do, we add the list l=[L[i],...,L[j]] to the list A
             L[i]+=L[j]
             if L[i]==0:
                l.append(L[j])    # here the PROBLEM is that it only appends the
                                 # last element L[j] to the list not all the elements 
                                 # whose sum is 0. (means not [L[i],....,L[j]])
         A.append(l)
     
     for k in range(len(A)):  # the A we got is WRONG, but let's suppose it's correct,
                        # in this loop I am simply checking to find the list whose 
                        # length is the bigger. That would be the answer (A[0]).
         if len(A[0])<=len(A[k]):
             A[0]=A[k]    
     return A[0]

# I couldn't find the solution to my problem but I hope that my comments and way of 
     # thinking will be taken into consideration.
print(longestZeroSumSubList([1, 10, -1, -1, 2, 3, -5, 26]))  
print(longestZeroSumSubList([1 ,10, -1, -1, 4, 3, -5, 26]))  
print(longestZeroSumSubList([1, 10, 1, -1, 4, 3, -5, 26]))  
print(longestZeroSumSubList([1, 10, 1, 0, 4, 3, -5, 26]))  
print(longestZeroSumSubList([1, 10, 1, 1, 4, 3, -5, 26])) 
print(longestZeroSumSubList([-1, -1, 2, 3, -5, 26]))  
print(longestZeroSumSubList([2, 2, -1, 0, -1, 2]))  
print(longestZeroSumSubList([1, 0, -2, 1, 0, 1, -1, 0, -1, 2, -2, -2]))

# Part b (ii)

def longestZeroSumSubList(L):
    D={}
    L0=L[0]
    D[L0]=0
    n=-1
    m=0
    for i in range(1,len(L)):
        Li=L[i]+L0
        L0=Li
        if Li not in D:
            D[Li]=i
        else:
            if m-n<=i-D[Li]:
                n=D[Li]
                m=i
    if n!=-1:
        return L[n+1:m+1]
    else:
        return []

print(longestZeroSumSubList([1, 10, -1, -1, 2, 3, -5, 26]))  
print(longestZeroSumSubList([1 ,10, -1, -1, 4, 3, -5, 26]))  
print(longestZeroSumSubList([1, 10, 1, -1, 4, 3, -5, 26]))  
print(longestZeroSumSubList([1, 10, 1, 0, 4, 3, -5, 26]))  
print(longestZeroSumSubList([1, 10, 1, 1, 4, 3, -5, 26])) 
print(longestZeroSumSubList([-1, -1, 2, 3, -5, 26]))  
print(longestZeroSumSubList([2, 2, -1, 0, -1, 2]))  
print(longestZeroSumSubList([1, 0, -2, 1, 0, 1, -1, 0, -1, 2, -2, -2]))
            
    
            

