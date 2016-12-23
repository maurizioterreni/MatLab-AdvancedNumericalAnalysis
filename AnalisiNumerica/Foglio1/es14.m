function [] = es14()
x = 1:10;
for i = 1:10
    f(i) = 1/x(i);
end
x2=[x(1)-1 x x(length(x))+1];
xP=x(1):0.01:x(length(x));
I=zeros(1,length(xP));
m = length(x)-2;
B = zeros(m+2);
BB = zeros(m+2,length(xP));
 
for k=1:m+2
    Bt = spline(x2,1,k);
    B(k,:) = Bt(2:length(x2)-1);
end
for j=1:length(x)
    Bl = spline(x2,1,j);
    BB(j,:) = Bl(101:length(Bl)-100);
end
a = B\f';
 
figure;
for i = 1:m+2
    plot(x(i),f(i),'xr');
    hold on;
end
 
for k = 1:length(xP)
    for p = 1:m+2
        I(k) = I(k)+a(p)*BB(p,k);
    end
     
end
plot(xP,I,'red');
 
end