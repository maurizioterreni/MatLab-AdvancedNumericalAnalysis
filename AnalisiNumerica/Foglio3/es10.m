function [r] = es10(f,a,b,n)
%Aggiungere titolo ai grafici

if(n == 1)
    h = (b-a);
    r = (2*h*f(h));
    
end
if(n == 2)
    h = (b-a)/3;
    r = ((3/2)*h)*(f(h) + 4*f(a+(2*h)));
end
if(n == 3)
    h = (b-a)/4;
    r = ((4/3)*h)*(2*f(h) + f(a+(2*h)) + 2*f(a+(3*h)));
end
