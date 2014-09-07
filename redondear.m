function[z]=redondear(t)
[x,y]=separar(t);
s=signo(y);
[x,y]=vabs([x,y]);
if y>=0.5
    z=x+1;
else y<0.5
    z=x;
end
z=s*x;