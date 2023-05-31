set ELETTRO;
set REP;

param NumOper{REP};
param OreProd{ELETTRO,REP};
param OreOper;
param Prezzo{ELETTRO};
param Domanda{ELETTRO};

var Quantità{ELETTRO,REP}>=0;

maximize profitto: sum{e in ELETTRO, r in REP} Prezzo[e]*Quantità[e,r];

subject to produzione{r in REP}:
    sum{e in ELETTRO} OreProd[e,r]*Quantità[e,r] <= NumOper[r]*OreOper;

subject to domanda_min{e in ELETTRO}:
    sum{r in REP} Quantità[e,r] >= Domanda[e];