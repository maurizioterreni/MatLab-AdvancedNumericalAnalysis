clc
%nodi = input('Inserire vettore dei nodi: ');
%n = input('Inserire grado n: ');
%scelta_f = input('Inserire 1 per scegliere f_1: ');

f_2 =  @(x)(cos(2 * x));
m = 9;
n = 4;
for k=1:m
    nodi(k) = ((k-1)*2*pi)/m;
    f(k) = f_2(nodi(k));
end    
j = 1;
for i=0:0.1:10
    x(j) = i;
    p_n(j) = coeffMigliorApproxTri(nodi,n,x(j));
    j = j+1;
end
plot(nodi,f,'or',x,p_n);