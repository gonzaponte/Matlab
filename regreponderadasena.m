function regreponderadasena(x,y,sy)
b=sum((x.*y)./(sy.^2))/sum((x./sy).^2);
sb=sum(sy.*(sum(x./(sy.^2))/sum((x./sy).^2)));
recta=[b 0;sb 0];
yregresion=polyval(recta(1,:),x);
plot(x,y,'*k',x,yregresion,'r')
chi2=sum((sy.^(-2)).*(y-yregresion).^2);
fprintf('f(x) = (%g+-%g)·x\n\nchi^2 = %g\n\n',recta(1,1),recta(2,1),chi2)
disp('Os datos y da regresión son: ')
disp(yregresion)