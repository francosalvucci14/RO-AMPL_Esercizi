set BENZ;
set CARB;

param Ottani{BENZ};
param Ettolitri{BENZ};
param Costo{BENZ};
param Prezzo{BENZ};

param MinOttani{CARB};
param PrezzoCarb{CARB};
param DomMin{CARB};
param DomMax{CARB};

var Quantità{BENZ,CARB}>=0;
var QuantitàGrezzo{BENZ}>=0;

maximize ricavo:
    (sum{b in BENZ,c in CARB} (PrezzoCarb[c]-Costo[b])*Quantità[b,c])+
    (sum{b in BENZ} (Prezzo[b]-Costo[b])*QuantitàGrezzo[b]);

subject to qualita {c in CARB}:
    sum{b in BENZ} (Ottani[b]-MinOttani[c])*Quantità[b,c] >= 0;
subject to disponibilita {b in BENZ}:
    sum{c in CARB} Quantità[b,c] + QuantitàGrezzo[b] <= Ettolitri[b];
subject to domanda{c in CARB}:
    DomMin[c] <= sum{b in BENZ} Quantità[b,c] <= DomMax[c];

