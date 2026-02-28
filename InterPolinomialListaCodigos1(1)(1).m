%%%%%  UNIDAD 2: MÉTODOS DE INTERPOLACIÓN
%%%%%%% Tema 1. Interpolación polinomial


%%A continuación se muestra la lista de comandos que se usan en el tema


%%Observación: Cada bloque de códigos se puede ejecutar de forma
%%independiente y tiene un objetivo.

%%% <-  El porcentaje es para comentar los códigos. Lo que sigue después del símbolo (verde)
% no es parte de la ejecución





 %%--------------Bloque 1. GRÁFICA DE LOS PUNTOS ORIGINALES--------------

x=[1, 5, 20, 40]; % x=[] Ingresar los datos originales x que se quieren interpolar entre corchetes. Se separan por comas.
y=[56.5, 113, 181, 214.5];   %y=[] Ingresar los datos originales y que se quieren interpolar entre corchetes. Se separan por comas.
plot (x, y, 'o') % plot() dibuja los datos originales con una marca. Algunas marcas son '*' y 'o'
hold on %<--- hold on permite que las siguientes gráficas (en caso de que se quieran más) se dibujen en la misma figura. Si se omite, las gráficas anteriores se borrarán.







%%%-----------------Bloque 2. GRAFICAR EL POLINOMIO DE INTERPOLACIÓN (si tenemos la expresión en papel)

x2= linspace(0,40,20); % x2=linspace(x0, x1, N) genera un conjunto de N puntos, del x0 al x1. Esto es necesario para graficar funciones. x0: valor más pequeño  x1:valor máximo.
px= 42.375+14.125.*x2; % función que queremos graficar, p(x). Necesitamos calcular la expresión antes en papel. Las operaciones multiplicación y potencia se escriben con punto antes:  .*   y .^
plot(x2,px) %dibuja la función con una línea continua









%%------------------Bloque 3. GRAFICAR EL POLINOMIO DE INTERPOLACIÓN (si NO TENEMOS la expresión en papel)

%%si no se tiene la expresión en papel del polinomio primero debemos
%%calcularla. Para eso necesitamos el grado del polinomio "n" que pide el
%%ejercicio


x2=[1, 5, 20, 40]; % x2=[] Ingresar los datos originales "x" que se quieren usar entre corchetes. Se separan por comas.
b=[56.5, 113, 181, 214.5];   %b=[] Ingresar los datos originales "y" que se quieren usar entre corchetes. Se separan por comas.

%%%IMPORTANTE: Recordar que si el grado es "n" se necesitan "n+1" equis y
%%%"n+1" yes

M= fliplr(vander(x2));  %% Es la matriz que surge cuando resolvemos a mano. Esta matriz podría escribirse manualmente, pero el código simplifica mucho.
A=linsolve(M,b');   %%Resuelve el sistema matricial para no hacerlo a mano. La respuesta son los coeficientes a0,a1,a2,...
                   %%La ' al final de b es necesaria para que el sistema se
                   %%resuelva sin errores.

%%Graficamos el polinomio. Son los mismos pasos que el Bloque 2. 
% Recordar que la potencia más grande DEBE SER n:

x3=linspace(0,40,30); % x=linspace(x0, x1, N) genera un conjunto de N puntos, del x0 al x1. Esto es necesario para graficar funciones. Recordemos que una "función matemática" no es lo mismo que un "conjunto de puntos".
px=A(1)+A(2).*x3+A(3).*x3.^2+A(4).*x3.^3;  %La función que queremos graficar p(x)
plot(x3,px)




%%---------------  Bloque 4. ESTIMAR EL VALOR DE LA VARIABLE DEPENDIENTE EN
%%UNA X FUERA DE LA TABLA (pero dentro del rango original x0, x1)

Xnueva=30;
Yestimada=A(1)+A(2).*Xnueva+A(3).*Xnueva.^2+A(4).*Xnueva.^3


%%%%%%% Ahora estás listo para adaptar el código a diferentes problemas