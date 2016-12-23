function [] = es16()
f = @(x)(1./(1+x.^2));
a = -5;
b = 5;
for i = 2 : 10
    Sn = formulaTrapezzi(f,i,nodiUniformi(i+1,a,b),a,b);
    S2n = formulaTrapezzi(f,2*i,nodiUniformi(2*(i+1),a,b),a,b);
    r = abs(Sn - S2n)/3;

    disp(r);
end