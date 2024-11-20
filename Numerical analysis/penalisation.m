function [val,grad] = penalisation(u)
L = 3/2;
h1 = 1;
h2 = 3/2;
N = length(u)/2;

x = [0 ; u(1:N) ; 1];
y = [h1 ; u(N+1:2*N) ; h2];


val = 0;
grad = zeros(2*N,1);

for i = 1 : N+1
    l = sqrt((x(i+1)-x(i))^2 + (y(i+1)-y(i))^2);
    phi = l - L/(N+1);
    val = val + phi^2;
    dx = (x(i+1)-x(i))/l;
    dy = (y(i+1)-y(i))/l;
    g = zeros(2*N,1);
    if i<N+1
    g(i) = dx;
    g(N+i) = dy;
    end
    if i>1
        g(i-1) = -dx;
        g(N+i-1) = -dy;
    end
    grad = grad + phi*g;
end