# -*- coding: utf-8 -*-
"""
Created on Wed Mar 25 05:04:49 2020

@author: RAYAN
"""

# LAB 4 PROBLEM 1 PART A(1)

# worst case (if we have n integers): T(n)=5 + 5n + 6 = 5n + 11 = O(n)
# best case (if we only have 1 integer): T(1)=16= O(1)

# LAB 4 PROBLEM 1 PART A(2)

# worst case (if we have n integers): T(n)=3 + n + 2 + 4n+ 6 = 5n + 11 = O(n)
# best case (if we have 1 integer): T(1)=16= O(1)

# LAB 4 PROBLEM 1 PART B 

# worst case (if lenght of string is n): T(n)=n+ 4n +11 = 5n+11 = O(n)
# best case (if we enter an empty set, n=0): O(1)

# LAB 4 PROBLEM 2 PART 1 

# worst case (if length of string is n): T(n)=4 + 3(n/2) + 4= 3(n/2) + 7= O(n)
# best case (if n=0): O(1)

# LAB 4 PROBLEM 2 PART 2

# worst case: T(n)= n+6 = O(n)
# best case : T(0)= O(1)

# LAB 4 PROBLEM 3 PART A

# worst case (if n numbers ) : T(n)= 4 + n + 8n^3 + 3 + n = 8n^3 + 2n + 7= O(n^3)
# best case (if n=1) T(1)= 10 = O(1)

# LAB 4 PROBLEM 3 PART B

# worst case : also O(n^3) because "sum" has a complexity of n steps (its like a 3rd loop)
# best case : O(1)

# LAB 4 PROBLEM PART C 

# worst case: T(n)=5+2n+ 5n^2 + 3 + n= 5n^2 + 3n + 8 = O(n^2)
# best case : O(1)

# LAB 5 PROBLEM 1 PART A 

# worst case (if list has length=n): T(n)=n+3 = O(n)
# best case (if list is empty, so n=0): T(0)=3=O(1)

# LAB 5 PROBLEM 1 PART B

# worst case T(n): T(n)=n+3=O(n)
# best case T(0)=O(1)

# LAB 5 PROBLEM 1 PART C 

# worst case: T(n)=7 + 2n + 2n + 2 + 2(n+3) (because we're calling the two functions)= O(n)
# best case: (if we have empty lists): O(1)

# LAB 5 PROBLEM 2 PART A 

# worst case: T(n)=2n+4 
# best case: O(1)

# LAB 5 PROBLEM 2 PART B 

# worst case: 2+ n(2n+4) = 2n^2+6= O(n^2)
# best case O(1)

# LAB 5 PROBLEM 2 PART C 

# worst case: T(n)=3+2n+ (2n^2+6)= O(n^2)
# best case O(1)

# LAB 6 PROBLEM 2 PART A

# worst case (if file has n lines): T(n)= O(n)
# best case: (if file has no lines) T(0)=O(1)

# LAB 6 PROBLEM 2 PART B 

# worst case (if file has n lines) :T(n)= 3n+10 = O(n)
# best case (if 0 lines) T(0)=10=O(1)

# LAB 6 PROBLEM 2 PART C

# worst case O(n)
# best case T(n)= 95 + 95 + 3 + 4n^3 + 2 + 95(2) = O(n^3)
# worst case (if no lines): O(1)





