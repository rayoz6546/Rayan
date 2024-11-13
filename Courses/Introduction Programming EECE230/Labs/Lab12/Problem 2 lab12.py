# -*- coding: utf-8 -*-
"""
Created on Thu Apr 23 16:21:20 2020

@author: RAYAN
"""
from math import sqrt
class ComplexNumber:    # we could also precise ComplexNumber(object):
    def __init__(self,re=0,im=0):
        assert (type(re)==int or type(re)==float) and (type(im)==int or type(im)==float),"Bad input"
        self.re=re
        self.im=im
    def __str__(self):
        if self.im<0:
            return '('+str(self.re)+str(self.im)+'j'+')'
        return '('+str(self.re)+'+'+str(self.im)+'j'+')'
    def conj(self):
        return ComplexNumber(self.re, -self.im)
    def norm(self):
        return sqrt((self.re)**2 + (self.im)**2)
    def __add__(self,other):
        return ComplexNumber((self.re + other.re),(self.im + other.im))
    def __sub__(self,other):
        return ComplexNumber((self.re - other.re),(self.im - other.im))
    def __mul__(self,other):
        x=(self.re)*(other.re) - (self.re)*(other.im)
        y=(self.re)*(other.im) + (self.im)*(other.re)
        return ComplexNumber(x,y)
    def __truediv__(self,other):
        x=(self)*other.conj()
        y=(other)*other.conj()
        return ComplexNumber((x.re/y.re),(x.im/y.re))
    def __neg__(self):
        return ComplexNumber(-self.re,-self.im)
w = ComplexNumber() 
r = ComplexNumber(12) 
z = ComplexNumber(1.5,2) 
t = ComplexNumber(2.2,3)  
print(w) 
print(r) 
print(z+t) 
print(-z) 
print(z*t) 
print(z/t)  
print(z.conj())  
print(z.norm())  
        
        
        

        
    
        