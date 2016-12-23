function[] = es8()
clc
clear
nodi = [1, 3, 4, 7, 10, 11, 14];
f = zeros(1, 7);

plot(nodi, f, 'or');
hold on
grid on

for j = 1:length(nodi)
    [x, uj, vj] = baseHermite(j, nodi);
    
    plot(x, uj, x, vj);
    hold on
    grid on
    zoom on
end