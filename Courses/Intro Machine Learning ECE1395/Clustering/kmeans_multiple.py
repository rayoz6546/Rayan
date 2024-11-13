# -*- coding: utf-8 -*-
"""
Created on Sun Apr 16 09:47:03 2023

@author: RAYAN
"""

from kmeans_single import kmeans_single

def kmeans_multiple(X,K,iters,R):
    
    ssd_= [0]*R
    for r in range(R):
        ids, means, ssd_[r] = kmeans_single(X,K,iters)


    ssd = min(ssd_)
        

    return ids,means,ssd