function [] = es17()
n = 10;
f = @(x)(1./(1+x.^2));
a = -5;
b = 5;
eps = 0.1;
Sn = formulaTrapezzi(f,n,nodiUniformi(n+1,a,b),a,b);
S2n = formulaTrapezzi(f,2*n,nodiUniformi(2*(n+1),a,b),a,b);
r = abs(Sn - S2n);
it = 0;
while r>(2*eps)
    n = 2*n;
    Sn = formulaTrapezzi(f,n,nodiUniformi(n+1,a,b),a,b);
    S2n = formulaTrapezzi(f,2*n,nodiUniformi(2*(n+1),a,b),a,b);
    r = abs(Sn - S2n);
    it = it + 1;
end
disp(r);
disp(it);