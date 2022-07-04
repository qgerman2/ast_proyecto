ra = 200+6378;
rc = 19100+6378;
dg = 64.8 - 62.92555;

fprintf("DV Hohmann: %f km/s\n", hohmann(ra, rc, dg))
fprintf("DV Combinada: %f km/s\n", combinada(ra, rc, dg))