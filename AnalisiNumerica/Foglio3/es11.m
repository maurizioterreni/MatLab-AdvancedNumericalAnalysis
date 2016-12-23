function [] = es11()
clear
clc
% ex11 -> regola dei trapezi per sin(x) dati n nodi in a,b
% ex12 -> regola di S-C per xe^-x dati 2n nodi in a,b

f = @(x)sin(x);
%f = @(x)x.*exp(-x);
a = 1;
b = 10;

n = 20;

nodes = nodiUniformi(n, a, b);
v = zeros(1,length(nodes));
int = zeros(1,length(nodes));
for i = 1:length(nodes)-1
    v(i+1) = es9(f, nodes(i), nodes(i+1), 2);
    
    int(i+1) = integral(f, nodes(i), nodes(i+1));
end

v(1) = v(2);
int(1) = int(2);

hold on
plot(nodes, v, nodes, int);

for i = 1:length(nodes)
    plot([nodes(i), nodes(i)], get(gca,'ylim'), '--black')
end
