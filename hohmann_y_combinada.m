r1 = 200+6378;
r3 = 19100+6378;
dg = 64.8 - 62.92555;

fprintf("DV Hohmann: %f km/s\n", hohmann(r1, r3, dg))
fprintf("DV Combinada: %f km/s\n", combinada(r1, r3, dg))