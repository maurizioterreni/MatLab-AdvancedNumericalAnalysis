function [r] = es9(f,a,b,n)
%Aggiungere titolo ai grafici
h = (b-a)/(n-1);
if(n == 2)    
    r = ((f(b) + f(a)) * h)/(2);
    
end
if(n == 3)
    r = (h/3)*(f(a) + 4*f(a+h) + f(b));
end
if(n == 4)
    r = ((3/8)*h)*(f(a) + 3*f(a+h) + 3*f(a+(2*h)) + f(b));
end
if(n == 5)
    r = ((2/45)*h)*(7 * f(a) + 32 * f(a+h) + 12 * f(a+(2+h)) + 32 * f(a+(3+h)) + 7 * f(b));
end


