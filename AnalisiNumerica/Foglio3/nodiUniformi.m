function [ nodi ] = nodiUniformi( numeroNodi, inf, sup )
    passo = (sup-inf)/(numeroNodi-1);
    nodi = zeros(1,numeroNodi);
    j=1;
    for i=inf:passo:sup
        nodi(j) = i;
        j=j+1;
    end
    
end