# -*- coding: utf-8 -*-
"""
Created on Wed Mar  4 15:38:17 2020

@author: RAYAN
"""

# a
def readPoints(A,B,C,D):
    L=[]
    L.append(A)
    L.append(B)  
    L.append(C)
    L.append(D)
    return L

# b
def displayPoints(A,B,C,D):
    L=readPoints(A,B,C,D)
    for i in range(4):
        print(L[i],end=' ')
    return

# c
def createVectors(A,B,C,D):
    L=readPoints(A,B,C,D)
    T1=L[0]
    T2=L[1]
    T3=L[2]
    T4=L[3]
    AB=(T2[0]-T1[0],T2[1]-T1[1])
    CD=(T4[0]-T3[0],T4[1]-T3[1])
    L1=[AB,CD]
    return L1

# d
def checkSame(A,B,C,D):
    L1=createVectors(A,B,C,D)
    if L1[0]!=L1[1]:
        print("Vectors AB and CD are NOT the same")
    else:
        print("Vectors AB and CD are the same")
    return 

# e
def checkCollinear(A,B,C,D):
    L1=createVectors(A,B,C,D)
    T1=L1[0]
    T2=L1[1]
    if T2[0]*T1[1]-T1[0]*T2[1]==0:
        print("Vectors AB and CD are collinear")
    else:
        print("Vectors AB and CD are NOT collinear")
    return

# f
def dotProduct(A,B,C,D):
    L1=createVectors(A,B,C,D)
    T1=L1[0]
    T2=L1[1]
    dot=T1[0]*T2[0]+T1[1]*T2[1]
    return dot

# g 
def checkPerpendicular(A,B,C,D):
    L1=createVectors(A,B,C,D)
    T1=L1[0]
    T2=L1[1]
    if T1[0]*T2[0]+T1[1]*T2[1]==0:
        print("Vectors AB and CD are perpendicular")
    else:
        print("Vectors AB and CD are NOT perpendicular")
    return
        
    
    
    
xa=float(input("Input abcissa of first point A:"))
ya=float(input("Input ordinate of fisrt point A:"))
xb=float(input("Input abcissa of second point B:"))
yb=float(input("Input ordinate of second point B:"))
xc=float(input("Input abcissa of third point C:"))
yc=float(input("Input ordinate of third point C:"))
xd=float(input("Input abcissa of forth point D:"))
yd=float(input("Input ordinate of forth point D:"))
A=(xa,ya)
B=(xb,yb)
C=(xc,yc)
D=(xd,yd)
print('\n'+"The points A,B,C,D respectively are",end=' ')
displayPoints(A,B,C,D)
L1=createVectors(A,B,C,D)
print('\n'+'\n'+"Vectors AB and CD coordinates are:", L1[0], end=' ')
print(L1[1])

checkSame(A,B,C,D)
checkCollinear(A,B,C,D)
dot=dotProduct(A,B,C,D)
print("The scalar product of the two vectors AB and CD is:",dot)
checkPerpendicular(A,B,C,D)
        
