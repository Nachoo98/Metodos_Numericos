%Este código calcula por Euler (orden 1), Euler Modificado (orden 2) y por RK (orden 4)%

%t0=input('tiempo inicial t_0= ')
%T=input('tiempo final T= ')
%y0=input('dato inicial y_0= ')
%N=input('cantidad de pasos N= ')

t0=pi;
T=2*pi;
y0=0.1;
N=10;
h=(T-t0)/N;
t=t0:h:T;
%f=@(t,x)-2*t*x;
%f=@(t,x)x*(2-x);
%f=@(t,x)x-2*e.^(1-x.^2)+t;
%f=@(t,x)t-x+2*e.^(1-x.^3);
%f=@(t,x)((1./)(x.^2))-2*e.^(1-x.^3);
f=@(t,x)exp(sin(t+x))-1;

%Calculo por Euler

a=y0;
y=y0;
for k=1:N
   b=a+h*f(t(k),a);
   y=[y,b];
   a=b;
end
plot(t,y);
hold on

% Euler Modificado

a=y0;
ym=y0;
for k=1:N
    F1=f(t(k),a);
    F2=f(t(k)+h/2,a+h/2*F1);
    b=a+h*F2;
    ym=[ym,b];
    a=b;
end
plot (t,ym,'r');
hold on
%RK4

a=y0;
rk4=y0;
for k=1:N
    F1=f(t(k),a);
    F2=f(t(k)+h/2,a+h/2*F1);
    F3=f(t(k)+h/2,a+h/2*F2);
    F4=f(t(k)+h,a+h*F3);
    b=a+h/6*(F1+2*F2+2*F3+F4);
    rk4=[rk4,b];
    a=b;
end
plot (t,rk4,'m');


figure(2)
plot(t,abs(y-rk4))
hold on
plot(t,abs(ym-rk4),'r')
figure(2)







