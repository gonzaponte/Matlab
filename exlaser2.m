%Limpo todo

clear;clc
close

%Defino características do programa

r=[0.1;0];
R=-1e2;
a0=2;
a1=3;
d=-1.01*R;
v=3e8;

%Defino os espellos

%m11=[0 0];
%m12=[-1 1];
%h=1;
%g=d;
%p1(1)=0;
%p2(1)=0;
%j(1)=g;
%
%while i<=1.5
%    g=g-0.0001;
%    i=sqrt(d^2-g^2);
%    h=h+1;
%    p1(h)=i;
%    p2(h)=-i;
%    j(h)=g;
%end

%Defino a matriz de traslacións, de reflexión nos espellos plano e cóncavo.

T=[1 d;0 1];
Rp=[1 0;0 1];
Rc=[1 0;2/R 1];


tempo=0;
t=0;
dt=d/v;
pos=0;
M=r;
i=1;

while tempo==0
    if pos==0
        if abs(r(1))<(a0/2);
            i=i+1;
            r=T*Rp*r;
            pos=1;
            t=t+dt;
            M(:,i)=r;
        else abs(r(1))>(a0/2);
            tempo=t;
            break
        end
    else pos==1;
        if abs(r(1))<(a1/2);
            i=i+1;
            r=T*Rc*r;
            pos=0;
            t=t+dt;
            M(:,i)=r;
        else abs(r(1))>(a1/2);
            tempo=t;
            break
        end
    end
end
hold on
subplot(211);plot(M(1,:),'-.y')
subplot(212);plot(M(2,:),'-.m')
hold off
fprintf('\n\nO tempo que se mantén na cavidade é: %g\n\n',tempo)






