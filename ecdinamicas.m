%
%Este programa trata de resolver o seguinte sistema de ecuacións diferen-
%ciais acopladas:
%
% dq/dt =  n·q - q
% dn/dt = -n·q - a·n + b
%
%Onde q=q(t) representa o número de fotóns, n=(t) o número de átomos no 
%nivel superior do láser e a e b son unhas constantes do sistema. Asigno a
%estas constantes características uns valores:
%
a=1;%Poñer exemplos de valores iniciais
b=1.;
%
%Para resolver o problema úsanse unhas condicións iniciais que veñen
%dadas neste caso polas condicións no momento no que se encende o láser.
%Se n0=n(0) e q0=q(0) as condicións serían idealmente n0=q0=0, pero non 
%funcionaría; poño polo tanto uns valores ínfimos para comezar:
%
q0=1;
n0=1;
%
%O método implementado é un Runge - Kutta de 4ª orde.
%
%Defino dúas constantes: unha determina o número de pasos temporais e a 
%outra o intervalo temporal de avance.
%
puntos=1e6;
t=1e-5;
%
close
hold on
for i=1:puntos
    it=i*t;
    k1q=t*q0*(t*n0-1);
    k1n=-t*n0*(t*q0+a)+b;
    k2q=t*(q0+0.5*k1q)*(t*(n0+0.5*k1n)-1);
    k2n=-t*(n0+0.5*k1n)*(t*(q0+0.5*k1q)+a)+b;
    k3q=t*(q0+0.5*k2q)*(t*(n0+0.5*k2n)-1);
    k3n=-t*(n0+0.5*k2n)*(t*(q0+0.5*k2q)+a)+b;
    k4q=t*(q0+k3q)*(t*(n0+k3n)-1);
    k4n=-t*(n0+k3n)*(t*(q0+k3q)+a)+b;
    q1=q0+(k1q+2*k2q+2*k3q+k4q)/6;
    n1=n0+(k1n+2*k2n+2*k3n+k4n)/6;
    plot(it,q1,'sm',it,n1,'dg')
    q0=q1;
    n0=n1;
end
plot(it,q1,'sr',it,n1,'dr')
hold off
%
%Conclusións: