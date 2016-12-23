function[p] = calcola_pol_pari(a,b,f,x)

m = length(f);
n = length(b);
p = zeros(1,m);


for j = 1 : length(x)
    first = 0;
    second = 0;
    for k = 1 : n -1
        first = first + (a(k+1) * cos(k*x(j)));
        second = second + (b(k) * sin(k * x(j)));
    end
    p(j) = first + second + (a(1)*(1/m)) + ((a(n)/2)* cos(n*x(j)) );
end

