function[] = es7()


F = @(x)(sin(x));
%F = @(x)(exp(x));
%F = @(x)(1./(1+x.^2));

a = 0;
b = 2*pi;
Q = integral(F,a,b);

for i = 2:10
    x = a:(b-a)/(i-1):b;
    w = es2(x);
    P = F(x)*w';
   
    hold on
    plot(i,Q-P,'o');
end