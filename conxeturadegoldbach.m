buscadordeprimos
b=0;
for k=1:length(primos);
    for l=1:length(primos);
        a=primos(k)+primos(l);
        if a==n;
            b=1;
            break
        end
    end
    if b==1;
        break
    end
end
if b==0;
    fprintf('\nA conxetura de Goldbach é falsa\n\n')
else
    fprintf('\nO número %G pódese escribir como suma de %G e %G\n\n',n,primos(k),primos(l))
end