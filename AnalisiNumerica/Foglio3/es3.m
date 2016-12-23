function[] = es3()
hold on
for i = 2 : 20
    x = 0:1:i;
    w = es2(x);
    plot(x,w,'o');
end