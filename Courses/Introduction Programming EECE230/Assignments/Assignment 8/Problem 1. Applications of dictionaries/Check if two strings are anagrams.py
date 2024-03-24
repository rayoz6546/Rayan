# -*- coding: utf-8 -*-
"""
Created on Wed Nov 20 14:18:01 2019

@author: amb73
"""

def anagrams(s1,s2):
    n=len(s1)
    m=len(s2)
    if m!=n:
        return False
    else:
        D1={}
        D2={}
        for w in s1:
            if w not in D1:
                D1[w]=1
            else:
                D1[w]+=1
        for x in s2:
            if x not in D2:
                D2[x]=1
            else:
                D2[x]+=1
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