function T = calcT(phi1,PHI,phi2)
%CALCT
%    T = CALCT(PHI1,PHI,PHI2)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-Apr-2020 08:27:44

zx = zeros(size(phi1));
T = [1.0+zx,...
    0.0+zx,...
    sin(PHI).^2.*(-1.5e+1./2.0)+5.0+zx,...
    0.0+zx,...
    sqrt(6.0).*sin(PHI.*2.0).*sin(phi1).*(-5.0./4.0),...
    sqrt(6.0).*sin(PHI.*2.0).*cos(phi1).*(-5.0./4.0),...