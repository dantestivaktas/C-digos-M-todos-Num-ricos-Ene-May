function InterpolacionPolinomial
%% parte 1 i)
x=[150,160,170,180,190,200,210];
y=[35.5,37.8,43.6,45.7,47.3,50.1,51.2];
plot(x,y,'o')
hold on

%% parte 2 ii)
%% Para n=5
x5 = x(1:6);
y5 = y(1:6);
M = fliplr(vander(x5));
b = y5';
A=linsolve(M,b) %resuelve un sistema de ecuaciones matricial

%% Para n=6
M6 = fliplr(vander(x));
b6 = y';
A6 = linsolve(M6,b6);

%% parte 3 iii)
% Calculamos n=1 y n=2 aquí porque se necesitan para la gráfica del inciso iii

% Para n=1
x1 = x(1:2);
y1 = y(1:2);
M1 = fliplr(vander(x1));
A1 = linsolve(M1,y1');

% Para n=2
x_2 = x(1:3);
y_2 = y(1:3);
M2 = fliplr(vander(x_2));
A2 = linsolve(M2,y_2');

% Graficamos
x2=linspace(150,210,30);

y_n5=A(1)+A(2).*x2+A(3).*x2.^2+A(4).*x2.^3+A(5).*x2.^4+A(6).*x2.^5;
plot(x2,y_n5)

y_n6=A6(1)+A6(2).*x2+A6(3).*x2.^2+A6(4).*x2.^3+A6(5).*x2.^4+A6(6).*x2.^5+A6(7).*x2.^6;
plot(x2,y_n6)

y_n1=A1(1)+A1(2).*x2;
plot(x2,y_n1)

y_n2=A2(1)+A2(2).*x2+A2(3).*x2.^2;
plot(x2,y_n2)

%% parte 4 iv)
Xnueva = 165;
Yestimada_n5 = polyval(flip(A), Xnueva)
Yestimada_n6 = polyval(flip(A6), Xnueva)
end