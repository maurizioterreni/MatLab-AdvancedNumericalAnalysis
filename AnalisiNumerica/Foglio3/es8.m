function[] = es8()


F = @(x)(sin(x));
%F = @(x)(exp(x));
%F = @(x)(1./(1+x.^2));

a = 0;
b = 2*pi;
Q = integral(F,a,b);

for i = 2:10
    x = a:(b-a)/(i-1):b;
    w = es2(x);
    P_pert = (F(x)+0.001)*w';
    P = F(x)*w';
    hold on
    plot(i,Q-P,'o',i,Q-P_pert,'x');
end