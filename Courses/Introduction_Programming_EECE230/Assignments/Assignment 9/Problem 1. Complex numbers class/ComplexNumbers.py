#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Dec 10 18:50:32 2019

@author: ahmadbeydoun
"""

from math import sqrt
class ComplexNumber(object):
    def __init__(self,real=0,im=0):
        assert (type(real)==int or type(real)==float) and (type(im)==int or type(im)==float),"Bad input!"
        self.real=real
        self.im=im
    def __str__(self):
        if self.im<0:
            return '('+str(self.real)+str(self.im)+'j'+')'
        return '('+str(self.real)+'+'+str(self.im)+'j'+')'
    def conj(self):
        return ComplexNumber(self.real,-self.im)
    def norm(self):
        return sqrt((self.real)**2+(self.im)**2)
    def __add__(self,other):
        return ComplexNumber(self.real+other.real,self.im+other.im)
    def __sub__(self,other):
        return ComplexNumber(self.real-other.real,self.im-other.im)
    def __mul__(self,other):
        a=self.real*other.real-self.im*other.im
        b=self.real*other.im+self.im*other.real
        return ComplexNumber(a,b)
    def __truediv__(self,other):
        a=self*other.conj()
        b=other*other.conj()
        return ComplexNumber(a.real/b.real,a.im/b.real)
    def __neg__(self):
        return ComplexNumber(-self.real,-self.im)
r=ComplexNumber(12)
z=ComplexNumber(1.5,2)
t=ComplexNumber(2.2,3)
print(r)
print(z+t)
print(-z)
print(z*t)
print(z/t)
print(z.conj())
print(z.norm())