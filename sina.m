hold on
bb1=sum(P1recta./V1recta)/sum(1./(V1recta.^2));nn1=bb1/(R*T(1));plot(1./V1recta,P1recta,'c*',1./V1recta,bb1./V1recta,'c')
bb2=sum(P2recta./V2recta)/sum(1./(V2recta.^2));nn2=bb2/(R*T(2));plot(1./V2recta,P2recta,'m*',1./V2recta,bb2./V2recta,'m')
bb3=sum(P3recta./V3recta)/sum(1./(V3recta.^2));nn3=bb3/(R*T(3));plot(1./V3recta,P3recta,'k*',1./V3recta,bb3./V3recta,'k')
bb4=sum(P4recta./V4recta)/sum(1./(V4recta.^2));nn4=bb4/(R*T(4));plot(1./V4recta,P4recta,'y*',1./V4recta,bb4./V4recta,'y')
bb5=sum(P5recta./V5recta)/sum(1./(V5recta.^2));nn5=bb5/(R*T(5));plot(1./V5recta,P5recta,'g*',1./V5recta,bb5./V5recta,'g')
bb6=sum(P6recta./V6recta)/sum(1./(V6recta.^2));nn6=bb6/(R*T(6));plot(1./V6recta,P6recta,'c*',1./V6recta,bb6./V6recta,'c')
bb7=sum(P7recta./V7recta)/sum(1./(V7recta.^2));nn7=bb7/(R*T(7));plot(1./V7recta,P7recta,'y*',1./V7recta,bb7./V7recta,'y')
bb8=sum(P8recta./V8recta)/sum(1./(V8recta.^2));nn8=bb8/(R*T(8));plot(1./V8recta,P8recta,'b*',1./V8recta,bb8./V8recta,'b')
hold off