function [c] = coeffBinomiale(n,i)
if(i == 0 || i == n)
    c = 1;
else
    k = factorial(n);
    j = factorial(i);
    l = factorial(n-i);

    c = k / (j*l);
end