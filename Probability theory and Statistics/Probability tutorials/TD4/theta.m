function [T] = theta(t)
A=6.38; %temperature moyenne annuelle
B=0.0001; 
phi=-154.76;
C=10.44;
omega=365;
T = A + B*t + C*cos(2*pi*(t-phi)/omega);
end

