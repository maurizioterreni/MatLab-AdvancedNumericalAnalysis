function [ nodi ] = nodiChebyshev( numeroNodi,inf,sup )
    nodi = zeros(1,numeroNodi);
    for i=1:numeroNodi
        nodi(i)= inf + ((sup-inf)/2)*cos(((2*i)/(numeroNodi+1))*(pi/2))+(sup-inf)/2;
    end
end