function[w] = es2(nodi)
f = @(x)(sin(x));
n = length(nodi);
y = zeros(1,n);
w = y;
P = 0;
for i=1 : n
    base = @(x)baseLagrange(nodi,i,x);
    w(i) = integral(base,nodi(1),nodi(n));
   % P = P + w(i)*f(nodi(i));
end

%disp(P);
%disp(integral(f,nodi(1),nodi(n)));
 