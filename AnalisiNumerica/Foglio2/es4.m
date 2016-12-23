function [Hu] = es4(x)

I = eye(length(x));
alpha = 2/(x'*x);

Hu = I - (alpha * (x*x'));

%display(Hu);
%display(Hu'*Hu);

end