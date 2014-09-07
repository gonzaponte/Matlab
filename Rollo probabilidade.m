for k=1:100
    a=rand;b=1/3;c=rand;
    if a<b;
        a=1;
    else a>=b&a<(2*b);
        a=2;
    else a>=(2*b);
        a=3;
    end
    if c<b;
        c=1;
    else c>=b&c<(2*b);
        c=2;
    else c>=(2*b);
        c=3;
    end
    o=1;
    if c==o;
        break        
    end
   
    