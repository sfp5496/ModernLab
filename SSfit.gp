lambda = 670e-9
a = .085e-3

set xlabel 'Angular Displacement (Radians)'
set ylabel 'Amplitude (Normalized to Global Maximum)'
set title 'Near Single Slit'

f(x) = (sin((pi*a*sin(x)/lambda))/((pi*a*sin(x))/lambda))**2
fit f(x) 'NSSdata1' using 1:2:4 via a 

plot 'NSSdata1' using 1:2:3:4 with xyerrorbars, f(x)
