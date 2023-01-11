function [t,y] =ED_Runge_Kutta_Orden4(f,t0,tf,y0,h) 

M=(tf-t0)/h;
t=t0:h:tf;
y(1)=y0;

for k=1:M
	f1=f(t(k),y(k));
	f2=f(t(k)+h/2,y(k)+h*f1/2);
	f3=f(t(k)+h/2,y(k)+h*f2/2);
	f4=f(t(k)+h,y(k)+h*f3);
	y(k+1)=y(k)+h*(f1+2*f2+2*f3+f4)/6;
end
end