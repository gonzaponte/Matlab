% Creo variables simb�licas
syms p v r t a b
% Introduzo a ecuaci�n de Van der Waals
p*v^3-(p*b+r*t)*v^2+a*v-a*b;
%Res�lvoa
solve(ans,v);
% Meto cada soluci�n � ecuaci�n nunha variable distinta
z1=ans(1);z2=ans(2);z3=ans(3);
% Integro entre cada soluci�n
w1=int(p*v^3-(p*b+r*t)*v^2+a*v-a*b,v,z1,z2);
w2=int(p*v^3-(p*b+r*t)*v^2+a*v-a*b,v,z2,z3);
% Verifico que as d�as integrais son id�nticas
if w1==w2;
g=1
end