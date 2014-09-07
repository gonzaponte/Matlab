%-- 11/22/10 10:14 AM --%
clear
load PVTPC
x=1./V1recta;y=P1recta;sy=sP
regresimplesena
Preg1=yregresion;
chi21=chi2
recta1=recta
x=1./V2recta;y=P2recta;sy=sP;
regresimplesena
Preg2=yregresion;chi22=chi2;recta2=recta;
x=1./V3recta;y=P3recta;sy=sP;
regresimplesena
Preg3=yregresion;chi23=chi2;recta3=recta;
x=1./V4recta;y=P4recta;sy=sP;
regresimplesena
Preg4=yregresion;chi24=chi2;recta4=recta;
x=1./V5recta;y=P5recta;sy=sP;
regresimplesena
Preg5=yregresion;chi25=chi2;recta5=recta;
x=1./V6recta;y=P6recta;sy=sP;
regresimplesena
Preg6=yregresion;chi26=chi2;recta6=recta;
x=1./V7recta;y=P7recta;sy=sP;
regresimplesena
Preg7=yregresion;chi27=chi2;recta7=recta;
x=1./V8recta;y=P8recta;sy=sP;
regresimplesena
Preg8=yregresion;chi28=chi2;recta8=recta;
clear yregresion chi2 recta b sb
Precta1=P1recta;Precta2=P2recta;Precta3=P3recta;Precta4=P4recta;Precta5=P5recta;Precta6=P6recta;Precta7=P7recta;Precta8=P8recta;
clear P1recta P2recta P3recta P4recta P5recta P6recta P7recta P8recta
Vrecta1=V1recta;Vrecta2=V2recta;Vrecta3=V3recta;Vrecta4=V4recta;Vrecta5=V5recta;Vrecta6=V6recta;Vrecta7=V7recta;Vrecta8=V8recta;
clear V1recta V2recta V3recta V4recta V5recta V6recta V7recta V8recta
clear sy x y
b=[recta1(1,1) recta2(1,1) recta2(1,1) recta2(1,1) recta2(1,1) recta2(1,1) recta2(1,1) recta2(1,1)];
n=(b./T)/R
mean(n)
format long
mean(n)
moles=mean(n)
v1=V1/moles;v2=V2/moles;v3=V3/moles;v4=V4/moles;v5=V5/moles;v6=V6/moles;v7=V7/moles;v8=V8/moles;