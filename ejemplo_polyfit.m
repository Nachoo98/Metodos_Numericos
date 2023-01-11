x=[0 1 -1];
y=[0 1 1];
c=polyfit(x,y,2);
xp=-1:0.01:1;
yp=polyval(c,xp);
plot(x,y,'*r')
hold on
plot(xp,yp)
