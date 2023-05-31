set IMP;
set MAG;
set DIS;

param Offerta{IMP};
param Costo_trasp1{IMP,MAG};
param Domanda_mag{MAG};
param Prezzo_mag{MAG};
param Costo_trasp2{MAG,DIS};
param Domanda_dis{DIS};
param Prezzo_dis{DIS};

var x{IMP,MAG} >= 0;
var y{MAG,DIS} >= 0;
var z{m in MAG} >= Domanda_mag[m];

maximize profitto:
sum{m in MAG} (Prezzo_mag[m]*z[m] + sum{d in DIS} Prezzo_dis[d]*y[m,d]) -
sum{i in IMP,m in MAG} Costo_trasp1[i,m]*x[i,m] -
sum{m in MAG,d in DIS} Costo_trasp2[m,d]*y[m,d];
subject to offerta_imp {i in IMP}: sum{m in MAG} x[i,m] <= Offerta[i];
subject to transito {m in MAG}:
sum{i in IMP} x[i,m] = sum{d in DIS} y[m,d] + z[m];
subject to domanda_dis {d in DIS}:
sum{m in MAG} y[m,d] >= Domanda_dis[d];


