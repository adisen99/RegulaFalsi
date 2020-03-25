#-------------------------------------------------
# Python code for Regula-Falsi Method or Method of
# of False Assumptions determine the roots of the 
# user-defined equation provided a guess within 
# which the roots must lie.
#-------------------------------------------------

#import the necessary libraries
import matplotlib.pyplot as plt
import numpy as np
from scipy.interpolate import spline

#Define the function prefixes using NumPy
sin = np.sin
cos = np.cos
tan = np.tan
pi  = np.pi
exp = np.exp
ln  = np.log
log = np.log10

fx = input("Enter the function whose roots you wish to determine :")      #take function as input from the user
f  = lambda x: eval(fx)

# Code to determine the points between which the root lies
for x in range(0, 100):
    if f(x)*f(x+1) <= 0:
        print("The root lies between",int(x),"and",int(x+1))

# Enter the initial approximation and Error as Input from User
xl  = float((input("Enter the first value of interval given above :")))
xu  = float((input("Enter the end value of interval given above:")))
tol = float((input("Enter the allowed error (for eg. 0.1 or 0.01 or 0.001, etc.):")))
N   = int(input("Enter the no. of iterations you want to run:"))

# Define the actual algorithm as a function
def regfal(f, xl, xu, tol, N):
	if f(xl)*f(xu) > 0:	
		print("values entered are incorrect! Enter the new guesses")
		xl = float((input("Enter the first value of interval again :")))
		xu = float((input("Enter the end value of interval again:")))
		lastFuncVal = f(xl)
	else:
		for i in range(2, N):
			xr = xl - (((xu - xl)/(f(xu) - f(xl)))*f(xl))
			if f(xr) == 0 or abs(f(xr)) < tol:
				return xr
			elif f(xr)*f(xl) > 0:
				xl = xr
			else:
				xu = xr
			lastFuncVal = f(xr)
		return "Method failed after {} iterations".format(N)

Ans = regfal(f, xl, xu, tol, N)			# define the output of the function as a variable 'Ans'

print ("Regula-Falsi method soln: x = ", Ans) # Print the solution

#Code to plot the curve
x = np.linspace(-10,10,10)
xnew = np.linspace(x.min(), x.max(), 300)       # Interpolates extra values to make smooth curve
f_smooth = spline(x, f(x), xnew) 				# Use the spline tool from SciPy to get smoother curves

#Plot the curves
fig = plt.figure()
plt.plot(xnew, f_smooth, '-b', label = 'function')
plt.plot(Ans, 0, 'ro', label = 'The root of the function')
plt.xlabel('x')
plt.ylabel('fx')
plt.savefig('regfal_exp.png')				# Export the image to the folder where you run the python3 command
plt.legend()

#Show the curve
plt.show()