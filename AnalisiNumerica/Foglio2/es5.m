function[H] = es5(x)
    e1 = eye(length(x),1);
    alpha = norm(x);
    u = x + (alpha * e1);
    Hu = es4(u);
    H = Hu * x;
end