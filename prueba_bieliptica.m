clc
clf
clear all

ra = 200+6378;
rc = 19100+6378;
dg = 64.8 - 62.92555;

%combinada
x(1) = 0;
[dv(1), dvcomb(1), dvs(1)] = bieliptica(ra, rc, dg, rc);

i = 1;
while 1
    x(i+1) = i*1000;
    %bieliptica
    [dv(i+1), dvcomb(i+1), dvs(i+1)] = bieliptica(ra, rc, dg, rc + x(i+1));

    if (dvs(i+1) - dvs(1)) >= dvcomb(1) || (i>100)
        break
    end
    i = i + 1;
end

plot(x, [dvs; dvcomb])
grid on
legend("DV Entrada/Salida GTO", "DV Combinada en GTO", 'Location', 'northwest')