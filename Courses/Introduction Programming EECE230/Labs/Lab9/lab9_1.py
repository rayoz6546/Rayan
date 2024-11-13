
#LAB 9 Solution

## PROBLEM 1 

############################  PART A  ##################################

def f(n):
    global N
    N = N + 1
    if n>=3: 
        return f(n-1)+f(n-2)+f(n-3)+f(n//3)
    return 1


print("f(n) for n = 0...9:")
for i in range(10):
    N=0
    print(f(i), end=" ")
N=0
print("\nf(25): ",f(25))
print("Number of recursive calls for 25:", N)

############################  PART B  ##################################

def fIterative(n):
    if n >= 3:
        L=[1,1,1]  # the first 3
        for i in range (3,n+1):
            v= L[i-3]+ L[i-2] + L[i-1] + L[i//3] 
            L.append(v)
        return L[n]
    return 1   #in case base case

#print("f(n) for n = 0...9:")
#for i in range (10):
#    print(fIterative(i), end=' ')
#    
print("\nfIterative(25): ",fIterative(25))
