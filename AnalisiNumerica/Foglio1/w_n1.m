function [ w ] = w_n1( nodi,x )
    w = 1;
    n = size(nodi,2);
    for i=1:n
        w = w*(x-nodi(i));
    end
end