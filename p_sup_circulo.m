% p_sup_circulo
% calcula el área de un circulo por Monte Carlo


clear,clc;

%radio circulo
R=1.5;
% numero de puntos aleatorios a trazar
n=1000; 

% superficie caja
sup_caja=4*R*R;

fprintf('radio círculo= %f\n',R);
fprintf('superficie caja= %f\n',sup_caja);
fprintf('superficie real círculo= %f\n',pi*R*R);
 
sf=0.0;
sf2=0.0;
fprintf('numero de puntos trazados= %i\n',n);
% iniciar la función f_ran2(-1)
f_ran2(-1);
for k=1:1:n
    x=-R+2.0*R*f_ran2();
    y=-R+2.0*R*f_ran2();
    %comprobar si cae dentro del circulo
	f=0.0;
	if x*x+y*y<=R*R
		f=1.0;
    end
	sf=sf+f;
	sf2=sf2+f*f;	 
end
%superficie del circulo
sup=sup_caja*sf/n;

%error estimado
esup=sup_caja*sqrt((sf2/n-(sf/n)*(sf/n))/n);

%imprimir resultados
fprintf('superficie calculada del circulo= %12.9f\n',sup);
fprintf('error estimado= %12.9f\n',esup);

epi=4*esup/sup_caja;
fprintf('valor de pi= %12.9f\n',4*sup/sup_caja);
fprintf('error estimado= %12.9f\n',epi);


