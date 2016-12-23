function [ BS ] = spline( y,p,i)
yP = y(1):0.01:y(length(y));
BS = zeros(1,length(yP));
 
if(p==0)
   for j=1:length(yP)
        if(yP(j)>=y(i) && yP(j)<y(i+1))
            BS(j)=1;
        end
   end
else
    BSi=spline(y,p-1,i);
    BSi1=spline(y,p-1,i+1);
    for j=1:length(BS)
       BS(j)=((yP(j)-y(i))*BSi(j))/(y(i+p)-y(i)) + (y(i+p+1)-yP(j))*BSi1(j)/(y(i+p+1)-y(i+1));
    end
end
 
end