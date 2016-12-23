function[] = es15()
clear
clc
a = 0;
b = 1;
n = 10;
sceltaNodi = input('Per utilizzare NODI UNIFORMI digitare 0, per NODI DI CHEBYSHEV digitare 1: ');
if sceltaNodi==0
    nodi = nodiUniformi(n,a,b);
elseif  sceltaNodi == 1
    nodi = nodiChebyshev(n,a,b);
else
    nodi = inf + (b-a)*rand(1,n);
end
% Parametrizzazione uniforme
t_i = nodiUniformi(n,a,b);
L_x = zeros(1,length(nodi));
L_y = zeros(1,length(nodi));
for i=1:length(nodi)
    L = lumacaPascal(nodi(i),1,1.5);
    L_x(i) = L(1);
    L_y(i) = L(2);
end
% Calcolo Polinomio Approssimante
x = a:0.01:b;
B_x = zeros(1,length(x));
B_y = zeros(1,length(x));
for j=1:length(x)
        B_x(j) = polLagrange(L_x,t_i,x(j));
        B_y(j) = polLagrange(L_y,t_i,x(j));
end

plot(L_x,L_y,'or',B_x,B_y);