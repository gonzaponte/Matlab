n=input('Introducir o número: ');
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
fprintf('\nA órbita de %G é:\n',n)
disp(orbita)
fprintf('\nO número maís alto da órbita é: %G\n',h)