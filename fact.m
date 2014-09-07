function[y]=fact(x)
y=x;
if x>0;
    while x>1
        y=y*(x-1);
        x=x-1;
    end
    if round(x)~=x;
        z=quad(@gamma,0,inf);
        y=y*z;
    end
else x==0;
    y=1;
end