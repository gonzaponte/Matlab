function sensordemovemento(s,t)
disp(' ')
disp('ADVERTENCIA:')
disp('A primeira vez tardará máis dado que ten que atopar o controlador da cámara.')
disp(' ')
s=s/100;
% Definimos o dispositivo de entrada, activamos os sons e activamos o
% contador de tempo.
a=videoinput('winvideo');
beep on
tic
% Creamos un bucle que agarde a que pase o tempo de precaución.
for k=1:inf
    b=round(toc);
    % Ao pasar o tempo saca unha foto, que será a de referencia e rompe o
    % bucle.
    if b==t;
        c=getsnapshot(a);
        break
    end
end
% Reiniciamos o contador.
w=clock;
fprintf('\nO programa iniciouse ás %G:%G:%G do %G/%G/%G\n',w(4),w(5),w(6),w(3),w(2),w(1))
tic
for l=1:inf
    n=round(toc);
    % Este sensor sacará fotos indefinidamente ata que haxa
    % movemento. O tempo que tarde entre unha foto e outra so depende do
    % que tarde o programa en volver a facer a sentencia do bucle.
    if n>=1;
        h=getsnapshot(a);
        % Restamos as matrices das fotos e sumamos todos os elementos da
        % matriz diferenza e da matriz da foto de referencia. Obtemos o seu
        % cociente. Este coeficiente dinos que porcentaxe da imaxe cambiou. 
        % Non se recomenda que este sexa dunha orde menor do 5% xa que 
        % dúas fotos sacadas consecutivamente non dan matrices idénticas.
        o=h-c;p=sum(sum(sum(o)));q=sum(sum(sum(c)));r=p/q;
        % Se o resultado é maior co coeficiente de sensibilidade, entón o 
        % programa emite un son de alerta, mostra a imaxe e rompe o bucle.
        if r>s
            beep
            image(h)
            u=clock;
            fprintf('\nProduciuse movemento ás %G:%G:%G do %G/%G/%G\n',u(4),u(5),u(6),u(3),u(2),u(1))
            break
        end
    end
end
save movemento