% MATLAB script to determine air absorption coefficients 
% Used by test_Case3.m

function xs = getattenCoeff(energy)
    % calculate an mass attenuation coefficient
    % at 0.66 MeV
    format long
    % energy = 0.66;
    % density = 0.001205;
    energyArray = [0.010, 0.015, 0.020, 0.030, 0.040, ...
                   0.050, 0.060, 0.080, 0.100, 0.150, ...
                   0.200, 0.300, 0.400, 0.500, 0.600, ...
                   0.800, 1.000, 1.500, 2.000, 3.000, ...
                   4.000, 5.000, 6.000, 8.000, 10.000, ...
                  15.000, 20.00];
    coeffArray = [ 4.640E+00 ,1.300E+00 ,5.255E-01 ,1.501E-01 ,6.694E-02, ...
                   4.031E-02 ,3.004E-02 ,2.393E-02 ,2.318E-02 ,2.494E-02, ...
                   2.672E-02 ,2.872E-02 ,2.949E-02 ,2.966E-02 ,2.953E-02, ...
                   2.882E-02 ,2.787E-02 ,2.545E-02 ,2.342E-02 ,2.054E-02, ...
                   1.866E-02 ,1.737E-02 ,1.644E-02 ,1.521E-02 ,1.446E-02, ...
                   1.349E-02 ,1.308E-02];

    xs = power(10.0,interp1(log10(energyArray), log10(coeffArray), log10(energy)));
end


