
A=[0:0.1:5];
y0=0;
[t,y]=ode45( @(t,y) 2*t,A,y0); %Vector que representa la funcion solucion%
plot(A,y)