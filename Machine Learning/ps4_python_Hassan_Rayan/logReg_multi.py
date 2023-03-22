# -*- coding: utf-8 -*-
"""
Created on Sat Feb 11 14:15:23 2023

@author: RAYAN
"""

import numpy as np
from sklearn.linear_model import LogisticRegression


def logReg_multi(X_train, Y_train, X_test):
    n = len(Y_train)
    
    # first classifier (1 vs all)
    class1 = []
    y_1 = Y_train
    y_1.flatten()
    for i in range(n):
        if Y_train[i][0]==1:
            class1.append(1)
        else: 
            class1.append(0)
    class1 = np.reshape(class1,(n,1))
    
   
    # second classifier (2 vs all)
    class2 = []
    y_2 = Y_train
    y_2.flatten()
    for i in range(n):
        if Y_train[i][0]==2:
            class2.append(1)
        else:
            class2.append(0)
    class2 = np.reshape(class2,(n,1))

    
    # third classifier (3 vs all)
    class3=[]
    y_3=Y_train
    y_3.flatten()
    for i in range(n):
        if Y_train[i][0]==3:
            class3.append(1)
        else:
            class3.append(0)
    class3 = np.reshape(class3,(n,1))

    mdl1 = LogisticRegression(random_state=0).fit(X_train,class1)
    mdl2 = LogisticRegression(random_state=0).fit(X_train,class2)
    mdl3 = LogisticRegression(random_state=0).fit(X_train,class3)
    
    
    prob1 = mdl1.predict_proba(X_test)
    prob2 = mdl2.predict_proba(X_test)
    prob3 = mdl3.predict_proba(X_test)
    
    y_predict = []
    for i in range(len(prob1)):
        if prob1[i][1]==max([prob1[i][1]],prob2[i][1],prob3[i][1]):
            y_predict.append([1])
        elif prob2[i][1]==max([prob1[i][1]],prob2[i][1],prob3[i][1]):
            y_predict.append([2])
        else:
            y_predict.append([3])
    y_predict=np.array(y_predict)
    
    return y_predict

