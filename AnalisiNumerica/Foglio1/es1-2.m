%Scrivere un programma di tipo function che assegnato un vettore di
%n + 1 nodi (numerati da 1 a n+1) costruisce e disegna una specifica
%base di Lagrange



function[] = es1-2()
clc
clear
nodi = 1:10;
j = 5;
x = 1:0.01:10;

l = baseLagrange(nodi,j,x);

ynodi=zeros(1,length(nodi));
ynodi(j)=1;

sum(l);
plot(x,l,nodi,ynodi,'mo');