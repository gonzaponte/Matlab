clear;clc
close

p=1e4;
dt=4e-10;
rango=1e-5;
R=0.9;
xmax=3.5;
ymax=0.1;

for i=0:10
    plot(0,1-i/10,'or'),axis([-1 1 -1 1]),whitebg('k');
    inicio(i+1)=getframe;
end
movie(inicio);
pause
close

x=zeros(1,p);
y=x;
z=y;

vx=rango*rand(1,p)+(-1).^round(rand(1,p));
vy=(-1).^round(rand(1,p)).*sqrt((rango+1)^2-vx.^2);

%hold on
%for i=1:p
    %quiver(0,0,vx(i),vy(i)),axis([-1 1 -1 1]);
%end
%pause
close

vx=3e8*vx;
vy=3e8*vy;

m=[-ymax,ymax];
o=[1,1];
s=[-1,1];

for j=0:1e6
    x=x+vx*dt;
    y=y+vy*dt;
    for i=1:p
        if (abs(y(i))>=ymax)|(x(i)>xmax);
            x(i)=0;
            y(i)=0;
            vx(i)=rango*rand+(-1)^round(rand);
            vy(i)=(-1)^round(rand)*sqrt((rango+1)^2-vx(i)^2);
            vx(i)=(3e8)*vx(i);vy(i)=(3e8)*vy(i);
            z(i)=0;
        elseif (abs(x(i))>=1)&(z(i)==0);
            l=rand;
            if (l<R)|(x(i)<0);
                x(i)=2*sign(x(i))-x(i);
                vx(i)=-vx(i);
            else (l>R)&(x(i)>0);
                z(i)=1;
            end
        end
    end
    plot(x,y,'oy',-o,m,'w',o,m,'w',s,o*ymax,'w',s,-o*ymax,'w'),axis([-1 xmax -1 1]);
    f(j+1)=getframe;
    x;
    %pause
end
%movie(f,1)
    
