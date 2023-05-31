minimize costi_trasp:
	1000*Qta['Pom','Ro'] + 3000*Qta['Pom','Nap'] + 3500*Qta['Cas','Ro'] + 
	500*Qta['Cas','Nap'];

subject to limite_prod:
	Qta['Pom','Ro'] + Qta['Pom','Nap'] <= 10000;

subject to limte_dep:
	Qta['Cas','Ro'] + Qta['Cas','Nap'] <= 8000;

subject to limite_rif:
	Qta['Pom','Ro'] + Qta['Cas','Ro'] = 11000;

subject to limite_rif2:
	Qta['Pom','Nap'] + Qta['Cas','Nap'] = 4600;

