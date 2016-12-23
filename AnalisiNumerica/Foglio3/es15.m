function [] = es15()
n = 10;
f = @(x)(1./(1+x.^2));
a = -5;
b = 5;
Sn = formulaTrapezzi(f,n,nodiUniformi(n+1,a,b),a,b);
S2n = formulaTrapezzi(f,2*n,nodiUniformi(2*(n+1),a,b),a,b);
r = abs(Sn - S2n)/3;

disp(r);