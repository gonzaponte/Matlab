function[R,U,V,A]=fcc(N,L3)

%Definida a funci�n con par�metros de entrada N e L3, onde N � o n�mero de
%part�culas e L3 o volume da caixa. As sa�das son R, U, V, A, ..... 
%con R a matriz de coordenadas, U a enerx�a potencial, V a matriz de
%velocidades e A a de aceleraci�ns.

close %Pecha t�dalas ventanas abertas anteriormente, para que non se
%solape o gr�fico deste programa cos posibles anteriores.

%Calculo a densidade da caixa a construir e comprobo que a densidade sexa
%dunha orde normal:

rho=N/L3;

if (rho>1)|(rho<0.1)
    error('Densidade de part�culas inadecuada')
end

%Agora calculo os par�metros necesarios para a colocaci�n das
%part�culas: k, L e a, onde k � o n�mero de celdas, L a lonxitude da caixa
%e "a" a lonxitude da celda.

k=(N/4)^(1/3);
L=L3^(1/3);
a=L/k;
L=round(L);

%Po�o unha condici�n por se o n�mero de part�culas N non � da forma 4*k^3.

if abs((k-round(k)))>1e-3
    error('O n�mero de part�culas N debe ser da forma N=4*k^3')
end

%Defino uns vectores baleiros que usarei para gardar os valores das
%coordenadas das part�culas.

rx=[];
ry=[];
rz=[];

%Para o c�lculo das coordenadas, collo unha celda e po�o part�culas en
%(0,0,0), (1/2,1/2,0), (1/2,0,1/2) e (0,1/2,1/2). Repeto a operaci�n
%para t�dolos x's, y's e z's. Polo tanto as coordenadas das part�culas
%dunha celda calquera son as representadas abaixo. O desprazamento de
%calquera coordenada �, obviamente, o tama�o da celda: "a".

%As coordenadas das celdas deben ir de 0 ata L-a (�ltima celda) porque a
%celda situada en x=L, y=L ou z=L colocar�a part�culas f�ra da caixa.

s=0;
for z=0:a:L-a
    for y=0:a:L-a
        for x=0:a:L-a
            rx(s+1)=x;
            ry(s+1)=y;
            rz(s+1)=z;
            s=s+1;
            rx(s+1)=x+a/2;
            ry(s+1)=y+a/2;
            rz(s+1)=z;
            s=s+1;
            rx(s+1)=x+a/2;
            ry(s+1)=y;
            rz(s+1)=z+a/2;
            s=s+1;
            rx(s+1)=x;
            ry(s+1)=y+a/2;
            rz(s+1)=z+a/2;
            s=s+1;
        end
    end
end

%Agora simplemente compo�o unha matriz cos valores que calculei, onde cada
%columna ten as coordenadas dunha part�cula.

R=[rx;ry;rz];

%Calc�lolle o tama�o e, se todo vai ben, deber�a ser (3,N), por iso po�o
%unha condici�n que d� erro se non � as�.

l=size(R);
if l(2)~=N
    error('Hai un exceso ou defecto de part�culas')
end

%Para visualizar as part�culas, repres�ntoas nunha caixa en 3D:

hold on
grid on
box on
axis([0 L 0 L 0 L])
view(3)
for i=1:N
    plot3(R(1,i),R(2,i),R(3,i),'rh--','MarkerSize',7,'MarkerFaceColor','r')
end
hold off

%A continuaci�n,calculo a enerx�a potencial. Para iso monto a matriz de
%distanzas como a resta de vectores para cada par de part�culas. So calculo
%cada par unha vez; a suma ir� en i ata n-1 e correndo nas j's dende i+1
%ata n. Defino unha variable que serve para correr a columna na matriz.

s=0;
for i=1:N-1
    for j=i+1:N
        s=s+1;
        r(:,s)=R(:,i)-R(:,j);
    end
end

%O n�mero de columnas debe ser 1/2�N�(N-1), logo impo�o unha condici�n por
%se isto non � as�.

if s~=(0.5*N*(N-1))
    error('Non est�n calculadas t�dalas distancias')
end

