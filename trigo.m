x=[-1:0.05:1];y=x;[x,y]=meshgrid(x,y);z=sin(x).*sin(y.*(pi./x));
surfc(x,y,z)
xlabel('x');ylabel('y');zlabel('z')
view(5,40)
grid off
