function Problematica2Act4 (n, x, y)
    % Dante Stivaktas
    % Verificar que x y y tengan el mismo tamaño
    if length(x) ~= length(y)
        error('Los vectores deben tener la misma longitud');
    end

    m = length(x);

    % Verificar si hay suficientes puntos para Lagrange
    if n >= m
        error('No hay suficientes puntos para un polinomio de ese grado');
    end

    % Vector para graficar
    x_plot = linspace(min(x), max(x), 100);

    % a) LAGRANGE
    P_lag = zeros(size(x_plot));

    % Iterar hasta n+1 para garantizar que el polinomio sea de grado n
    for i = 1:n+1
        L = ones(size(x_plot));
        for j = 1:n+1
            if j ~= i
                L = L .* (x_plot - x(j)) ./ (x(i) - x(j));
            end
        end
        P_lag = P_lag + L * y(i);
    end

    % b) MÍNIMOS CUADRADOS
    [coef, S, mu] = polyfit(x, y, n);      
    P_mc = polyval(coef, x_plot, S, mu);

    % c) GRÁFICA
    figure
    
    % 1. puntos originales primero
    plot(x, y, 'ko', 'MarkerFaceColor', 'w', 'MarkerSize', 8)
    hold on
    grid on
    
    % 2. curva de Lagrange
    plot(x_plot, P_lag, 'b', 'LineWidth', 1.5)
    
    % 3. curva de minimos cuadrados
    plot(x_plot, P_mc, 'r--', 'LineWidth', 1.5) 
    
    % detalles
    legend('Datos Originales', 'Lagrange', 'Mínimos Cuadrados', 'Location', 'best')
    title(['Aproximaciones Grado ', num2str(n)])
    xlabel('Eje X')
    ylabel('Eje Y')
    
end

% Para usar la función, pegar esto en la ventana de comandos:

% x=[365,361.6,370.64,379.68,384.46,395.5,395.95,397]; y=[500,700,900,1100,1300,1500,1700,1900]; 
% Problematica2Act4(3,x,y)