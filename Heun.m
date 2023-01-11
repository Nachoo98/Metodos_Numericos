function [t,y] =Heun(f,t0,tf,y0,h) 

M=(tf-t0)/h;
t=t0:h:tf;
y(1)=y0;

for k=1:M
	f1=f(t(k),y(k));
	f2=f(t(k)+h,y(k)+h*f1);
	y(k+1)=y(k)+h*(f1+f2)/2;
end
end