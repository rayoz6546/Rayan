# -*- coding: utf-8 -*-
"""
Created on Sat Apr 25 16:50:19 2020

@author: RAYAN
"""

class Point:
    def __init__(self,x=0,y=0):
        assert (type(x)==int or type(x)==float) and (type(y)==int or type(y)==float),'bad input'
        self.x=x
        self.y=y
    def __str__(self):
        return "("+str(self.x)+","+str(self.y)+")"
    
class Rectangle:
    def __init__(self,p,q):
        assert type(p)==Point and type(q)==Point and p.x<=q.x and p.y<=q.y,'bad input'
        self.p=p
        self.q=q
    def __str__(self):
        return '(p='+str(self.p)+',q='+str(self.q)+')'
    def width(self):
        return (self.q.x) - (self.p.x)
    def height(self): 
        return (self.q.y) - (self.p.y)
    def perimeter(self): 
        return 2*self.width() + 2*self.height()   # perimeter = 2*(width + height)
    def contains(self,other): # if all is True (only), return True
        return other.x<=self.q.x and other.x>=self.p.x and other.y<=self.q.y and other.y>=self.p.y
    def area(self):
        return self.width()*self.height()   # area = width*height
    
p=Point(1,2)
q=Point(3.2,4)
R=Rectangle(p,q)
print(R)
print(R.width())
print(R.height())
print(R.area())
print(R.perimeter())
print(R.contains(Point(1.5,3)))
print(R.contains(Point(10.5,3)))