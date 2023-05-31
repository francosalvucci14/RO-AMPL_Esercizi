set MACC;

param NumeroProdottiST{MACC};
param NumeroProdottiSP{MACC};
param Costi{MACC};

var x{MACC}>=0;
var Domanda_Sp>=40;
var Domanda_St>=60;

minimize produzione:
    sum{e in MACC} x[e]*Costi[e];

subject to produzione_standard:
    sum{e in MACC} NumeroProdottiST[e]*x[e] >= Domanda_St;

subject to produzione_speciale:
    sum{e in MACC} NumeroProdottiSP[e]*x[e] >= Domanda_Sp;
