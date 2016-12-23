function[] = es12()
clc
clear
F_1 = @(x)(sin(x) * cos(4*x));
a = -1;
b = 1;
n = 10;
nodi = nodiUniformi(n,a,b);
f = zeros(1,length(nodi));
for i = 1 : n
    f(i) = F_1(nodi(i));
end
j=a:0.01:b;
x = zeros(1,length(j));
B = zeros(1,length(j));
for k=1:length(j)
    x(k) = j(k);
    B(k) = polBerstein(f,(a-x(k))/(a-b));
end
plot(nodi,f,'or',x,B);