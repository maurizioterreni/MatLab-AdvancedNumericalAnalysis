function [ C ] = lumacaPascal( t,a,b )
    x = (b/2)+a*cos(pi*t)+(b/2)*cos(2*pi*t);
    y = a*sin(pi*t)+(b/2)*sin(2*pi*t);
    C = [x,y];
end