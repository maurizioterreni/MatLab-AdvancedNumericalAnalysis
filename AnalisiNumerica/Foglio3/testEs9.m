function [] = testEs9()
clc
clear
f = @(x)(1./(1+x.^2));
a = -5;
b = 5;
err = zeros(1,4);
int = integral(f,a,b);
for i=2:5
    r = es9(f,a,b,i);
    %display(integral(f,a,b));
    %display(r);
    err(i-1) = abs(int-r);
    disp(r);
end
display(err);
plot(2:5,err);