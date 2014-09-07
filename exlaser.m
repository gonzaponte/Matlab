%Limpo todo

clear;clc
close

%Defino características do programa
x=0;
y=0.1;
vx=3e1;
vy=0;
R=-1e2;

%Represento cun vector cara onde vai a partícula

quiver(x,y,vx,vy,'m'),axis([-10 110 -4 4]),whitebg('k')
pause
vx=vx*1e7;

%Defino os espellos
m11=[0 0];
m12=[-1 1];
h=1;
d=1.01*R;
g=-d;
p1(1)=0;
p2(1)=0;
j(1)=g;
while i<=1.5
    g=g-0.0001;
    i=sqrt(d^2-g^2);
    h=h+1;
    p1(h)=i;
    p2(h)=-i;
    j(h)=g;
end

%Vou desprazando a partícula en intervalos de 4 ns e paro cando se saia

t=0;
tempo=0;
dt=4e-9;
i=0;
while tempo==0
    i=i+1;
    t=t+dt;
    x=x+vx*dt;
    y=y+vy*dt;
    if (x<0)
        if (abs(y)>1)
            tempo=t;
        else
            x=-x;
            vx=-vx;
        end
    end
    if (x>(-R))
        if (abs(y)>1.5)
            tempo=t;
        else
            x=-2*R-x;
            vy=2*y*vx/R+vy;
            vx=-sqrt(9e16-vy^2);
        end
    end
    plot(x,y,'oy',m11,m12,'w',j,p1,'w',j,p2,'w'),axis([-10 110 -4 4])
    f(i)=getframe;
end
fprintf('\n\nO tempo que se mantén na cavidade é: %g\n\n',tempo)