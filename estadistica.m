valores=input('Introducir o vector de valores para o cálculo: ');
media=sum(valores)/length(valores);
varianza=sum((valores-media).^2)/(length(valores)-1);
desviaciontipica=sqrt(varianza);
if length(valores)/2==round(length(valores)/2)
    mediana=(valores(length(valores)/2)+valores(length(valores)/2+1))/2;
else
    mediana=valores(length(valores)/2+0.5);
end
fprintf('\nMedia: %G\nVarianza: %G\nDesviación típica %G\nMediana %G\n\n',media,varianza,desviaciontipica,mediana)
clear valores media varianza desviaciontipica mediana