
## PROBLEM 2

############################  PART A  ##################################

def recPowerSlow(x,n):
    if n == 0 :
        return 1
    
    elif n<0:
        return 1/recPowerSlow(x,-n)
    
    elif n>0:
        return x*recPowerSlow(x,n-1)


print(recPowerSlow(3,0))
print(recPowerSlow(3,1))
print(recPowerSlow(-3,1))
print(recPowerSlow(2,4))
print(recPowerSlow(2,-4))
print('1.75**57 = ', 1.75**57)
print(recPowerSlow(1.75,57))

############################  PART B  ##################################

def recPowerFast(x,n):
    if n==0:
        return 1
    elif n % 2 == 0:
        #important: assign temporary variable to one recursive call
        # and multiply it by itself to avoid a double call
        t=recPowerFast(x,n/2)
        return t*t
    elif n<0:
        return 1/recPowerFast(x,-n)
    else:
        #for odd: once x* then it will be even
        return x*recPowerFast(x,n-1)

print(recPowerFast(3,0))
print(recPowerFast(3,1))
print(recPowerFast(-3,1))
print(recPowerFast(2,5))
print(recPowerFast(2,-4))
print('1.75**57 = ', 1.75**57)
print(recPowerFast(1.75,57))