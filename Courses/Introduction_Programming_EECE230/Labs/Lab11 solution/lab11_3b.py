#Lab 11 problem 3b Solution

# Longest   zero-sum (contiguous) sublist
def longestZeroSumSubListSlow(L): # O(n^2)
 #   print(L)
    n = len(L)
    if n== 0: return []
    iMax = 0
    jMax = -1 
    for i in range(n):
        cumulativeSum = 0
        for j in range(i,n):
            cumulativeSum+= L[j]
            if  cumulativeSum==0 and  j - i > jMax-iMax: 
                iMax = i
                jMax = j
    return L[iMax:jMax+1]

def longestZeroSumSubListFast(L): # O(n) expected time using dictionaries
    n = len(L)
    if n== 0: return []
    iMax = 0
    jMax = -1 
    D = {0:-1} # Dictionary: key: cumulative sum, value: index of first occurence 
    cumulativeSum = 0
    for j in range(n):
        cumulativeSum+= L[j]
        if cumulativeSum not in D: # add cumulativeSum  to D if not already in  
            D[cumulativeSum]=j     #     essential to add first occurence   
        # search for cumulativeSum in D: 
        #    if found, i.e., if  sum(L[D[cumulativeSum]+1 ... j]) = 0,  
        #      update iMax and JMax if  best  length seen so far can be improved   
        if cumulativeSum in D and j - (D[cumulativeSum]+1) > jMax-iMax: 
            iMax =  D[cumulativeSum]+1
            jMax = j  
    return L[iMax:jMax+1]

print('Using the slow way:')
print(longestZeroSumSubListSlow([1, 10, -1, -1, 2, 3, -5, 26]))
print(longestZeroSumSubListSlow([1 ,10, -1, -1, 4, 3, -5, 26]))
print(longestZeroSumSubListSlow([1, 10, 1, -1, 4, 3, -5, 26]))
print(longestZeroSumSubListSlow([1, 10, 1, 0, 4, 3, -5, 26]))
print(longestZeroSumSubListSlow([1, 10, 1, 1, 4, 3, -5, 26]))
print(longestZeroSumSubListSlow([-1, -1, 2, 3, -5, 26]))
print(longestZeroSumSubListSlow([2, 2, -1, 0, -1, 2]))
print(longestZeroSumSubListSlow([1, 0, -2, 1, 0, 1, -1, 0, -1, 2, -2, -2]))
print('\nUsing the fast way:')
print(longestZeroSumSubListFast([1, 10, -1, -1, 2, 3, -5, 26]))
print(longestZeroSumSubListFast([1 ,10, -1, -1, 4, 3, -5, 26]))
print(longestZeroSumSubListFast([1, 10, 1, -1, 4, 3, -5, 26]))
print(longestZeroSumSubListFast([1, 10, 1, 0, 4, 3, -5, 26]))
print(longestZeroSumSubListFast([1, 10, 1, 1, 4, 3, -5, 26]))
print(longestZeroSumSubListFast([-1, -1, 2, 3, -5, 26]))
print(longestZeroSumSubListFast([2, 2, -1, 0, -1, 2]))
print(longestZeroSumSubListFast([1, 0, -2, 1, 0, 1, -1, 0, -1, 2, -2, -2]))

