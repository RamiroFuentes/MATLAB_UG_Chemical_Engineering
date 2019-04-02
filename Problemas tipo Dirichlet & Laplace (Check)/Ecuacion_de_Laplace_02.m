%% Ecuaciones diferenciales parciales 
% Jose Ramiro Fuentes Lara
clc;clear;close all;

%% valores de nuestras constantes

L = 24;
x = 0:.5:L;
y = 0:.5:L;

%% Definimos el ciclo para llenar la malla
 for i=1:length(x)
     for j=1:length(y)
         T(i,j)=0;
         for n=1:200
         B=200*sin(((2*n-1)*pi)/2)/((2*n-1)*pi);
         A=B/cosh(((2*n-1)*pi)/2);
         
         T(i,j)=T(i,j) + A*cos(((2*n-1)*pi*x(i))/(2*L))*cosh(((2*n-1)*pi*y(j))/(2*L));
         end
     end
 end

%% Se grafica nuestra funcion y se le da formato
grid on 
surf(T)

set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Ejercicio 02 Ecuacion de Laplace')
    