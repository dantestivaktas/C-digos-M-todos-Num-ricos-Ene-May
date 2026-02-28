% Actividad 4 Inciso c

x = [365, 361.6, 370.64, 379.68, 384.46, 395.5, 395.95, 397];
y = [500, 700, 900, 1100, 1300, 1500, 1700, 1900];

% Grafica puntos originales
plot(x, y, 'o');
hold on

% Definicion del grado n y vector de graficacion
n = 7; %Respuesta a la pregunta de la tarea: El polinomio es de grado 7.    
x2 = linspace(361.6, 397, 100);

Pn = 0;

% Calculo de Lagrange Vectorizado
for i = 0:n
    L = 1;
    for j = 0:n
        if j ~= i
            % Se calcula L para todo el vector x2 
            L = L .* (x2 - x(j+1)) ./ (x(i+1) - x(j+1));
        end
    end
    Pn = Pn + L * y(i+1);
end 

plot(x2, Pn);