format long
medida=input('introducir 1 para medida directa e 2 para medida indirecta: ');
if medida==1;
    a=input('intriducir o número de termos: ');
    x=[];d=length(x);
    for k=1:a
        c=input('introducir termo: ');
        x(d+1)=c;d=length(x);
    end
    media=(sum(x))/d;fprintf('a media destos valores é: %f',media);disp(' ');
    y=x-media;y=y.^2;e=length(y);
    Sa=sqrt((sum(y))/(e-1));fprintf('a desviación típica (Sa) destos valores é: %f',Sa);disp(' ');
    discd=media-2*Sa;discu=media+2*Sa;z=[];f=length(z);
    for k=1:a
        if (x(k)<discd)|(x(k)>discu);
            z(f+1)=x(k);
        else (x(k)>discd)&(x(k)<discu);
            z(f+1)=inf;f=length(z);
        end
    end
    t=z(z~=(inf));g=length(t);
    u=x(x~=z);h=length(u);
    if g==1;
        fprintf('o valor discordante eliminado é: %f',t);disp(' ');
    elseif g>1;
        fprintf('os valores discordantes eliminados foron: %f',t);disp(' ');
    else g==0;
        fprintf('non houbo valores discordantes');disp(' ');
    end
    l=input('introducir a sensibilidade do aparello de medición: ');
    Sb=l/(sqrt(12));fprintf('a incertidume debido a sensibilidade do medidor (Sb) é: %f',Sb);disp(' ');
    if g~=0;
        novamedia=(sum(u)/h);fprintf('a media sen valores discordantes é: %f',novamedia);disp(' ');
        v=u-novamedia;v=v.^2;m=length(v);%non poño i,j ou k porque poden resultar confusos.
        novaSa=sqrt((sum(v))/(m-1));fprintf('a desviación típica (Sa) sen valores discordantes é: %f',novaSa);disp(' ');
        varianza=(novaSa)^2;fprintf('a varianza (Sa^2) sen valores discordantes é: %f',varianza);disp(' ');
        Samedia=(novaSa/(sqrt(h)));fprintf('a desviación típica da media (Sa(media)) sen valores discordantes é: %f',Samedia);disp(' ');
        Sc=sqrt((Samedia)^2+(Sb)^2);fprintf('a incertidume combinada (Sc) sen valores discordantes é: %f',Sc);disp(' ');
        Ie=2*Sc;fprintf('a incertidume expandida (Ie) sen valores discordantes é: %f',Ie);disp(' ');
        Itrmedia=(Sc)/(novamedia);fi=m-1;
        fprintf('como resultado obtemos: %f,%f,%i',novamedia,Sc,fi);disp(' ');
    else g==0;
        varianza=(Sa)^2;fprintf('a varianza (Sa^2) destos valores é: %f',varianza);disp(' ');
        Samedia=(Sa/(sqrt(d)));fprintf('a desviación típica da media (Sa(media)) destos valores é: %f',Samedia);disp(' ');
        Sc=sqrt((Samedia)^2+(Sb)^2);fprintf('a incertidume combinada (Sc)para estos valores é: %f',Sc);disp(' ');
        Ie=2*Sc;fprintf('a incertidume expandida (Ie) para estos valores é: %f',Ie);disp(' ');
        Itrmedia=(Sc)/(media);fi=e-1;
        fprintf('como resultado obtemos: %f, %f, %i',media,Sc,fi);disp(' ');
    end
    n=input('prema 0 se desexa ponderacion, se non pulse outro número: ');
    if n==0;
        r=[];p=length(r);
        for k=1:a
            o=input('introducir incertidume do termo: ');
            r(p+1)=o;p=length(r);
        end
        s=r./(sqrt(12));
        w=1./s;w=w.^2;fprintf('o peso estadístico destos valores son: %f',w);disp(' ');
        xw=x.*w
        mediaponderada=(sum(xw))/(sum(w));fprintf('a media ponderada destos valores é: %f',mediaponderada);disp(' ');
        Smediaponderada=1./(sqrt(sum(w)));fprintf('a desviación típica da media ponderada destos valores é: %f',Smediaponderada);disp(' ');
    end
