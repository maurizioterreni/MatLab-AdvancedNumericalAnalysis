function[x,p] = es9(f,x_input,n,m)

x = x_input(1):0.01:x_input(m);

[a,b] = calcola_coeff(f,x_input,n);
if(mod(m,2) == 0)%pari
    p = calcola_pol_pari(a,b,f,x);
else%dispari
    p = calcola_pol_disp(a,b,f,x);
end

%plot(x_input,f,'o',x,p);