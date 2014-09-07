n=input('Introducir o número: ');
div=[];
for d=1:fix(n/2);
    a=n/d;b=round(a);
    if b==a;
        div(length(div)+1)=d;
    end
end

if length(div)==1;
    fprintf('\nO número %G é primo\n',n)
else
    fprintf('\nOs divisores de %G son:\n',n)
    disp(div)
end
clear a b d n