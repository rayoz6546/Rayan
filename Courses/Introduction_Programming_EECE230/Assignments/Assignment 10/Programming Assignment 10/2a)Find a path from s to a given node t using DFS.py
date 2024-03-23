#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Dec 11 15:11:54 2019

@author: ahmadbeydoun
"""

from graph import buildGraphFromFile, DFSVisit
import matplotlib.pyplot as plt
def extractPath(t,s,parent):
    path=[]
    u=t
    while u!=s:
        path.append(u)
        u=parent[u]
    path.append(u)
    return path[::-1]
def findAPath(G,s,t):
    L=[]
    parent={s:None}
    DFSVisit(G,s,parent)
    if t in parent:
        return extractPath(t,s,parent)
    return L
G = buildGraphFromFile("UndirectedGraph2.txt", undirected =True)
plt.figure(2)
plt.clf()
G.draw()
print(findAPath(G,"A","F"))
print(findAPath(G,"A","I"))