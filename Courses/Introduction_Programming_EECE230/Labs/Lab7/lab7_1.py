#Lab 7
#Problem 1 Solution
#


##PART A
import matplotlib.pyplot as plt
from math import log2

n = [x for x in range (2,31)]

lg2 = [log2(i) for i in n]


# plot 1: log2(n), logarithmic growth
#You can plot these as 5 subplots or each plot alone
plt.subplot(3,2,1)
plt.plot (n, lg2, "r")
plt.title ("Logarithmic Growth")
plt.ylabel ("log_2(n)")
plt.xlabel("n")

# plot 2 : n, linear growth 
plt.subplot(3,2,2)
plt.plot(n,n, "g")
plt.title ("Linear Growth")
plt.ylabel ("n")
plt.xlabel("n")

# plot 3: n log2(n), "Loglinear Growth"
plt.subplot(3,2,3)
nlg2=[x*log2(x) for x in n]
plt.plot(n, nlg2,"b")
plt.title ("Loglinear Growth")
plt.ylabel ("n*log_2(n)")
plt.xlabel("n")

# plot 4: n^2, quadratic growth 
plt.subplot(3,2,4)
n2= [x*x for x in n]
plt.plot(n,n2, "k")
plt.title ("Quadratic Growth")
plt.ylabel ("n^2")
plt.xlabel("n")

# plot 5: 2^n, exponential growth
plt.subplot(3,2,5)
exp=[2**x for x in n]
plt.plot(n,exp, "y")
plt.title ("Exponential Growth")
plt.ylabel ("2^n")
plt.xlabel("n")
plt.close




##PART B
#import matplotlib.pyplot as plt
#from math import log2
#
#n = [x for x in range (2,31)]
#
#lg2 = [log2(i) for i in n]
#
#exp=[2**x for x in n]
#
#n2= [x*x for x in n]
#
#nlg2=[x*log2(x) for x in n]
#
#plt.plot (n, lg2, "r", label = "log2(n)" )
#plt.plot(n,n, "g", label = "n")
#plt.plot(n, nlg2,"b", label = "n*log2(n)")
#plt.plot(n,n2, "k", label= "n^2")
#plt.plot(n,exp, "y", label = "2^n")
#plt.yscale("log")
#plt.title ("All on the same figure")
#plt.xlabel("n")
#plt.legend()




##PART C

#import matplotlib.pyplot as plt
#from math import log2
#
#n = [x for x in range (2,31)]
#
#lg2 = [log2(i) for i in n]
#
#exp=[2**x for x in n]
#
#n2= [x*x for x in n]
#
#nlg2=[x*log2(x) for x in n]
#
#plt.subplot(1,2,1)
#plt.plot (n, lg2, "r", label = "log2(n)" )
#plt.plot(n,n, "g", label = "n")
#plt.plot(n, nlg2,"b", label = "n*log2(n)")
#plt.yscale("log")
#plt.title ("log2(n) vs. n vs. n*log2(n)")
#plt.xlabel("n")
#plt.legend()
#
#plt.subplot(1,2,2)
#plt.plot(n, nlg2,"b", label = "n*log2(n)")
#plt.plot(n,n2, "k", label= "n^2")
#plt.plot(n,exp, "y", label = "2^n")
#plt.yscale("log")
#plt.title ("2^n vs. n^2 vs. n*log2(n)")
#plt.xlabel("n")
#plt.legend()
