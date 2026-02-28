%%Bloque 1. Graficar los puntos originales

x2=[0,2,3,6,7];
y=[0.12,0.153,0.17,0.225,0.26];
plot(x2,y, 'o')
hold on

%%Bloque 2. Graficar px si tengo la expresión en papel

x=linspace(0,7,50);
px=0.1213+0.0130.*x+0.00087.*x.^2;
plot(x,px)

%%Bloque 3. Graficar px SI NO TENGO la expresión EN PAPEL

A=polyfit(x2,y,4) %%Calcula los coeficientes a0,a1,...
%  con mínimos cuadrados
px2=A(5)+A(4).*x+A(3).*x.^2+A(2).*x.^3+A(1).*x.^4;
plot(x,px2)

%%Bloque 4. Sustituir un valor dado en px

xnueva=3.5
ynueva= A(5)+A(4).*xnueva+A(3).*xnueva.^2+A(2).*xnueva.^3+A(1).*xnueva.^4