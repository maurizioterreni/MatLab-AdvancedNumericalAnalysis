function[]=es13()
clear
clc
% ex13 -> regola dei trapezi dati n nodi e x in [0, n]
% ex14 -> regola di S-C per dati 2n nodi e x in [0, n]

f = @(x)sin(x);
%f = @(x)x.*exp(-x);
a = 1;
b = 10;

for j = 2:20
    clf
    hold on
    
    x = a:0.01:b;
    plot(x, f(x));
    
    nodes = nodiUniformi(j, a, b);
    v = zeros(1,length(nodes));
    int = zeros(1,length(nodes));
    for i = 1:length(nodes)-1
        int(i+1) = integral(f, nodes(i), nodes(i+1));
        v(i+1) = es9(f, nodes(i), nodes(i+1), 2);
    end
    
    v(1) = v(2);
    int(1) = int(2);
    
    for i = 1:length(nodes)
        plot([nodes(i), nodes(i)], get(gca,'ylim'), '--black')
    end

    plot(nodes, v, nodes, int);
    title( strcat('n = ', num2str(j)) );
    
end

