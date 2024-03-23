#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Dec 11 14:21:45 2019

@author: ahmadbeydoun
"""

from graph import UndirectedGraph
import matplotlib.pyplot as plt
def buildCircleGraph(n):
    g=UndirectedGraph()
    for i in range (1,n+1):
        g.addNode(i)
    for i in range(1,n):
        g.connect(i,i+1)
    g.connect(n,1)
    return g
G= buildCircleGraph(5)
print(G)
plt.figure(1)
plt.clf()
G.draw()