 x=[0 1 2 4 5 10];
 y=[1.80 2.07 1.53 1.98 2.01 1.65];
 
 c=polyfit(x,y,5);
 
xp=0:0.1:10;
ys=spline(x,y,xp);

plot(x,y,'*r')
grid on
hold on
plot(xp,ys,'b') %Determino forma de la pared metodo 1 Spline

figure(2)
yp=polyval(c,xp);
plot(xp,yp,'g') %Determino forma de la pared metodo 2 polyfit y polyval (falla porque no estan equiespaciados entre 5 y 10)

figure(3)
plot(xp,abs(ys-yp), 'm');


area=trapz(xp,ys); %calculo el area con el metodo de trapecios habiendo usado una spline