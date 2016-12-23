function [Q,R] = es6(A)
    n = size(A,2);
    m = size(A,1);
    R = A;
    Q = eye(m);
    for k = 1 : n
        x = A(k:m,k);
        Hz = es5(x);
        Hk = eye(m);
        Hk(k:m,m) = Hz;
       %  display(Hz);
       % display(Hk);
        R = Hk * R;
        Q = Q * Hk;
    end  
end