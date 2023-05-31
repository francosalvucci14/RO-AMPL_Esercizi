set PROD;
set DEP;

param Trasporti{PROD,DEP};

var Qta{PROD,DEP}>=0;


minimize costi_trasp:
    sum{p in PROD,d in DEP}Trasporti[p,d]*Qta[p,d];

subject to limite_prod:
    Qta['Pom','Ro']+Qta['Pom','Nap']<=10000;
subject to limte_dep:
    Qta['Cas','Nap']+Qta['Cas','Ro']<=8000;

subject to limite_rif:
    Qta['Pom','Ro']+Qta['Cas','Ro']=11000;
subject to limite_rif2:
    Qta['Pom','Nap']+Qta['Cas','Nap']=4600;
