Xmax=3.50 
Vmax=1.501
dVmax=.005

gawk -v Xmax=$Xmax -v Vmax=$Vmax -v dVmax=$dVmax '(1==1){print atan2($1-Xmax,500),($2-.009)/Vmax,2*(($1-Xmax)/(1+(($1-Xmax)/500)(($1-Xmax)/500)))*sqrt(($3/(500*500))*($3/(500*500))+($3/(500*500*500))*($3/(500*500*500))),sqrt(($4/Vmax)*($4/Vmax)+(($2-.009)*dVmax/(Vmax*Vmax))*(($2-.009)*dVmax/(Vmax*Vmax)))}' NSSdata
