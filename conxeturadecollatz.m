n=input('Introducir o n�mero: ');
orbita=[n];m=n;
for k=1:inf
    if m/2==round(m/2);
        m=m/2;
    else
        m=3*m+1;
    end
    orbita(length(orbita)+1)=m;
    if m==1;
        break
    end
end
h=max(orbita);
fprintf('\nA �rbita de %G �:\n',n)
disp(orbita)
fprintf('\nO n�mero ma�s alto da �rbita �: %G\n',h)