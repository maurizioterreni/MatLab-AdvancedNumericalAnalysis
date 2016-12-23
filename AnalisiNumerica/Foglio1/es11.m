function[] = es11()
clear
clc
n = 10;
a = 0;
b = 10;

i = a:0.01:b;
x = zeros(1,length(i));
for k=1:length(i)
    x(k)=i(k);
end
B = zeros(1,length(x));
for j=0:n
    for l=1:length(x)
        B(l) = baseBerstein(n,(a-x(l))/(a-b),j);
    end
    plot(x,B);
    hold on
    B = zeros(1,size(x,2));
end