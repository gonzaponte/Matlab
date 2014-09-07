function regreponderada(x,y,sy)
determinante=sum(sy.^(-2))*sum((x./sy).^2)-(sum(x./(sy.^2)))^2;
a=(determinante^(-1))*(sum(y./(sy.^2))*sum((x./sy).^2)-sum((x.*y)./(sy.^2))*sum(x./(sy.^2)));
b=(determinante^(-1))*(sum(sy.^(-2))*sum((x.*y)./(sy.^2))-sum(x./(sy.^2))*sum(y./(sy.^2)));
sa=((determinante^(-1))*sum((x./sy).^2))^(1/2);
sb=((determinante^(-1))*sum(sy.^(-2)))^(1/2);
recta=[b a;sb sa];
yregresion=polyval(recta(1,:),x);
plot(x,y,'*k',x,yregresion,'r')
chi2=sum(((y-yregresion)./sy).^2);
fprintf('f(x) = (%g+-%g)·x + (%g+-%g)\n\nchi^2 = %g\n\n',recta(1,1),recta(2,1),recta(1,2),recta(2,2),chi2)
disp('Os datos y da regresión son: ')
disp(yregresion)