%A seguinte li�a recalcula r simulando as dem�is caixas f�ra da constru�da.

r=r-L*round(r/L);

%Calculo o m�dulo e o m�dulo ao cadrado de cada distancia e, a posteri,
%elimino os termos que se saen f�ra do raio de corte (0.5*L). Despois 
%introduzo iso no potencial de Lennard Jones e sumo. Por �ltimo multiplico 
%polo factor com�n do potencial.

mod2=sum(r.^2);

for i=length(mod2):-1:1
    if mod2(i)>(0.25*L*L)
        mod2(i)=[];
    end
end

mod=sqrt(mod2);

U=sum(mod2.^(-6)-mod2.^(-3));
U=4*U;

%Agora vou asignarlle unha velocidade alatoria a cada part�cula. Para iso 
%cada compo�ente da velocidade de cada part�cula debe ser independente das
%outras e variar entre -1 e 1.

V=2*rand(3,N)-1;

%Pero o momento lineal total, que en unidades reducidas � igual �
%velocidade, debe ser cero, como non vai ser as�, busco o xeito de anulalo:

P=sum(V'); %Este � o momento total (vector)

if P~=zeros(1,3)
    u=P/N;
    for i=1:N
        V(:,i)=V(:,i)-u';
    end
    P=sum(V');
end

%Agora o momento total s� que � cero. S� nos queda calcular a enerx�a
%cin�tica como a metade da suma das velocidades (ou momentos) ao cadrado:

t=0.5*sum(sum(V.^2));

%Calculo a enerx�a total e imprimo en pantalla os valores da enerx�a 
%cin�tica, potencial e total calculadas.

e=t+U;

fprintf('\n\nT = %f\n\n',t)
fprintf('U = %f\n\n',U)
fprintf('E = %f\n\n',e)

%E pido que se introduzca a enerx�a en funci�n dos datos vistos:

E=input('Introducir a enerx�a total: ');
fprintf('\n\n')

%Para obter esta enerx�a debemos modificar a enerx�a cin�tica. Po�o a
%condici�n de que se esta � negativa, saia un erro e o programa pare.

T=E-U;
if T<0
    error('Enerx�a non v�lida, T<0')
end

%Finalmente, reescalo as velocidades en funci�n deste novo valor co
%seguinte factor de escala:

escala=sqrt(T/t);

V=escala*V;

%Comprobo que todo sae como debe ser e emito un aviso se iso non se cumpre.

P=sum(V');
t=0.5*sum(sum(V.^2));
if (abs(P))>(1e-3*ones(1,3))
    error('Momento lineal non nulo')
elseif abs(t-T)>(1e-3)
    error('A enerx�a cin�tica non coincide coa introducida')
end

%Mostro na imaxe os vectores velocidade de cada part�cula.

hold on
for i=1:N
    quiver3(R(1,i),R(2,i),R(3,i),V(1,i),V(2,i),V(3,i),0,'k','LineWidth',1)
end
hold off

%Calculo as derivadas do potencial.

der1=24.*(-2.*mod2.^(-6)+mod2.^(-3))./mod;
der2=24*(26*mod2.^(-7)-7*mod2.^(-4));

m=0;
for i=1:N-1
    gx(i,i+1:N)=r(1,m+1:m+N-i);
    gy(i,i+1:N)=r(2,m+1:m+N-i);
    gz(i,i+1:N)=r(3,m+1:m+N-i);
    m=m+N-i;
end
for i=2:N
    for j=1:i-1
        gx(i,j)=-gx(j,i);
        gy(i,j)=-gy(j,i);
        gz(i,j)=-gz(j,i);
    end
end

G2=gx.^2+gy.^2+gz.^2;
G=sqrt(G2);

y=2*G2.^(-7)-G2.^(-4);
for i=1:N
    y(i,i)=0;
end
Ax=sum((y.*gx)');
Ay=sum((y.*gy)');
Az=sum((y.*gz)');
A=[Ax;Ay;Az];

hold on
for i=1:N
    quiver3(R(1,i),R(2,i),R(3,i),A(1,i),A(2,i),A(3,i),70,'b','LineWidth',1)
end
hold off