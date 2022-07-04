function dv = combinada(r1, r3, dg)
    mu = 398600;

    h1 = sqrt(mu*r1);
    h3 = sqrt(mu*r3);
    h2 = sqrt(2*mu)*sqrt(r1*r3/(r1+r3));

    v1 = h1/r1;
    v3 = h3/r3;

    v2a = h2/r3;
    v2p = h2/r1;

    dvcomb = sqrt(v2a^2 + v3^2 - 2*v2a*v3*cos(deg2rad(dg)));
    
    dv = abs(v1 - v2p) + dvcomb;
end