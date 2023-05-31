minimize z:
	x['x1'] + x['x2'] + x['x3'];

subject to v1['r1']:
	x['x1'] + x['x3'] >= -1;

subject to v1['r2']:
	x['x1'] + 10*x['x2'] - 2*x['x3'] >= -2;

subject to v2['x1']:
	x['x1'] <= 0;

subject to v3['x2']:
	x['x2'] >= 0;

subject to v3['x3']:
	x['x3'] >= 0;

