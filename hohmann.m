function dv = hohmann(r1, r3, dg)
    mu = 398600;

    h1 = sqrt(mu*r1);
    h3 = sqrt(mu*r3);
    h2 = sqrt(2*mu)*sqrt(r1*r3/(r1+r3));

    v1 = h1/r1;
    v3 = h3/r3;

    v2a = h2/r3;
    v2p = h2/r1;

    dvg = 2*v3*sin(deg2rad(dg)/2);
    
    dv = abs(v1 - v2p) + abs(v3 - v2a) + dvg;
end

