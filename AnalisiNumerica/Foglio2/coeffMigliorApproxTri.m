function [f_n] = coeffMigliorApproxTri( nodi,n,x)
    f_2 =  @(x)(cos(2 * x));
    a_sum = 0;
    b_sum = 0;
    f = 0;
    m = size(nodi,2);
    for k=1:n
        for i=1:m
            a_sum = a_sum + f_2(cos(k*nodi(i)));
            b_sum = b_sum + f_2(sin(k*nodi(i)));
            if k==1
                f = f + f_2(nodi(i));
            end
        end
        a(k) = (2/m)*a_sum;
        b(k) = (2/m)*b_sum;
        a_sum = 0;
        b_sum = 0;
    end
    primoTermine = 0;
    secondoTermine = 0;
    for h=1:n
        primoTermine = primoTermine + a(h)*cos(h*x);
        secondoTermine = secondoTermine + a(h)*sin(h*x);
    end
    f = (1/m)*f;
    f_n = f + primoTermine + secondoTermine;
end