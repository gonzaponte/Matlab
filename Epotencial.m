I--------I
%Agora calculo a enerx�a potencial calculando a distancia entre cada par de
%part�culas como sempre: a ra�z cadrada da suma dos cadrados das diferenzas
%de coordenadas.

%Como o potencial de Lennard - Jones so acada aos veci�os a unha distancia
%menor ou igual a L/2, debemos restrinxir a suma na celda �s part�culas que
%estean a estas distancias. Por outro lado, cada caixa estar� rodeada de
%outras que tam�n afectar�n a maior parte das part�culas da caixa.

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





%S� se calcula cada par unha vez, pois busco as distanzas
%da part�cula i con t�dalas part�culas j>i. Os valores non calculados
%(part�cula i con t�dalas j<=i) son 0.

%Gardo esas distanzas nunha matriz. Con isto, calculo outra matriz de
%interacci�ns que usa os elementos da matriz de distanzas.



%Para a enerx�a potencial simplemente sumo os elementos da matriz de
%interacci�ns "v". Como esta non opera cos valores de r que son 0, estes
%non contrib�en � enerx�a potencial.

V0=sum(sum(v));

I--------I