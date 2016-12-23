function [] = es8()

clc
clear

x_input = 1:10;
b = zeros(1,length(x_input));
for i = 1:length(x_input)
    b(i) = 7*sin(i);
end
A = fliplr(vander(x_input));

a = A\b';

j = 1;
x = 0:0.01:10;
p = zeros(1,length(x));
for i=0:0.01:10
    p(j) = polMiglioreApprox(x(j),a);
    j = j+1;
end
plot(x_input,b,'or',x,p);
axis([0 6 -10 10]);

grid on