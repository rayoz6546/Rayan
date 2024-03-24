#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Dec 11 14:50:45 2019

@author: ahmadbeydoun
"""

from graph import DiGraph, buildGraphFromFile
import matplotlib.pyplot as plt
def transpose(g):
    gt=DiGraph()
    for node in g.adj:
        gt.addNode(node)
    for key in g.adj:
        for dest in g.adj[key]:
            gt.connect(dest,key)
    return gt
G = buildGraphFromFile("DiGraph1.txt", undirected = False)
# DiGraph1.txt is available in compressed folder associated with this assignment
plt.figure(1)
plt.clf()
plt.subplot(1,2,1)
G.draw()
GTranspose = transpose(G)
plt.subplot(1,2,2)
GTranspose.draw()
plt.show()