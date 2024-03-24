#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Dec  4 17:23:33 2019

@author: ahmadbeydoun
"""

import copy
from math import sqrt
class Vector(list):
    def __init__(self,other):
        assert len(other)!=0, "Invalid input!"
        for e in other:
            assert type(e)==int or type(e)==float,"Invalid input"
        list.__init__(self,other)
    def __str__(self):
        return '<'+list.__str__(self)[1:-1]+'>'  
    def __add__(self,other):
        assert len(self)==len(other),"Invalid input"
        summation=[]
        for i in range(len(self)): 
            summation.append(self[i]+other[i])
        return Vector(summation)
    def __neg__(self):
        negative=[]
        for w in self:
            negative.append(-w)
        return Vector(negative)
    def __sub__(self,other):
        assert len(self)==len(other),"Invalid input"
        substraction=[]
        for i in range(len(self)): 
            substraction.append(self[i]-other[i])
        return Vector(substraction) #or we can add self and -other
    def __mul__(self,other):
        assert len(self)==len(other),"Invalid input!"
        multiplication=0
        for i in range(len(self)):
             multiplication+=self[i]*other[i]
        return  multiplication
    def norm(self):
        norm=0
        for e in self:
            norm+=e**2
        return sqrt(norm)
def zeros(n):
    return Vector([0]*n)
def ones(n):
    return Vector([1]*n)
    
v = Vector([1,2.3])
w = zeros(5)
u = ones(2)
print(v)
print(w)
print(v[1])
print(v+v+v)
print(v*u)
print(v.norm())
w[2]=3.5
v = copy.deepcopy(w)
print(v)
print(-v)
w[0]=15.5
w[4]=-12
print(w-v)
print(-w+v)