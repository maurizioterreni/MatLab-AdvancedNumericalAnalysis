function[w] = es5(nodi)

n = length(nodi);
a = nodi(1);
b = nodi(n);
f = zeros(1,n);
for i = 1 : n
    f(i) = (power(b,i) - power(a,i))/i;
end

A = fliplr(vander(nodi));
w = A\f';


%disp(w);