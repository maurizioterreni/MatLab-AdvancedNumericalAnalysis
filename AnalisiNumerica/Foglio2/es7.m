function [ xmin, valmin ] = es7( A,b )
% Scrivere un programma Matlab di tipo function che data in ingresso
% una matrice a rango massimo A (di dim m ? n) ed un vettore b (di
% dim n) controlli il rango di A e quindi risolva il problema lineare ai
% minimi quadrati min |Ax + b|^2 utilizzando il metodo basato sulla
% fattorizzazione QU della matrice A (si veda l?esercizio precedente). 
% Si restituisca il minimo ed il valore minimo;
 
[m,n]=size(A);
if(rank(A)<min(size(A)))
   error('Il rango di A non ? massimo'); 
end
 
[Q,R]=es6(A);
if(size(b,1)<size(b,2))
   b=b'; 
end
c=Q'*b;
U=R;
if(m>n)
    c = c(1:n);
    U = R(1:n,:);
else
    U = R(:,1:m);
end
 
xmin = U\c;
valmin = norm(A*xmin - b);
 
end