set LAV;
set MACC;

param profitto_Lav{LAV};

param Max_Res{MACC};

param vincoli_tec{LAV,MACC};
var x{LAV}>=0;
maximize profitto_tot:
    sum{i in LAV} profitto_Lav[i]*x[i];

subject to vincoli{m in MACC}:
    sum{l in LAV} vincoli_tec[l,m]*x[l]<=Max_Res[m];