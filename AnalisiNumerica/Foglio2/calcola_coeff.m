function[a,b] = calcola_coeff(f,x,n)
m = length(x);
a = zeros(1,n + 1);
b = zeros(1,n);

a(1) = sum(f);
for k = 1:n
    for i = 1 : m
        a(k + 1) = a(k + 1) + (f(i) * cos(k*x(i)));
        b(k) = b(k) + (f(i) * sin(k*x(i)));
    end
    a(k + 1) = a(k + 1) * 2/m;
    b(k) = b(k) * 2/m;
end