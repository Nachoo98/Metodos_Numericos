function [t,y] =Euler(f,t0,tf,y0,h) 

M=(tf-t0)/h;
t=t0:h:tf;
y(1)=y0;

for k=1:M
	f1=f(t(k),y(k));
	y(k+1)=y(k)+h*f1;
end
end