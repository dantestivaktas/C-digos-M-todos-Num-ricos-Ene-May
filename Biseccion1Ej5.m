% Ejercicio 5 Dante Stivaktas

x0=1;
x1=2;

% Define the function for the cubic equation
fun = @(x) x.^3 + 2.*x.^2 + 10.*x - 20;
x = linspace(x0, x1, 100);
plot(x, fun(x))
hold on
grid on

xm_vals = [1.5, 1.25, 1.375, 1.3125, 1.34375, 1.359375, 1.3671875, 1.37109375, 1.369140625, 1.3681640625, 1.36865234375, 1.368896484375, 1.3687744140625];
plot(xm_vals, 0, 'o')