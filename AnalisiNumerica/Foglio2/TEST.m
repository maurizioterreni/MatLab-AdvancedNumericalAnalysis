clc
clear

F = @(x)(x^2);

n = 10;
a = zeros(1,n);
x = 1:10;
F_cos= @(x,k)(cos(k.*x));
for k = 1 : n
    a(k) = integral(F_cos,0,2*pi);
end

disp(a);