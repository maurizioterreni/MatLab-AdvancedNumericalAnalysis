function [ B ] = polBerstein( f,x )
    n = size(f,2);
    i = 1;
    for j=0:n-1
        b(i)=baseBerstein(n-1,x,j);
        i = i+1;
    end
    B = 0;
    for i=1:n
        B = B+(f(i)*b(i));
    end
end