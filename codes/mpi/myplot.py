import matplotlib.pyplot as plt
import numpy as np
x = []
u = []
with open('heatsoln.txt') as f:
    for line in f:
        row=line.split()
        x.append(row[0])
        u.append(row[-1])
x=x[1:]
u=u[1:]
x_ar=np.array(x)
x_array = x_ar.astype(np.float64)
u_ar=np.array(u)
u_array = u_ar.astype(np.float64)
u_exact=(100*np.exp(1.)-60)*x_array + 120 - 100*np.exp(x_array)
plt.plot(x_array[0:-1:100],u_array[0:-1:100],'bo')
plt.plot(x_array,u_exact,'r')

plt.xlabel('x')
plt.ylabel('u')
plt.show()
