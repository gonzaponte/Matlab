for k=1:length(r)
    a=regretabla(3)-r(k);aa(k,:)=regretabla;aa(k,3)=a;
    b=roots(aa(k,:));
    c=b(2);
    d(k)=c;
end
Temperaturas=d
clear a b c d k