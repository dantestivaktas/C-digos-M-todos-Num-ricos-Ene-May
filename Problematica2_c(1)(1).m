function Problematica2_c
x = [2, 4, 6, 12, 18, 24];
y = [1.07, 1.88, 2.26, 2.78, 2.97, 2.99];

M = fliplr(vander(x));
A = linsolve(M,y');

Xnueva = 5;
Yestimada = A(1) + A(2).*Xnueva + A(3).*Xnueva.^2 + A(4).*Xnueva.^3 + A(5).*Xnueva.^4 + A(6).*Xnueva.^5

end