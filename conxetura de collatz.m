n=input('Introducir o número: ');
for k=1:inf
    if n/2==round(n/2);
        n=n/2;
    else
        n=3*n+1;
    end
    if n==1;
        break
    end
end