for k=1:(length(T31)-1)
    b=length(deltaT1);
    a=T31(k+1)-T31(k);
    deltaT1(b+1)=a;
end
deltaT1=deltaT1/20
for k=1:(length(T32)-1)
    b=length(deltaT2);
    a=T32(k+1)-T32(k);
    deltaT2(b+1)=a;
end
deltaT2=deltaT2/20
for k=1:(length(T33)-1)
    b=length(deltaT3);
    a=T33(k+1)-T33(k);
    deltaT3(b+1)=a;
end
deltaT3=deltaT3/20
for k=1:(length(T34)-1)
    b=length(deltaT4);
    a=T34(k+1)-T34(k);
    deltaT4(b+1)=a;
end
deltaT4=deltaT4/20
for k=1:(length(T35)-1)
    b=length(deltaT5);
    a=T35(k+1)-T35(k);
    deltaT5(b+1)=a;
end
deltaT5=deltaT5/20