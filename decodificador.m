%Decodificador
fprintf(' \n\n')
fprintf('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n')
fprintf('~~                    Programa creado por:                        ~~\n')
fprintf('~~                   Gonzalo Martínez Lema                        ~~\n')
fprintf('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n')
fprintf(' \n\n')
caracteres='0123456789 AaáBbCcDdEeéFfGgHhIiíJjKkLlMmNnÑñOoóPpQqRrSsTtUuúVvWwXxYyZzºª\!|"@·#$~%€&¬/()=?¿¡.:,;-_´¨{}ç`^[]+*<>';
codigo=[1:111];
nome=input('Introducir o nome (entre comillas simples) da imaxe a ler:\n\n');
nome(length(nome)+1:length(nome)+4)='.bmp';
M=imread(nome);
[filas columnas matrices]=size(M);
traducion='';
corta=0;
for k=1:matrices
    for i=1:filas
        for j=1:columnas
            if (M(i,j,k)==0)
                corta=1;
                break
            end
            traducion(length(traducion)+1)=caracteres(M(i,j,k));
        end
        if corta==1
            break
        end
    end
    if corta==1
        break
    end
end
fprintf('\nA tradución é a seguinte:\n\n%s\n\n',traducion)