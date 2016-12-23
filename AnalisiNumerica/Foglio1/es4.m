function [] = es4()
clc
clear
F_1 = @(x)(sin(x) * cos(4*x));
a = 0;
b = 10;
n = 10;
nodi = nodiUniformi(n, a, b);
f = zeros(1,n);
for i = 1 : n
    f(i) = F_1(nodi(i));
end
x = a:0.01:b;
L = zeros(1,length(x));
for h=1:length(x)
   L(h) = polLagrange( f, nodi, x(h) );
end
plot(nodi,f,'or',x,L);
hold on
grid on
zoom on