function [] = es13()
clc
clear
nodi = 1:5;
i = 1;

BS = spline(nodi, 3,i);

hold on
x = nodi(1):0.01:nodi(length(nodi));
plot(nodi,BS(nodi),'or',x,BS);