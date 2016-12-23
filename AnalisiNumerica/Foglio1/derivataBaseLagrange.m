function [l1] = derivataBaseLagrange(i, x, nodi)
    n = length(nodi);
    k = 1;
    for j = 1:n
        if(j~=i)
            k = k * (nodi(1, i)-nodi(1, j));
        end
    end
    l1 = 0;
    for l = 1:n
        if(l~=i)
            p = 1;
            for j = 1:n
                if(j~=l && j~=i)
                    p = p * (x-nodi(1, j));
                end
            end
            l1 = l1 + p;
        end
    end
    l1 = (1/k) * l1;
end