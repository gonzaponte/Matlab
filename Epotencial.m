I--------I
%Agora calculo a enerxía potencial calculando a distancia entre cada par de
%partículas como sempre: a raíz cadrada da suma dos cadrados das diferenzas
%de coordenadas.

%Como o potencial de Lennard - Jones so acada aos veciños a unha distancia
%menor ou igual a L/2, debemos restrinxir a suma na celda ás partículas que
%estean a estas distancias. Por outro lado, cada caixa estará rodeada de
%outras que tamén afectarán a maior parte das partículas da caixa.

%Primeiro sumo na caixa:

for i=1:N-1
    for j=i+1:N
        r(i,j)=((R(1,i)-R(1,j))^2+(R(2,i)-R(2,j))^2+(R(3,i)-R(3,j))^2)^(1/2);
        if r(i,j)<(0.5*L)
            v(i,j)=4*(r(i,j)^(-12)-r(i,j)^(-6));
        else
        end
    end
end





%Só se calcula cada par unha vez, pois busco as distanzas
%da partícula i con tódalas partículas j>i. Os valores non calculados
%(partícula i con tódalas j<=i) son 0.

%Gardo esas distanzas nunha matriz. Con isto, calculo outra matriz de
%interaccións que usa os elementos da matriz de distanzas.



%Para a enerxía potencial simplemente sumo os elementos da matriz de
%interaccións "v". Como esta non opera cos valores de r que son 0, estes
%non contribúen á enerxía potencial.

V0=sum(sum(v));

I--------I