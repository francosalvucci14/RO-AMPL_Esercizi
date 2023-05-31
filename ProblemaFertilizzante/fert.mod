set FERT;
set REP;

param TempiProd{REP,FERT};
param Profitti{FERT};
param OreLav{REP};

var Quantità{FERT}>=0;

maximize profitto:
    sum{f in FERT} Profitti[f]*Quantità[f];

subject to limite_rep{r in REP}:
    sum{f in FERT} TempiProd[r,f]*Quantità[f]<=OreLav[r];

#subject to limite_rep2:
#    sum{f in FERT} TempiProd['R2',f]*Quantità[f]<=OreLav['R2'];