else medida==2;
    syms x y z t u v
    a=input('introducir a ecuación a tratar definida nas variables x y z t u ou v: ');
    b=input('introducir o número de variables(2-6): ');
    c=[];d=length(c);
    for k=1:b
        e=input('introducir a incertidume da variable: ');
        c(d+1)=e;d=length(c);
    end
    c=c.^2;
    if b==2;
        derivadax=diff(a,x);dx=derivadax^2;dxs=dx*c(1);
        derivaday=diff(a,y);dy=derivaday^2;dys=dy*c(2);
    elseif b==3;
        derivadax=diff(a,x);dx=derivadax^2;dxs=dx*c(1);
        derivaday=diff(a,y);dy=derivaday^2;dys=dy*c(2);
        derivadaz=diff(a,z);dz=derivadaz^2;dzs=dz*c(3);
    elseif b==4;
        derivadax=diff(a,x);dx=derivadax^2;dxs=dx*c(1);
        derivaday=diff(a,y);dy=derivaday^2;dys=dy*c(2);
        derivadaz=diff(a,z);dz=derivadaz^2;dzs=dz*c(3);
        derivadat=diff(a,t);dt=derivadat^2;dts=dt*c(4);
    elseif b==5;
        derivadax=diff(a,x);dx=derivadax^2;dxs=dx*c(1);
        derivaday=diff(a,y);dy=derivaday^2;dys=dy*c(2);
        derivadaz=diff(a,z);dz=derivadaz^2;dzs=dz*c(3);
        derivadat=diff(a,t);dt=derivadat^2;dts=dt*c(4);
        derivadau=diff(a,u);du=derivadau^2;dus=du*c(5);
    else b==6;
        derivadax=diff(a,x);dx=derivadax^2;dxs=dx*c(1);
        derivaday=diff(a,y);dy=derivaday^2;dys=dy*c(2);
        derivadaz=diff(a,z);dz=derivadaz^2;dzs=dz*c(3);
        derivadat=diff(a,t);dt=derivadat^2;dts=dt*c(4);
        derivadau=diff(a,u);du=derivadau^2;dus=du*c(5);
        derivadav=diff(a,v);dv=derivadav^2;dvs=dv*c(6);
    end
    if b==2;
        Sa=sqrt(dxs+dys)
    elseif b==3;
        Sa=sqrt(dxs+dys+dzs)
    elseif b==4;
        Sa=sqrt(dxs+dys+dzs+dts)
    elseif b==5;
        Sa=sqrt(dxs+dys+dzs+dts+dus)
    else b==6;
        Sa=sqrt(dxs+dys+dzs+dts+dus+dvs)
    end
    if b==2;
        l=input('introducir valor da variable x: ');
        m=input('introducir valor da variable y: ');
    elseif b==3;
        l=input('introducir valor da variable x: ');
        m=input('introducir valor da variable y: ');
        n=input('introducir valor da variable z: ');
    elseif b==4;
        l=input('introducir valor da variable x: ');
        m=input('introducir valor da variable y: ');
        n=input('introducir valor da variable z: ');
        o=input('introducir valor da variable t: ');
    elseif b==5;
        l=input('introducir valor da variable x: ');
        m=input('introducir valor da variable y: ');
        n=input('introducir valor da variable z: ');
        o=input('introducir valor da variable t: ');
        p=input('introducir valor da variable u: ');
    else b==6;
        l=input('introducir valor da variable x: ');
        m=input('introducir valor da variable y: ');
        n=input('introducir valor da variable z: ');
        o=input('introducir valor da variable t: ');
        p=input('introducir valor da variable u: ');
        q=input('introducir valor da variable v: ');
    end
    if b==2;
        Sa=subs(Sa,{x,y},{l,m});exactoSa=double(Sa);fprintf('a incertidume do resultado é %f',exactoSa);disp(' ');
    elseif b==3;
        Sa=subs(Sa,{x,y,z},{l,m,n});exactoSa=double(Sa);fprintf('a incertidume do resultado é %f',exactoSa);disp(' ');
    elseif b==4;
        Sa=subs(Sa,{x,y,z,t},{l,m,n,o});exactoSa=double(Sa);fprintf('a incertidume do resultado é %f',exactoSa);disp(' ');
    elseif b==5;
        Sa=subs(Sa,{x,y,z,t,u},{l,m,n,o,p});exactoSa=double(Sa);fprintf('a incertidume do resultado é %f',exactoSa);disp(' ');
    else b==6;
        Sa=subs(Sa,{x,y,z,t,u,v},{l,m,n,o,p,q});exactoSa=double(Sa);fprintf('a incertidume do resultado é %f',exactoSa);disp(' ');
    end
end