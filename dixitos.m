function[v]=dixitos(z)
[x,y]=separar(z);
r=[x,y*10^8];
for p=1:2
    g=0;
    k=0;
    s=r(p);
    if s<1
        g=2;
        k=k+1;
    end
    while g==0;
        if (s>(10^k))&(s<(10^(k+1)))
            g=1;
        elseif s==(10^k);
            s=s;
            g=3;
        end
        k=k+1;
    end
    for i=1:k
        y=s/10^(k-i);
        [q(p,i),w]=separar(y);
        s=s-q(p,i)*10^(k-i);
    end
end
if y~=0    
    v=[q(1,:),NaN,q(2,:)];
    h=0;
    l=length(v);
    while h==0
        if v(l)==0
            v(l)=[];
        else
            h=1;
        end
        l=l-1;
    end
else
    v=q(1,:);
end

