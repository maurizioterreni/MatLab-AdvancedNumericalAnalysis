function [x] = chebichev(n,inf,sup)
x = zeros(1,n);
for i=1:n
    x(i) = inf + ((sup-inf)/2)*cos(((2*i)/(n+1))*(pi/2))+(sup-inf)/2;
end