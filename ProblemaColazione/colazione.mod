set ALIM; #vettore alimenti

param c{ALIM}>=0;
param kc{ALIM}>=0;
param fib{ALIM}>=0;
param vit{ALIM}>=0;

param Min_fib>=0;
param Min_vit>=0;
param Min_kc>=0;
param Max_kc>=0;

var x{ALIM}>=0;

minimize z:
  sum{i in ALIM}c[i]*x[i];

  s.t. fibre: sum{i in ALIM}fib[i]*x[i]>=Min_fib;
  s.t. vitamine: sum{i in ALIM}vit[i]*x[i]>=Min_vit;
  s.t. min_kilocal: sum{i in ALIM}kc[i]*x[i]>=Min_kc;
  s.t. max_kilocal: sum{i in ALIM}kc[i]*x[i]<=Max_kc;

