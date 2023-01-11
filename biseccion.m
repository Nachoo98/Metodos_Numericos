function [raiz] =biseccion(a,b,f,N)
if f(a)*f(b)>0
    return
end
for i=1:N
c=(a+b)/2;

	if f(c)*f(a)<0
	b=c;
    elseif f(c)*f(b)<0
    a=c;
        else
    raiz=c;
    return
end
raiz=c;
end
end