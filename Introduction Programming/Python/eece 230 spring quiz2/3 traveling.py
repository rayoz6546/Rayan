#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Apr  6 17:11:18 2019

@author: hazemhajj
"""
def traveling (targetX, targetY):
    def travel(targetX, targetY, currX, currY, pathL):
        if (currX == targetX and currY == targetY):
            print(pathL)
        elif(currX <= targetX and currY <= targetY):
            travel(targetX, targetY, currX, currY + 1, pathL + " N")
            travel(targetX, targetY, currX + 1, currY, pathL + " E")
            travel(targetX, targetY, currX + 1, currY + 1, pathL + " NE")
    travel(targetX, targetY,0,0,"")
    
traveling(1,2)
