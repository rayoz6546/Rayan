# -*- coding: utf-8 -*-
"""
Created on Fri Apr 17 18:01:17 2020

@author: RAYAN
"""

def parenthesesAndBracesChecker(s):
    L=[]
    f=0
    n1=len(s)
    for i in range(n1):
        g=s[i]
        if g=="(" or g==")" or g=="[" or g=="]":
            L.append(g)
            if f==0:
                f+=1
            elif L[f-1]=="(" and L[f]==")":
                L.pop()
                L.pop()
                f-=1
            elif L[f-1]=="[" and L[f]=="]":
                L.pop()
                L.pop()
                f-=1
            else:
                f+=1
    n2=len(L)
    if n2==0:
        return True
    else:
        return False
    
print(parenthesesAndBracesChecker("a(aa)aa"))
print(parenthesesAndBracesChecker("a(aa)a]a"))
print(parenthesesAndBracesChecker("([aa(b)c[[aaaaa]]r(d)]dd)"))
print(parenthesesAndBracesChecker("a([b)]",))
