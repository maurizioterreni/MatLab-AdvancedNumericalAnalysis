function [ L ] = polLagrange( f, nodi, x )
    L = 0;
    n = size(nodi,2);
    for j=1:n
        l_j = baseLagrange(nodi, j, x);
        L = L + f(j)*l_j;
    end
end