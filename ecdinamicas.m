%
%Este programa trata de resolver o seguinte sistema de ecuaci�ns diferen-
%ciais acopladas:
%
% dq/dt =  n�q - q
% dn/dt = -n�q - a�n + b
%
%Onde q=q(t) representa o n�mero de fot�ns, n=(t) o n�mero de �tomos no 
%nivel superior do l�ser e a e b son unhas constantes do sistema. Asigno a
%estas constantes caracter�sticas uns valores:
%
a=1;%Po�er exemplos de valores iniciais
b=1.;
%
%Para resolver o problema �sanse unhas condici�ns iniciais que ve�en
%dadas neste caso polas condici�ns no momento no que se encende o l�ser.
%Se n0=n(0) e q0=q(0) as condici�ns ser�an idealmente n0=q0=0, pero non 
%funcionar�a; po�o polo tanto uns valores �nfimos para comezar:
%
q0=1;
n0=1;
%
%O m�todo implementado � un Runge - Kutta de 4� orde.
%
%Defino d�as constantes: unha determina o n�mero de pasos temporais e a 
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
%Conclusi�ns: