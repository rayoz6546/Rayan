# -*- coding: utf-8 -*-
"""
Created on Sun Apr 16 09:52:26 2023

@author: RAYAN
"""

import cv2
import numpy as np
from kmeans_multiple import kmeans_multiple
import matplotlib.pyplot as plt


# I found this piece of code (im2double() function) online to implement equivalent of im2double in python
def im2double(im):
    min_val = np.min(im.ravel())
    max_val = np.max(im.ravel())
    out = (im.astype('float') - min_val) / (max_val - min_val)
    return out



def Segment_kmeans(im_in, K, iters, R):

    img = im2double(im_in)
    
    h = img.shape[0]
    w = img.shape[1]
    
    X = np.reshape(img,(h*w,3))
    

    img = np.resize(img,([100,100]))
    
    
    ids,means,ssd=kmeans_multiple(X,K,iters,R)
    
    print("SSD:",ssd)
    
    out = np.reshape(ids,(h,w))
    
    out = out.astype(np.uint8)
    
    plt.imshow(out)
    
    plt.show()

    return 
    

#-----------------------------Image1----------------------------#

img = cv2.imread("im1.jpg")

Segment_kmeans(img,3,7,5)

# Segment_kmeans(img,3,7,15)

# Segment_kmeans(img,3,13,5)

# Segment_kmeans(img,3,20,5)

# Segment_kmeans(img,5,7,5)

# Segment_kmeans(img,7,7,5)

Segment_kmeans(img,5,13,15)

Segment_kmeans(img,7,20,30)    #Takes a while to run

#----------------------------Image2------------------------------#

img = cv2.imread("im2.jpg")

Segment_kmeans(img,3,7,5)

Segment_kmeans(img,5,13,15)

Segment_kmeans(img,7,20,30)

#----------------------------Image3------------------------------#

img = cv2.imread("im3.png")

Segment_kmeans(img,3,7,5)

Segment_kmeans(img,5,13,15)   #Takes a while to run

Segment_kmeans(img,7,20,30)   #Takes a while to run (the longest)









