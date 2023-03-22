# -*- coding: utf-8 -*-
"""
Created on Mon Jan 16 12:00:38 2023

@author: RAYAN
"""

import numpy as np
import matplotlib.pyplot as plt
from timeit import default_timer as timer
from numpy.linalg import norm

# ------------------------PART 3---------------------------------#

# ------------------Print Vector x-------------------------------#

x = np.random.normal(2.1,0.7,size=(1000000,1))
print("Vector x is: \n")
print(x)
print('\n')

# ------------------Print Vector z--------------------------------#

z = np.random.uniform(-1.5,4, size = (1000000,1))
print("Vector z is: \n")
print(z)
print('\n')

# -------------------Normalized Histograms-------------------------#

plt.hist(x, density = True) # use density=true to normalize
plt.savefig("ps1-3-c-1.png")
plt.close()

plt.hist(z, density = True)
plt.savefig("ps1-3-c-2.png")
plt.close()

# --------------------Add 1 using loop -----------------------------#

start =timer()
for i in range(1000000):
    x[i][0] = x[i][0]+1
end = timer()
print("\nExecution time (using a loop): ")
print(end - start)
print("\nVector x after adding 1 to every value: \n")
print(x)

x = x - 1 # this is just so we return to original vector x 

# ---------------------Add 1 WITHOUT loop-----------------------------#

start = timer()
x = x + 1
end = timer()
print("\nExecution time (without a loop): \n")
print(end - start)
print("\nVector x after adding 1 to every value: \n")
print(x)

# --------------------------Vector y-----------------------------------#

y=[]
for i in range(1000000):
    if z[i][0] < 0 and z[i][0]>-1:
        y.append(z[i][0])
print("\nNumber of retreived elements in y: ", len(y))


# -----------------------------PART 4----------------------------------#

# -----------------------Matrix A and operations ----------------------#

a = np.array([(2,1,3),(2,6,8),(6,8,18)])
print("\nThe matrix A is: \n")
print(a)

minimum_col = np.min(a,0)
print("\nThe following list shows minimum value in each column:")
print(minimum_col)
    
maximum_row = np.max(a,1)
print("\nThe following list shows maximum value in each row:")
print(maximum_row)
    
minimum_a = np.min(a)
print("\nThe smallest value in A is:")
print(minimum_a)

sum_rows = np.sum(a,1)
print("\nThe following list shows sum of each row in A:")
print(sum_rows)   

sum_elements = np.sum(a)
print("\nThe sum of all elements in A is:")
print(sum_elements) 
    
b = np.square(a)
print("\nThe matrix B is:")
print(b)    

# ----------------------System of Equalities--------------------------#

c = np.array([[2,1,3],[2,6,8],[3,5,15]]) 
d = np.array([1,2,5])
print("\nSolve system 2x+y+3z=1, 2x+6y+8z=2, 3x+5y+15z=5")
print("First matrix:")
print(c)
print("\nOutput matrix:")
print(d)
solution = np.linalg.solve(c,d)
print("\n")
print("The solution to the system is: \n",solution)

# --------------------------L1/L2 norms-------------------------------#

x1 = np.array([0.5,0,-1.5])
x2 = np.array([1,-1,0])
l1_x1 = norm(x1,1)
l1_x2 = norm(x2,1)
l2_x1 = norm(x1,2)
l2_x2 = norm(x2,2)

print("\nVector x1 is: ",x1)
print("\nNorm L1 of x1 is: ",l1_x1)
print("\nNorm L2 of x1 is: ",l2_x1)
print("\nVector x2 is: ",x2)
print("\nNorm L1 of x2 is: ",l1_x2)
print("\nNorm L2 of x2 is: ",l2_x2)


# -----------------------------PART 5--------------------------------#

def sum_sq_col(A):
    size = np.shape(A)
    nbre_rows = size[0]
    square_matrix = np.square(A) # contains squared elements of A
    #print(square_matrix) 
    # now just add the squared elements:
    out = np.sum(square_matrix,1)  #gives us [[a] [b] ...]
    B = np.reshape(out,(nbre_rows,-1))  # reshape so we get [[a]
                                        #                    [b]]
    print(B)
    return B

a = np.array([[2,3,4],[2,2,2],[4,1,3],[6,5,3]])
b = np.array([[1,6,3],[3,10,2]])
print("\nInput matrix A1 is: ")
print(a)
print("\nOutput matrix B1 is: ")
sum_sq_col(a)
print("\nInput matrix A2 is: ")
print(b)
print("\nOutput matrix B2 is: ")
sum_sq_col(b)











