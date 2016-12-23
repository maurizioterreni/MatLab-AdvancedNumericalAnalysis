function [a, uj, vj] = baseHermite(j, nodi)
    k = 1;
    a = zeros();
    uj = zeros();
    vj = zeros();
    for x = min(nodi):0.05:max(nodi)
        a(1, k) = x;
        uj(1, k) = (1-2*derivataBaseLagrange(j, nodi(1, j), nodi)*(x-nodi(1, j)))*(baseLagrange(nodi,j,x)^2);
        vj(1, k) = (x-nodi(1, j))*(baseLagrange(nodi,j,x)^2);
        k = k + 1;
    end
end