lambda = 500

f(x)=((sin((pi*a/lambda)*sin(x))*lambda/(pi*a*sin(x)))**2)*(cos((pi*d/lambda)*sin(x)))**2

fit f(x) 'NSSdata' using 1:2 via a,d
