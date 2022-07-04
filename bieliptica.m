function [dv, dvcomb, dvs] = bieliptica(ra, rc, dg, rb)
    mu = 398600;

    h1 = sqrt(mu*ra);
    h2 = sqrt(2*mu)*sqrt(ra*rb/(ra+rb));
    h3 = sqrt(2*mu)*sqrt(rb*rc/(rb+rc));
    h4 = sqrt(mu*rc);
    
    v1 = h1/ra;
    v2p = h2/ra;
    v2a = h2/rb;
    v3a = h3/rb;
    v3p = h3/rc;
    v4 = h4/rc;
    
    dvs = abs(v1 - v2p) + abs(v3p - v4);
    dvcomb = sqrt(v2a^2 + v3a^2 - 2*v2a*v3a*cos(deg2rad(dg)));

    dv = dvs + dvcomb;
end

