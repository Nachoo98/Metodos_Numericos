 x=[0 1 2 4 5 10];
 y=[1.80 2.07 1.53 1.98 2.01 1.65];
 xx=0:0.1:10;
 yi=interp1(x,y,xx);
 plot(xx,yi,'b')