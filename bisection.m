%%% Script que calcula la solución de una ecuación f(x)=0 usando el método
%%% de bisección




%%%%%BLOQUE 1. Graficamos función original  %%%%%%%%%%%%%%

%%Datos


x0=0; x1=1;
tolerancia=0.2;
fun= @(x) x.^2+21*x-0.5;   %el comando @ es para asignar una nueva función f(x)


x=linspace(x0,x1,50); %arreglo de 50 números entre x0 y x1 para graficar

plot(x,fun(x))   %Graficar la función
grid on  %%Comando que dibuja una cuadrícula. Con ella es más fácil observar los valores de la función
hold on





%%% BLOQUE 2: Calcular solución con bisección y condición de paro 1 %%%%%%


%%Datos:
x0=0; x1=1;
tolerancia=0.2;
fun= @(x) x.^2+21*x-0.5;   %el comando @ es para asignar una nueva función f(x)


xM= x0;   %%primer candidato de raíz (solución) para iniciar el ciclo.

i=0; %%número de iteraciones que se van acumulando


while  abs(fun(xM))>tolerancia   %Condición de paro 1 que se verifica

if fun(x0)*fun(x1)<0
    xM= (x0+x1)/2;
    plot(xM,0,'o')  %graficar la solución aproximada 

    %%Nuevo intervalo
    if fun(x0)*fun(xM)<0
        x0=x0;
        x1=xM;
    else 
        x0=xM; 
        x1=x1;
    end
    
    %%Subir el número de iteraciones
    i=i+1;
end
end


disp ('La raíz aproximada con bisección y condición de paro 1 es:')
xM
disp('Número de iteraciones:')
i



%%% BLOQUE 3: Calcular solución con bisección y condición de paro 2 %%%%%%

%%Datos
%x0=1; 
%x1=2;

x0=0; x1=1;
tolerancia=0.2;
fun= @(x) x.^2+21*x-0.5;   %el comando @ es para asignar una nueva función f(x)

xM= x0 ;  %%primer candidato de raíz (solución) para iniciar el ciclo.
xMsig=x1;   %%segundo candidato de raíz

j=0; %%número de iteraciones

while  abs(xM-xMsig)>tolerancia
xM=xMsig;

if fun(x0)*fun(x1)<0
    xMsig= (x0+x1)/2;
    plot(xMsig,0,'o')  %graficar la solución aproximada 

    %%Nuevo intervalo
    if fun(x0)*fun(xMsig)<0
        x0=x0;
        x1=xMsig;
    else 
        x0=xMsig; 
        x1=x1;
    end
    %%Subir el número de iteraciones
    j=j+1;
end
end

disp ('La raíz aproximada con bisección y condición de paro 2 es:')
xMsig
disp('Número de iteraciones:')
j


