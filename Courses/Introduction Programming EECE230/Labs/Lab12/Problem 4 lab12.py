# -*- coding: utf-8 -*-
"""
Created on Sat Apr 25 17:06:34 2020

@author: RAYAN
"""

import copy
from math import sqrt

class Vector(list):
    def __init__(self,other):
        assert len(other)!=0, 'Invalid input!'
        for a in other:
            assert type(a)==int or type(a)==float,'Invalid input!'
        list.__init__(self,other)
    def __str__(self):
        return '<'+list.__str__(self)[1:-1]+'>'  
    def __add__(self,other):
        assert len(self)==len(other),"Invalid input!"
        summationOfVectors=[]
        for i in range(len(self)): 
            summationOfVectors.append(self[i]+other[i])
        return Vector(summationOfVectors)
    def __neg__(self):
        negation=[]
        for w in self:
            negation.append(-w)
        return Vector(negation)
    def __sub__(self,other):
        assert len(self)==len(other),'Invalid input!'
        substractionOfVectors=[]
        for k in range(len(self)): 
            substractionOfVectors.append(self[k]-other[k])
        return Vector(substractionOfVectors) 
    def __mul__(self,other):
        assert len(self)==len(other),"Invalid input!"
        multiplicationOfVectors=0
        for k in range(len(self)):
             multiplicationOfVectors+=self[k]*other[k]
        return  multiplicationOfVectors
    def norm(self):
        norm=0
        for x in self:
            norm+=x**2
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