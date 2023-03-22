import matplotlib.pyplot as plt
x=[]
for i in range(1,30):
    x.append(i)
y=[]
for i in range(1,30):
    y.append(i**2)
plt.plot(x,y,'r')