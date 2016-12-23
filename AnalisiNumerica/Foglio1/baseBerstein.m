function[be] = berstein(n,x,j)
    be = coeffBinomiale(n,j)*x^j*(1-x)^(n-j);
end