function[] = es3()

clear
clc
F_1 = @(x)(sin(x) * cos(4*x));
nodi = 0:10;
f = zeros(1,length(nodi));
for i = 0 : 10
    f(i+1) = F_1(i);
end
x = 0:0.01:10;
n = length(x);
L = zeros(1,n);
for i=1:n
    L(i) = polLagrange(f,nodi,x(i));
end
plot(nodi,f,'or',x,L);
grid on
axis ([0,10,-12,12]);