function [ al ] = f_ran2(control )
% f_rand2  genera numero aleatorio
%
% Sinopsis:  [ al ] = f_rand2( control ) para preparar 
%            [ al ] = f_rand2(  ) para las siguientes llamadas

% Input:   control = para iniciar las variables perssistentes
%
% Output:        al= numero aleatorio
% 


persistent idum2;persistent iv;persistent iy;
persistent idum;
IM1=2147483563; IM2=2147483399;
IA1=40014; IA2=40692; IQ1=53668; IQ2=52774;
IR1=12211; IR2=3791; NTAB=32; IMM1=IM1-1;
NDIV=1+IMM1/NTAB;
EPS=3.0e-16; RNMX=1.0-EPS; AM=1.0/IM1;

if nargin==1
    idum=-1;
    idum2=123456789;
    iy=0;
    iv=zeros(1,NTAB+1);
    return;
 end



if (idum<=0)
   if (idum==0)
       idum=1;
   else
       idum=-idum;
   end
   idum2=idum;
   for j=NTAB+7:-1:0
       k=floor(idum/IQ1);
       idum=IA1*(idum-k*IQ1)-k*IR1;
       if idum<0
           idum=idum+IM1;
       end
       if j<NTAB
           iv(1,j+1)=idum;
       end
   end
   iy=iv(1,1);
end
k=floor(idum/IQ1);
idum=IA1*(idum-k*IQ1)-k*IR1;
if idum<0
    idum=idum+IM1;
end
k=floor(idum2/IQ2);
idum2=IA2*(idum2-k*IQ2)-k*IR2;
if idum2<0
    idum2=idum2+IM2;
end
j=floor(iy/NDIV);
iy=iv(1,j+1)-idum2;
iv(1,j+1)=idum;
if(iy<1)
    iy=iy+IMM1;
end
temp=AM*iy;
if temp>RNMX
    al=RNMX;
else
    al=temp;
end
    

    
  
end

