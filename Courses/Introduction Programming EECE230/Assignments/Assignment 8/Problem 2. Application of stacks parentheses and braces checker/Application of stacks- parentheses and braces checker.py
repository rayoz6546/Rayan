# -*- coding: utf-8 -*-
"""
Created on Wed Nov 20 15:39:56 2019

@author: amb73
"""

def parenthesesAndBracesChecker(s):
    L=[]
    a=0
    for i in range(len(s)):
        x=s[i]
        if x=="(" or x==")" or x=="[" or x=="]":
            L.append(x)
            if a==0:
                a+=1
            elif L[a-1]=="(" and L[a]==")":
                L.pop()
                L.pop()
                a-=1
            elif L[a-1]=="[" and L[a]=="]":
                L.pop()
                L.pop()
                a-=1
            else:
                a+=1
    if len(L)==0:
        return True
    else:
        return False
print(parenthesesAndBracesChecker("a(aa)aa"))
print(parenthesesAndBracesChecker("aa(b(cd))e[ab]"))
print(parenthesesAndBracesChecker("([aa(b)c[[aaaaa]]r(d)])"))
print(parenthesesAndBracesChecker("a([b)]"))
print(parenthesesAndBracesChecker("((aab)d"))
print(parenthesesAndBracesChecker("(("))
print(parenthesesAndBracesChecker("ef)]"))