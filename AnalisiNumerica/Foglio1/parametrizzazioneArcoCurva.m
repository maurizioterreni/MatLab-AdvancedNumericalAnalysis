function [ t_i ] = parametrizzazioneArcoCurva(x,y)
    d = 0;
    for i=2:size(x,2)
        d_i(i) = sqrt((x(i)-x(i-1))^2 + (y(i)-y(i-1))^2);
        d = d+d_i(i);
    end
    t_i(1) = 0;
    for k=2:size(x,2)
        t = 0;
        for j=1:k
            t = t+d_i(j)/d;
        end
        t_i(k) = t;
    end
end