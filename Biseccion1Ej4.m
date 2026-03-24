% Ejercicio 4 Dante Stivaktas

x0 = 0;
x1 = 1;

fun = @(x) x.^2 + 21.*x - 0.5;
x = linspace(x0, x1, 100);
plot(x, fun(x))
hold on
grid on

xm_vals = [0.5, 0.25, 0.125, 0.0625, 0.03125];
plot(xm_vals, 0, 'o')