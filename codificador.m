%Codificador
clc
fprintf(' \n\n')
fprintf('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n')
fprintf('~~                    Programa creado por:                        ~~\n')
fprintf('~~                   Gonzalo Martínez Lema                        ~~\n')
fprintf('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n')
fprintf(' \n\n')
caracteres='0123456789 AaáBbCcDdEeéFfGgHhIiíJjKkLlMmNnÑñOoóPpQqRrSsTtUuúVvWwXxYyZzºª\!|"@·~~~%€&¬/()=?¿¡.:,;-_´¨{}ç`^[]+*<>';
codigo=[1:111];
texto=input('Introducir o texto entre comillas simples:\n\n');
fprintf(' \n');
l=length(texto);l13=ceil(sqrt(l/3));
M=zeros(l13,l13,3);
i=1;j=1;m=1;
nome=input('Introducir o nome (entre comillas simples) co que se gravará a imaxe:\n\n');
nome(length(nome)+1:length(nome)+4)='.bmp';
fprintf(' \n');
for t=1:l
    if j>l13
        j=1;
        i=i+1;
    end
    if i>l13
        i=1;
        m=m+1;
    end
    for p=1:111
        if (texto(t)==caracteres(p))
            M(i,j,m)=p;
            j=j+1;
            break
        end
    end
end
M=uint8(M);
imwrite(M,nome);