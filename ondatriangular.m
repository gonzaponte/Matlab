x=[-0.5/5020:10^(-8):0.5/5020];h=[];
for k=1:10;
    h(k,:)=(4*8/((pi*(2*k-1))^2))*cos((2*k-1)*2*pi*5020*x);
end
hold on
for k=1:length(h(:,1));
    plot(x,2+h(k,:))
    plot(x,2+sum(h),'k')
end
