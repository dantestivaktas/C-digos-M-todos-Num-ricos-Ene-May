%%%%%%%%%        UNIDAD 2. MÉTODOS DE INTERPOLACIÓN
%%%%%%%%%%%%%%%   Tema 2. Interpolación de Lagrange


%%A continuación se muestra la lista de comandos que se usan en el tema


%%Observación: Cada bloque de códigos se puede ejecutar de forma
%%independiente y tiene un objetivo.

%%% <-  El porcentaje es para comentar los códigos. Lo que sigue después del símbolo (verde)
% no es parte de la ejecución


%%--------------Bloque 1. GRÁFICA DE LOS PUNTOS ORIGINALES--------------

x=[0,1,3,6]; % x=[] Ingresar los datos originales x que se quieren interpolar entre corchetes. Se separan por comas.
y=[-3,0,5,7];   %y=[] Ingresar los datos originales y que se quieren interpolar entre corchetes. Se separan por comas.
plot (x, y, 'o') % plot() dibuja los datos originales con una marca. Algunas marcas son '*' y 'o'
hold on %<--- hold on permite que las siguientes gráficas (en caso de que se quieran más) se dibujen en la misma figura. Si se omite, las gráficas anteriores se borrarán.





%%%-----------------Bloque 2. GRAFICAR EL POLINOMIO DE INTERPOLACIÓN (si tenemos la expresión en papel)

x2= linspace(0,6,50); % x2=linspace(x0, x1, N) genera un conjunto de N puntos, del x0 al x1. Esto es necesario para graficar funciones. x0: valor más pequeño  x1:valor máximo.
px= (8/3).*x2-3; % función que queremos graficar, p(x). Necesitamos calcular la expresión antes en papel. Las operaciones multiplicación y potencia se escriben con punto antes:  .*   y .^
%%También lo podemos cambiar con n=2
p2x= -(x2-1).*(x2-3)+(5/6).*x2.*(x2-1);


plot(x2,px) %dibuja la función con una línea continua
plot(x2,p2x)


%%------------------Bloque 3. GRAFICAR EL POLINOMIO DE INTERPOLACIÓN (si NO TENEMOS la expresión en papel)

%%si no se tiene la expresión en papel del polinomio primero debemos
%%calcularla. Para eso necesitamos el grado del polinomio "n" que pide el
%%ejercicio. Como el producto de los L se calcula iterativamente, usamos un
%%ciclo.

n=3;  %%Grado del polinomio que vamos a usar.
x=[0,1,3,6]; % x=[] Ingresar los datos originales "x" que se quieren usar entre corchetes. Se separan por comas.
y=[-3,0,5,7];   %y=[] Ingresar los datos originales "y" que se quieren usar entre corchetes. Se separan por comas.

x2=linspace(0,6,50);  %x2=linspace(x0, x1, N) genera un conjunto de N puntos, del x0 al x1. Esto es necesario para graficar funciones. x0: valor más pequeño  x1:valor máximo.

%%%IMPORTANTE: Recordar que si el grado es "n" se necesitan "n+1" equis y
%%%"n+1" yes

Pn=0;  %%Iniciamos el polinomio como cero y le iremos sumando cada producto Li(x)*yi

for i=0:n
    L=1; %inicializar el producto del Li con uno para hacer multiplicaciones
    for j=0:n
        if j ~=i
            L=L.*(x2-x(j+1))./(x(i+1)-x(j+1)); %Cada una de las multiplicaciones en el Li
        end
    end
    Pn=Pn+L.*y(i+1);  %Sumamos al polinomio el término Li*yi
end 

%%Graficamos el polinomio. 

plot(x2,Pn)


%%---------------  Bloque 4. ESTIMAR EL VALOR DE LA VARIABLE DEPENDIENTE EN
%%UNA X FUERA DE LA TABLA (pero dentro del rango original x0, x1)

Xnueva=2;
Yestimada=-(Xnueva-1).*(Xnueva-3)+(5/6).*Xnueva.*(Xnueva-1)

%%Si no tenemos la expresión del papel podemos estimar usando la gráfica
%%que arroja matlab. Para esto se sugiere dejar SOLAMENTE al polinomio que
%%nos interesa en la gráfica.

figure(2)  %%abre una nueva figura de matlab
plot(x2,Pn)  %%Pedimos que sólo grafique un polinomio (este es el que se calculó para n=3)

%%%%%%% Ahora estás listo para adaptar el código a diferentes problemas

%%Según la gráfica, el valor más cercano a x=2 es x=1.95, y= 2.62