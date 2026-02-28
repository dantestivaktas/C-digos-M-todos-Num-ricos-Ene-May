% Actividad 4 Inciso d

x = [365, 361.6, 370.64, 379.68, 384.46, 395.5, 395.95, 397];
y = [500, 700, 900, 1100, 1300, 1500, 1700, 1900];

plot(x, y, 'o', 'MarkerFaceColor', 'b')
hold on
grid on

% Inciso a: Grado 2
% Se grafica en el rango de los primeros 3 puntos
x2 = linspace(361.6, 370.64, 50);
p2x = (x2-361.6).*(x2-370.64).*(-26.0742) + (x2-365).*(x2-370.64).*(22.7745) + (x2-365).*(x2-361.6).*(17.6520);
plot(x2, p2x, 'g', 'LineWidth', 1.5)

% Inciso b: Grado 3
% Se grafica en el rango de los primeros 4 puntos
x2 = linspace(361.6, 379.68, 50);
p3x = (x2-361.6).*(x2-370.64).*(x2-379.68).*(1.7761) + (x2-365).*(x2-370.64).*(x2-379.68).*(-1.2596) + (x2-365).*(x2-361.6).*(x2-379.68).*(-1.9526) + (x2-365).*(x2-361.6).*(x2-370.64).*(0.4584);
plot(x2, p3x, 'm', 'LineWidth', 1.5)

% Inciso c: Grado 7 
% Se debe graficar en el rango completo (min a max)
n = 7;
x2 = linspace(min(x), max(x), 100);
Pn7 = 0;

for i = 0:n
    L = 1;
    for j = 0:n
        if j ~= i
            L = L .* (x2 - x(j+1)) ./ (x(i+1) - x(j+1));
        end
    end
    Pn7 = Pn7 + L * y(i+1);
end 
plot(x2, Pn7, 'k', 'LineWidth', 1.5)

legend('Datos Originales', 'Grado 2 (Inciso a)', 'Grado 3 (Inciso b)', 'Grado 7 (Inciso c)', 'Location', 'best')
title('Comparacion de Aproximaciones de Lagrange')