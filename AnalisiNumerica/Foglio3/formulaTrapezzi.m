function[I]= formulaTrapezzi(f,m,x,a,b)

I = f(x(1)) + f(x(m+1));

for j=1:m
    I = I+(2*f(x(j)));
end


I = I + ((b-a)/(2*m));