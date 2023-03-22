# -*- coding: utf-8 -*-
"""
Created on Sun Oct 21 09:34:20 2018

@author: lb13
"""


# Simple examples
## Dictionaries

print("Dictionaries:")


monthNumbers = {'Jan':1, 'Feb':2, 'Mar':3, 'Apr':4, 'May':5}
dist = monthNumbers['Apr'] - monthNumbers['Jan']
print('Apr and Jan are', dist, 'months apart')


monthNumbers = {'Jan':1, 'Feb':2, 'Mar':3, 'Apr':4, 'May':5}
print(monthNumbers)
print('Jan' in monthNumbers)
print('June' in monthNumbers)
print(monthNumbers['Feb'])
del  monthNumbers['Mar']
print(monthNumbers)
monthNumbers['June'] = 6
print(monthNumbers)
print(len(monthNumbers))


monthNumbers = {'Jan':1, 'Feb':2, 'Mar':3, 'Apr':4, 'May':5}
for key in monthNumbers:
    print(monthNumbers[key], end = " ") 


########################################
# Lists as stacks
print("-----------------------")
print("\nLists as stacks:")

S = []
S.append(1)  # push 1
S.append(10) # push 10
S.append(3)  # push 3
while len(S)!=0: # Stack non-empty  
    x = S.pop()  # pop and store in x
    print(x) 
# Get: 


