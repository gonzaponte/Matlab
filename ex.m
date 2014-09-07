x=[-pi:10^(-3):pi];
for k=1:1000;
    an(k,:)=2*sinh(pi)/pi*(-1)^k/(1+k^2)*cos(k*x);
    bn(k,:)=2*sinh(pi)/pi*k*(-1)^(k+1)/(1+k^2)*sin(k*x);
end
hold on
for k=1:length(an(:,1));
    plot(x,sinh(pi)/pi+an(k,:),'c',x,sinh(pi)/pi+bn(k,:),'y')
end
plot(x,sinh(pi)/pi+(sum(an)+sum(bn)),'r')