function[] = es7()
clear
clc
a = 0;
b = 1;

for n=4:2:12
    nodi=nodiChebyshev(n,a,b);
    i = a:0.01:b;
    x = zeros(1,length(i));
    w = zeros(1,length(i));
    for j=1:length(i)
        x(j)=i(j);
        w(j) = w_n1(nodi,x(j));
    end
    plot(x,w);
    hold on
end