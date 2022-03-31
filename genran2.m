clc
clear
for i=1:340
    x0=0.5;
    r=0.5+i*0.01;
    %f=@(x)((r*x*(1-x)));
    %f=@(x)(r*sin(x))+r*exp(-x);
    %f=@(x)(r*sin(x))+r*cos(x);
    %f=@(x)r*tanh(x)+r/(1+exp(-x));
    %f=@(x)r*(x-0.5)^2;
    f=@(x)r*exp(-0.5*x)*(sin(x)+cos(x));
    %X=[];
    Xn=[];
    T=[];
    for k=1:101
        T=[T,k];
        %X=[X,x0];
        x1=f(x0);
        Xn=[Xn,x1];
        x0=x1;
    end
    drawnow
    plot(T,abs(Xn/max(Xn)))
    pause(0.01)
end