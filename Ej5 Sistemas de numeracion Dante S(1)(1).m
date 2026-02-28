N = input('Introduce un número N: ');

if mod(N, 1) ~= 0
    disp('Sólo números enteros');
else
    binario = dec2bin(abs(N));
    disp('El número ingresado convertido a binario es: ')
    disp(binario);

    if N < 0
        disp('este número es negativo');
    end
    
    comprobacion = bin2dec(binario);
end