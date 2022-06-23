% MATLAB script to determine attenuation coefficients of iron or concrete 
% Used by test_Case3.m

function xs = getattenCoeff(energy, material)
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
                  15.000, 20.00, 30.00];
    if strcmp(material, "iron")
        coeffArray = [1.696E+02, 5.641E+01, 2.522E+01, 7.930E+00, 3.478E+00, ...
                      1.854E+00, 1.131E+00, 5.510E-01, 3.425E-01, 1.829E-01, ...
                      1.383E-01, 1.064E-01, 9.200E-02, 8.282E-02, 7.611E-02, ...
                      6.644E-02, 5.957E-02, 4.862E-02, 4.250E-02, 3.611E-02, ...
                      3.303E-02, 3.139E-02, 3.050E-02, 2.985E-02, 2.989E-02, ...
                      3.088E-02, 3.220E-02, 3.465E-02];
    elseif strcmp(material, 'concrete')
        coeffArray = [2.616E+01, 8.075E+00, 3.510E+00, 1.142E+00, 5.683E-01, ...
                      3.649E-01, 2.746E-01, 2.001E-01, 1.702E-01, 1.397E-01, ...
                      1.249E-01, 1.072E-01, 9.572E-02, 8.728E-02, 8.070E-02, ...
                      7.085E-02, 6.368E-02, 5.187E-02, 4.472E-02, 3.646E-02, ...
                      3.182E-02, 2.888E-02, 2.689E-02, 2.444E-02, 2.306E-02, ...
                      2.148E-02, 2.101E-02, 2.101E-02];   
    end    
    xs = power(10.0,interp1(log10(energyArray), log10(coeffArray), log10(energy)));
end


