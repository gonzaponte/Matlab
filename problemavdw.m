% Creo variables simbólicas
syms p v r t a b
% Introduzo a ecuación de Van der Waals
p*v^3-(p*b+r*t)*v^2+a*v-a*b;
%Resólvoa
solve(ans,v);
% Meto cada solución á ecuación nunha variable distinta
z1=ans(1);z2=ans(2);z3=ans(3);
% Integro entre cada solución
w1=int(p*v^3-(p*b+r*t)*v^2+a*v-a*b,v,z1,z2);
w2=int(p*v^3-(p*b+r*t)*v^2+a*v-a*b,v,z2,z3);
% Verifico que as dúas integrais son idénticas
if w1==w2;
g=1
end