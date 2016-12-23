function [] = es3()
A = [1,2;3,4; 5,6];
b = [3;4;5];

%x = ((A').*b)\((A')*A);
x = ((A')*b)\((A')*A);
display(x);
%display(rank(A));
display(norm((A*x')-b'));