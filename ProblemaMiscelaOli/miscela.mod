set OLII;
set RISORSE;
set DOMANDA;
var x{OLII}>=0;
var y>=0;
param profitto;
param costo{OLII};
param b{RISORSE};
param b2{DOMANDA};
param a{RISORSE,OLII};
param a2{DOMANDA,OLII};
maximize obj: profitto*y - sum{i in OLII} costo[i]*x[i];
subject to c1 {i in RISORSE}: sum{j in OLII} a[i,j]*x[j] <= b[i];
subject to c2 {i in DOMANDA}: sum{j in OLII} a2[i,j]*x[j] <= y*b2[i];
subject to c3 : sum{i in OLII} x[i] = y;