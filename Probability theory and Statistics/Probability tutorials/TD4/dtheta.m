function [T] = dtheta(t)
B=0.0001; 
phi=-154.76;
C=10.44;
omega=365;
T=B - C*2*pi*sin(2*pi*(t-phi)/omega)/omega;
end

