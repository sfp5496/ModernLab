lambda = 670e-9
a = .0000004
d = .0002
A = 169
f(x) = A*((sin((pi*a/lambda)*sin(x))*lambda/(pi*a*sin(x)))**2)*(cos((pi*d/lambda)*sin(x)))**2
fit f(x) 'DSphoton2' using 1:3:4 via a,d
set xlabel 'Angular Distance'
set ylabel 'Number of Photons (collected over 10s)'
set title 'Double Slit, One Photon at a Time'
plot 'DSphoton2' using 1:3:2:4 with xyerror, f(x)
