function regresionsimple(x,y,sy)
determinante=length(x)*sum(x.^2)-sum(x)^2;
a=((sum(y)*sum(x.^2)-sum(x)*sum(x.*y)))/determinante;
b=(length(x)*sum(x.*y)-sum(y)*sum(x))/determinante;
sa=(sy^2*sum(x.^2)/determinante)^(1/2);
sb=(length(x)*sy^2/determinante)^(1/2);
recta=[b a;sb sa];
yregresion=polyval(recta(1,:),x);
plot(x,y,'*k',x,yregresion,'r')
chi2=sum((sy.^(-2)).*(y-yregresion).^2);
fprintf('f(x) = (%g+-%g)·x + (%g+-%g)\n\nchi^2 = %g\n\n',recta(1,1),recta(2,1),recta(1,2),recta(2,2),chi2)
disp('Os datos y da regresión son: ')
disp(yregresion)