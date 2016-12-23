function [] = es6()
n = 20;
hold on
for i=2:n
    nodi = 0:1:i;
    w = es5(nodi);
    plot(nodi,w);
end
%Al cresce di n il condizionamento della matrice di vandermont peggiora 