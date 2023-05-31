set BENI;
set MACC;

param OreSett{MACC};
param OreLavoroProdotto{BENI};
param TempoLavorazione{BENI,MACC};
param Profitto{BENI};
var Qta{BENI}>=0;
maximize profitto:
    sum{b in BENI} Profitto[b]*Qta[b];

subject to limite_lavoro1:
    sum{b in BENI} TempoLavorazione[b,'A']*Qta[b]<=OreSett['A'];
subject to limite_lavoro2:
    sum{b in BENI} TempoLavorazione[b,'B']*Qta[b]<=OreSett['B'];

subject to limite_lavoro3:
    sum{b in BENI} TempoLavorazione[b,'C']*Qta[b]<=OreSett['C'];

