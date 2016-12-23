function [l] = baseLagrange(nodi,j,x)
n = length(nodi);

l = ones(1,length(x));

for i = 1 : n
    if(i~=j)
        l = l.*(x-nodi(i))/(nodi(j)-nodi(i));
    end
end