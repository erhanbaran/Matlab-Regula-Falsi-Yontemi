clear all;close all; clc
fprintf('Regula Falsi y�ntemini kullanarak [1, 3] aral���nda f(x)=x^3-5x denkleminin k�klerini bulma');
a=1;
b=3;
tol = 0.00001;
fprintf('\n iter   a           b               xr          y(xr)\n');
for i = 1:50
    fonka = a^3-5*a;
    fonkb = b^3-5*b;
    xr=(a*fonkb-b*fonka)/(fonkb-fonka);
    fonkxr=xr^3-5*xr;
    fprintf('%4.1f   %7.8f  %7.8f  %7.8f   %7.8f \n',i,a,b,xr,fonkxr);
    if abs(fonkxr)<tol
        break;
    end
    if fonka*fonkxr<0
        b=xr
        fonkb=fonkxr
    else
        a=xr;
        fonka = fonkxr;
    end
end
disp('Iterasyon Say�s�')
i
disp('Denklemin kok�');
format long
xr
disp('Fonksiyonun k�kteki de�eri')
fonkxr