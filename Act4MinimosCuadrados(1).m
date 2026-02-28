function Act4MinimosCuadrados
    % Datos originales
    x2 = [365, 361.6, 370.64, 379.68, 384.46, 395.5, 395.95, 397];
    y = [500, 700, 900, 1100, 1300, 1500, 1700, 1900];
    plot(x2, y, 'wo', 'MarkerFaceColor', 'w', 'MarkerSize', 8)
    hold on
    grid on

    % Vector para graficar
    x = linspace(min(x2), max(x2), 100);

    % Grado 3
    [A3, S3, mu3] = polyfit(x2, y, 3); 
    px3 = polyval(A3, x, S3, mu3);
    plot(x, px3, 'b', 'LineWidth', 1.5) 

    % Grado 4
    [A4, S4, mu4] = polyfit(x2, y, 4); 
    px4 = polyval(A4, x, S4, mu4);
    plot(x, px4, 'r', 'LineWidth', 1.5) 

    % Grado 5
    [A5, S5, mu5] = polyfit(x2, y, 5); 
    px5 = polyval(A5, x, S5, mu5);
    plot(x, px5, 'g', 'LineWidth', 1.5) 

    % Detalles de la gráfica
    title('Aproximación por Mínimos Cuadrados')
    xlabel('Potencia (N)')
    ylabel('Caudal (Q)')
    legend('Datos Originales', 'Grado 3', 'Grado 4', 'Grado 5', 'Location', 'best')
end