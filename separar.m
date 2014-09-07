function[x,y]=separar(z)
s=signo(z);
z=vabs(z);
g=0;
k=0;
if z<1;
    x=0;
    g=2;
end
while g==0;
    if (z>(10^k))&(z<(10^(k+1)))
        g=1;
    elseif z==(10^k);
        x=z;
        g=3;
    end
    k=k+1;
end
if g==1;
    if k==1;
        a=0;
        b=5;
    else
        a=10^(k-1);
        b=5*a;
    end
    c=2*b;
    j=0;
    for h=1:k;
        if z>b;
            a=b;
            b=(b+c)/2;
        elseif z<b
            c=b;
            b=b/2;
        else z==b
            j=1;
            x=b;
            break
        end
    end
    if j==0;
        p=[a:c];
        for t=1:length(p)
            if (z>=p(t))&(z<p(t+1))
                x=p(t);
            end
        end
    end
end
z=s*z;
x=s*x;
y=z-x;
fprintf('\nO número %g divídese en: x=%g e y=%g\n\n',z,x,y)