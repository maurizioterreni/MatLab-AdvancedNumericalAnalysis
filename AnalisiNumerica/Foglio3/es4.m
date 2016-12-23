function[] = es4()
hold on
for i = 2 : 20
    x = chebichev(i,2,20);
    w = es2(x);
    plot(x,w,'o');
end