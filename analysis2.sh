Xmax=4.25 

gawk -v Xmax=$Xmax '(1==1){print atan2($1-Xmax,500),2*(($1-Xmax)/(1+(($1-Xmax)/500)(($1-Xmax)/500)))*sqrt(($2/(500*500))*($2/(500*500))+($2/(500*500*500))*($2/(500*500*500))),$6,$7}' NSSphoton
