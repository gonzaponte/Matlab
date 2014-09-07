x=[-0.5/5020:10^(-8):0.5/5020];h=[];
for k=1:1000;
    h(k,:)=4*8/pi/(2*k-1)*sin((2*k-1)*2*pi*5020*x);
end
hold on
for k=1:length(h(:,1));
    plot(x,h(k,:))
    plot(x,sum(h),'k')
end
