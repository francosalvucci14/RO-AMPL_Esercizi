set TIPI;

param GrassoPerTipo{TIPI};
param PolpaPerTipo{TIPI};
param CostoTipo{TIPI};

var Qta{TIPI}>=0;

minimize costo:
    sum{t in TIPI} CostoTipo[t]*Qta[t];

subject to limite_peso:
    sum{t in TIPI} Qta[t]>=100;
subject to limite_grasso:
    sum{t in TIPI} GrassoPerTipo[t]*Qta[t]<=25;

