import matplotlib.pyplot as plt
import csv

x=[]
y=[]

with open('energy.txt','r') as file:
    plots = csv.reader(file,delimiter='\t')
    next(plots)
    for row in plots:
        x.append(float(row[1]))
        y.append(float(row[0]))

plt.loglog(x,y,color='orange',linewidth=3)
plt.xlabel('time(s)')
plt.ylabel('energy')
plt.title('fig 6, Orange plot')
axes=plt.gca()
axes.set_xlim([1,1000])
plt.show()
