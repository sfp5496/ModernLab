lambda = 670e-9
d = .0000002
a1 = .0000002
a2 = .0000002

#f(x) = 2*a1*a2*cos((2*pi*d*sin(x))/lambda)*(sin((pi*a1*sin(x)/lambda))/((pi*a1*sin(x))/lambda))*(sin((pi*a2*sin(x)/lambda))/((pi*a2*sin(x))/lambda))+(a1*a1)*(sin((pi*a1*sin(x)/lambda))/((pi*a1*sin(x))/lambda))**2 + (a2*a2)*(sin((pi*a2*sin(x)/lambda))/((pi*a2*sin(x))/lambda))**2

f(x) = 2*cos((2*pi*d*sin(x))/lambda)*(sin((pi*a1*sin(x)/lambda))/((pi*a1*sin(x))/lambda))*(sin((pi*a2*sin(x)/lambda))/((pi*a2*sin(x))/lambda)) + (sin((pi*a1*sin(x)/lambda))/((pi*a1*sin(x))/lambda))**2 + (sin((pi*a2*sin(x)/lambda))/((pi*a2*sin(x))/lambda))**2
fit f(x) 'DSdata1' using 1:2 via a1,a2,d

plot f(x)
