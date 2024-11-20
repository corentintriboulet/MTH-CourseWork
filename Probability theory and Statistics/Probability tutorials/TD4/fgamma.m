function g=fgamma(t,periode)
Tmoy=6.18;
Tmax=8.37;
t_max=366+29;
if periode==0
    g=sqrt(Tmoy);

elseif periode~=0
    g=sqrt(Tmoy+ (Tmax-Tmoy)*cos(2*pi/periode*(t-t_max)));
end
end