x = [2, 4, 6, 12, 18, 24];
y = [1.07, 1.88, 2.26, 2.78, 2.97, 2.99];

plot(x,y,'o')
hold on

% Cálculos inciso a) (Grado 2, primeros 3 puntos)
x_a = x(1:3);
y_a = y(1:3);
M_a = fliplr(vander(x_a));
A_a = linsolve(M_a, y_a');

% Cálculos inciso c) (Grado 5, todos los puntos)
M_c = fliplr(vander(x));
A_c = linsolve(M_c, y');

% Graficación
x2 = linspace(2, 24, 100);

% Curva del inciso a)
y_graf_a = A_a(1) + A_a(2).*x2 + A_a(3).*x2.^2;
plot(x2, y_graf_a)

% Curva del inciso c)
y_graf_c = A_c(1) + A_c(2).*x2 + A_c(3).*x2.^2 + A_c(4).*x2.^3 + A_c(5).*x2.^4 + A_c(6).*x2.^5;
plot(x2, y_graf_c)