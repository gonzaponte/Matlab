function regresimplesena(x,y,sy)
b=sum(x.*y)/sum(x.^2);
sb=sy*(sum(x)/sum(x.^2));
recta=[b 0;sb 0];
yregresion=polyval(recta(1,:),x);
plot(x,y,'*r',x,yregresion,'k')
xlabel('x');ylabel('y');title('y-x');
chi2=sum((sy.^(-2)).*(y-yregresion).^2);
fprintf('f(x) = (%g+-%g)·x\n\nchi^2 = %g\n\n',recta(1,1),recta(2,1),chi2)
disp('Os datos y da regresión son: ')
disp(yregresion)