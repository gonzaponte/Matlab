%-- 11/24/10  6:54 PM --%
ans=input(' Pulsa 1 para liñas e puntos, 2 para so puntos e 3 para so liñas: ');
if ans==1;
    hold on
    plot(v1,P1,'k*',v1,R*T(1)./(v1-ab(1,2))-ab(1,1)./(v1.^2),'k')    
    plot(v2,P2,'y*',v2,R*T(2)./(v2-ab(2,2))-ab(2,1)./(v2.^2),'y')
    plot(v3,P3,'r*',v3,R*T(3)./(v3-ab(3,2))-ab(3,1)./(v3.^2),'r')
    plot(v4,P4,'g*',v4,R*T(4)./(v4-ab(4,2))-ab(4,1)./(v4.^2),'g')
    plot(v5,P5,'c*',v5,R*T(5)./(v5-ab(5,2))-ab(5,1)./(v5.^2),'c')
    plot(v6,P6,'m*',v6,R*T(6)./(v6-ab(6,2))-ab(6,1)./(v6.^2),'m')
    plot(v7,P7,'k*',v7,R*T(7)./(v7-ab(7,2))-ab(7,1)./(v7.^2),'k')
    plot(v8,P8,'y*',v8,R*T(8)./(v8-ab(8,2))-ab(8,1)./(v8.^2),'y')
    xlabel('v (m^3/mol)');ylabel('P (Pa)');title('Axuste non lineal van der Waals');
    hold off
elseif ans==2;
    hold on
    plot(v1,P1,'k*')
    plot(v2,P2,'y*')
    plot(v3,P3,'r*')
    plot(v4,P4,'g*')
    plot(v5,P5,'c*')
    plot(v6,P6,'m*')
    plot(v7,P7,'k*')
    plot(v8,P8,'y*')
    xlabel('v (m^3/mol)');ylabel('P (Pa)');title('Axuste non lineal van der Waals');
    hold off
elseif ans==3;
    hold on
    plot(v1,R*T(1)./(v1-ab(1,2))-ab(1,1)./(v1.^2),'k')
    plot(v2,R*T(2)./(v2-ab(2,2))-ab(2,1)./(v2.^2),'y')
    plot(v3,R*T(3)./(v3-ab(3,2))-ab(3,1)./(v3.^2),'r')
    plot(v4,R*T(4)./(v4-ab(4,2))-ab(4,1)./(v4.^2),'g')
    plot(v5,R*T(5)./(v5-ab(5,2))-ab(5,1)./(v5.^2),'c')
    plot(v6,R*T(6)./(v6-ab(6,2))-ab(6,1)./(v6.^2),'m')
    plot(v7,R*T(7)./(v7-ab(7,2))-ab(7,1)./(v7.^2),'k')
    plot(v8,R*T(8)./(v8-ab(8,2))-ab(8,1)./(v8.^2),'y')
    xlabel('v (m^3/mol)');ylabel('P (Pa)');title('Axuste non lineal van der Waals');
    hold off
end