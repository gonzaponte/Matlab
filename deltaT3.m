delta1T3=[];a1=length(delta1T3);delta2T3=[];a2=length(delta2T3);delta3T3=[];a3=length(delta3T3);delta4T3=[];a4=length(delta4T3);delta5T3=[];a5=length(delta5T3);
for k=2:45
    delta1T3(a1+1)=t1(3,k)-t1(3,(k-1));a1=length(delta1T3);
    delta2T3(a2+1)=t2(3,k)-t2(3,(k-1));a2=length(delta2T3);
    delta3T3(a3+1)=t3(3,k)-t3(3,(k-1));a3=length(delta3T3);
    delta4T3(a4+1)=t4(3,k)-t4(3,(k-1));a4=length(delta4T3);
    delta5T3(a5+1)=t5(3,k)-t5(3,(k-1));a5=length(delta5T3);
end
delta1T3=delta1T3/30
delta2T3=delta2T3/30
delta3T3=delta3T3/30
delta4T3=delta4T3/30
delta5T3=delta5T3/30
E31=7*cp*delta1T3
E32=7*cp*delta2T3
E33=7*cp*delta3T3
E34=7*cp*delta4T3
E35=7*cp*delta5T3
nld1=E31/E1(1)
nld2=E32/E1(2)
nld3=E33/E1(3)
nld4=E34/E1(4)
nld5=E35/E1(5)
nad1=E31/E2(1)