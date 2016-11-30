lambda = 670e-9
a = .085e-3
A = 58
set xlabel 'Angular Displacement (Radians)'
set ylabel 'Number of Photons (collected over 10s)'
set title 'Far Single Slit'

f(x) = A*(sin((pi*a*sin(x)/lambda))/((pi*a*sin(x))/lambda))**2
fit f(x) 'FSSphoton1' using 1:3:4 via a 

plot 'FSSphoton1' using 1:3:2:4 with xyerrorbars, f(x)
