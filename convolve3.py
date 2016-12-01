import math
import numpy as np
from matplotlib import pyplot as plt
from scipy.stats import chisquare

a_best=0.0
d_best=0.0
w_best=0.0
chi_best=1000000

lamb = 656*10**-9 #wavelength of our laser

thetalist = []
f = []
g = []

def ThetaGen(): #Generates Our Theta List
	for i in xrange(-1000,1001):
		if i!=0:
			thetalist.append(float(i)*10**-5)

def FuncGen(I0,a,d): #Generates Our Theoretical Fraunhofer Data
	for i in xrange(0,len(thetalist)):
		alpha = np.pi*a*math.sin(thetalist[i])/lamb
		beta = alpha*d/a
		I = I0*((math.sin(alpha)/alpha)**2.0)*(math.cos(beta))**2.0
		f.append(I)

def TopHatGen(w): #Generates Our Tophat Function
	w1 = math.atan2(w,.5)
	for i in xrange(0,len(thetalist)):
		if (thetalist[i]<=w1/2.0) and (thetalist[i]>=-w1/2.0):
			g.append(1.0)
		else:
			g.append(0.0)

def Convolve(): #should do the convolution
	return  np.convolve(f,g,mode='same')

def doAnIter(a,d,w):	
	ThetaGen()
	FuncGen(1.0,a,d) #I used FuncGen(1.0,.09*10**-3,.4*10**-3)
	TopHatGen(w) #I used 2.0*10**-4
	convol = np.zeros(len(thetalist))
	convol = Convolve()
	for i in xrange(0,len(convol)):
		print thetalist[i], convol[i]
	return convol

def main():
	convol = doAnIter(.09*10**-3,.4*10**-3,2.0*10**-4)
	for i in xrange(0,len(thetalist)):
		print thetalist[i], convol[i]

main()
