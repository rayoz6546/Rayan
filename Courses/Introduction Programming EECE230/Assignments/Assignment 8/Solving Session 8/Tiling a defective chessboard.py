#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Nov  6 14:47:22 2019

@author: ahmadbeydoun
"""

def tileDefectiveChessBoard(n,i,j):
    def tileDefectiveChessBoardRec(A,tileIndex,startX,endX,startY,endY,i,j):
        """Tile defective chess board [startX ... endX]*[startY ... endY] with missing cell (i,j)
        Function assumes that endX-startX +1 = endY -startY +1 is a power of 2
        It  also assumes that  startX <=i<=endX and   startY <=j<=endY  """
        if endX==startX and endY==startY:
            return tileIndex
        midX=(startX+endX)//2
        midY=(startY+endY)//2
        if i<=midX and j<=midY:
            A[midX][midY+1] = tileIndex
            A[midX+1][midY] = tileIndex
            A[midX+1][midY+1] = tileIndex
            tileIndex+=1
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex, startX, midX,startY,midY,i,j)
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex, startX, midX,midY+1,endY,midX,midY+1)
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex, midX+1, endX,startY,midY,midX+1,midY)
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex, midX+1, endX,midY+1,endY,midX+1,midY+1)
            return tileIndex 
        elif i<=midX and j>midY:
            A[midX][midY] = tileIndex
            A[midX+1][midY] = tileIndex
            A[midX+1][midY+1] = tileIndex
            tileIndex+=1
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex,startX, midX,startY,midY,midX,midY)
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex,startX, midX,midY+1,endY,i,j)
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex,midX+1, endX,startY,midY,midX+1,midY)
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex,midX+1, endX,midY+1,endY,midX+1,midY+1)
            return tileIndex 
        elif i>midX and j<=midY:
            A[midX][midY] = tileIndex
            A[midX][midY+1] = tileIndex
            A[midX+1][midY+1] = tileIndex
            tileIndex+=1
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex,startX, midX,startY,midY,midX,midY)
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex,startX, midX,midY+1,endY,midX,midY+1)
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex,midX+1, endX,startY,midY,i,j)
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex,midX+1, endX,midY+1,endY,midX+1,midY+1)
            return tileIndex 
        else: 
            A[midX][midY] = tileIndex
            A[midX][midY+1] = tileIndex
            A[midX+1][midY] = tileIndex
            tileIndex+=1
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex,startX, midX,startY,midY,midX,midY);
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex,startX, midX,midY+1,endY,midX,midY+1)
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex,midX+1, endX,startY,midY,midX+1,midY)
            tileIndex=tileDefectiveChessBoardRec(A,tileIndex,midX+1, endX,midY+1,endY,i,j)
            return tileIndex
    A = [[1 for v in range(n)] for u in range(n)]
    A[i][j]=0
    tileDefectiveChessBoardRec(A,1,0,n-1,0,n-1,i,j)
    return A
import numpy
for (n,i,j) in ((1,0,0),(2,0,0),(2,0,1),(2,1,1),(4,0,0),(8,0,0),(8,2,4)):
    print("\ntileDefectiveChessBoard("+str(n)+","+str(i)+","+str(j)+")")
    A = tileDefectiveChessBoard(n,i,j)
    print(numpy.matrix(A))