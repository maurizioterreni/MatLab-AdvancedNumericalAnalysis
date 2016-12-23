
function [ p ] = polMiglioreApprox( x, a )
    n = length(a);
    p = 0;
    for i=1:n
        p = p + a(i)*(x^(i-1));
    end
end