set PROD;
set MACCH;
param Profitto{PROD};
param Tempo_macch{PROD,MACCH};
param Tempo_oper;
param Numero_macch{MACCH};
param Numero_oper;
param Ore_max_macch;
param Ore_max_oper;
var Quantita{PROD} >= 0;
maximize profitto_tot: sum{p in PROD} Profitto[p]*Quantita[p];

subject to limite_macchine {m in MACCH}:
sum{p in PROD} Tempo_macch[p,m]*Quantita[p] <=
Numero_macch[m]*Ore_max_macch;

subject to limite_oper:
Tempo_oper*sum{p in PROD} Quantita[p] <=
Numero_oper*Ore_max_oper;
