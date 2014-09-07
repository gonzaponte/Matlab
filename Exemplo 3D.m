x=[-1:0.03:1];y=x;[x,y]=meshgrid(x,y);
z=(sin(x.^(x.*y))).*sqrt(y./x);
surfc(x,y,z)
xlabel('x');ylabel('y');zlabel('z')
view(20,35)
grid off