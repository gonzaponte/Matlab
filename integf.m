clc,clear

f0=input('Introduire la fréquence de la fonction = \n\n');
t0=input('\n Introduire le temps initial = \n\n');
tf=input('\n Introduire le temps final = \n\n');
te=input('\n Introduire le pas = \n\n');

t=[t0:te:tf];
%f=input('\n Introduire la fonction à intégrer: \n\n');

N=(tf-t0)/te;

s=0;
for k=1:N-1
fk=sin(2*pi*f0*k*te);
s=s+fk;
end

integrale=(te/2)*(sin(1)+sin(length(f))+2*s);

fprintf('\nL´intégrale vaut: %g\n',integrale)