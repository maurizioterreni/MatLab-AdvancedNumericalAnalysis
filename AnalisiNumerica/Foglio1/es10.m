function[] = es10()
clear
clc
nodi=[1,2,3,4,5,6,7,8,9,10];
f=[0,1,3,5,6,8,7.5,6,4,8];
g=[0,3,5,5,6,7,-1,-2,-1,2];
j=1;
for i=0:0.1:10
    x(j)=i;
    P(j) = polHermite(f,g,nodi,x(j));%Da rivedere!
    j=j+1;
end
plot(nodi,f,'or',x,P);