#Lab 11 problem 3a Solution
def buildFrequenciesDict(s):
    D = {}
    for x in s:
        if x not in D:
            D[x] = 1
        else: 
            D[x]+=1
    return D 
    

def anagrams(s1,s2):
    if len(s1)!=len(s2): 
        return False
    else:
        return buildFrequenciesDict(s1)==buildFrequenciesDict(s2)

print(anagrams("",""))
print(anagrams("i","i"))
print(anagrams("is","si"))
print(anagrams("fun","nfu"))
print(anagrams("aaabaab","abba"))
print(anagrams("aaabaab","baabaaa"))
print(anagrams("EECE230","EECE230"))
print(anagrams("EECE230","3EE02CE"))
print(anagrams("EECE230","3EEE02E"))