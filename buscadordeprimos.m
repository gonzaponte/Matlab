n=input('Introducir o último número da serie: ');
primos=[];
for numeros=2:n;
    divisores=[];
    for d=1:(numeros-1);
        a=numeros/d;b=round(a);
        if b==a;
            divisores(length(divisores)+1)=d;
        end
    end
    if length(divisores)==1;
        primos(length(primos)+1)=numeros;
    end
end
fprintf('\nOs números primos ata %G son:\n',n)
disp(primos)
clear a b d