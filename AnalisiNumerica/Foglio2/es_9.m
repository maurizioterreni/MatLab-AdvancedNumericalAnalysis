function [ Y ] = es_9( )
% Scrivere un programma Matlab di tipo function che dati in ingresso i
% vettori x = (x1,.., xm) e f = (f1,.., fm) costruisce e disegna 
% il polinomio trigonomatrico di migliore approssimazione ai minimi quadrati
% di grado 2n + 1 <= m. Si testi il programma con dati estratti uniformemente
% da x^2 + x - 10, cos(2x);
 

clc
clear
%F_1 = @(x)(x^2-x-10);
F_1 = @(x)(cos(2 * x));
%F_1 = @(x)(sin(x) * sin(x));
%F_1 = @(x)(x^2);
%F_1 = @(x)(tan(x));
%F_1 = @(x)(exp(x));

n = 6;
%m = 2*n + 1;
grado = 2*n+1;

x = zeros(1,grado);
f = zeros(1,grado);
for i = 1 : grado
    x(i) = ((i-1)*2*pi)/grado;
    f(i) = F_1(x(i));
end
 m=length(x);
A=ones(m,grado);
% A(:,i)=[1 cos(xi) sin(xi) cos(2*xi) sin(2*xi) ... ]
 
for i=1:m
   %A(i,1)=1;
   k=1;
   for j=1:n
       k=k+1;
       A(i,k)=cos(j*x(i));
       k=k+1;
       A(i,k)=sin(j*x(i));
   end    
end
 
%A = A(:,1:grado+1);
[xmin, ~]=es7(A,f);
 
X=x(1):0.01:x(m);
Y=zeros(1,length(X));
 
%per costruire Y(i) devo fare:
%Y(i)=polinomio calcolato in X(i)=(a0/2+) X(i)+ ...
%fli a0..an sono proprio i valori del minimo xmin,
for i=1:length(Y)
    Y(i)=xmin(1);%? gi? a0/2
    k=1;
   for j=1:n
      k=k+1;
      Y(i)=Y(i)+ xmin(k)*cos(j*X(i));
      k=k+1;
      Y(i)=Y(i)+ xmin(k)*sin(j*X(i));
   end
end
figure;
plot(X, Y);
hold on;
plot(x,f,'*');
 
%per test:
% 0:0.2:5;;
% f = x.^2+x-10;
% 
%X=-1:0.2:1;
%Y=cos(2*X*pi);
% 
% es9(x,f,7);
% es9(X,Y,4);
end