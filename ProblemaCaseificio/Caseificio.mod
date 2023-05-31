#Caseificio.mod - File del modello AMPL - Caseificio
set PROD; # insieme dei prodotti
param d{PROD}>=0; # domanda massima per i prodotti
param l{PROD}>=0;
# quantita’ di latte richiesta per ogni Kg di prodotto
param v{PROD}>=0; # prezzo di vendita dei prodotti
param q{PROD}>=0;
# massima quantita’ di ciascun prodotto fabbricata da 1 operaio
param N; # numero di operai disponibili
param L; # quantita’ di latte disponibile
var x{PROD} >=0; # Kg prodotti per ogni tipo di prodotto
maximize guadagno_totale: sum{i in PROD} v[i]*x[i];
subject to domanda{i in PROD}: x[i]<=d[i]; # vincolo di domanda
subject to disp_latte: sum{i in PROD} l[i]*x[i]<= L;
# vincolo sulla disponibilita’ del latte
subject to disp_operai: sum{i in PROD} x[i]/q[i]<=N;
# vincolo sulla disponibilita’ degli operai