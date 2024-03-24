# -*- coding: utf-8 -*-
"""
Created on Sun Apr 16 08:38:07 2023

@author: RAYAN
"""

import numpy as np
import random
from scipy.spatial.distance import cdist

def kmeans_single(X,K,iters):
    
    
    init = np.random.choice(len(X),K,replace=False)
    
    means= X[init,:]
        
    distances = cdist(X,means,'euclidean')
    
    # taking index of minimum in distances (to get data membership)
    ids = np.argmin(distances, axis =1)
    

    # print(points.shape)
    # print(means.shape)
    # print(distances.shape)    
    
    prev_ids = None  # previous IDs
    
    for i in range(iters):
        
        distances = cdist(X,means,'euclidean')
        ids = np.argmin(distances, axis =1)  #new IDs
        
        if np.array_equal(ids,prev_ids):
            break
        
        for k in range(K):
            
            #Taking average across samples assigned to cluster k to recompute the means
            means[k,:]=np.mean(X[ids==k,:],axis=0)
        
        ssd = np.sum((X-means[ids,:])**2)
        
        prev_ids = ids
        
    
    return ids, means, ssd
















