%% Ecuaciones diferenciales parciales 
% Jose Ramiro Fuentes Lara
clc;clear;close all;

%% valores de nuestras constantes

a = 24;
b = 12;
x = 0:.5:a;
y = 0:.5:b;

%% Definimos el ciclo para llenar la malla
 for i=1:length(x)
     for j=1:length(y)
         u(i,j)=0;
         for n=1:110
         An= ( 1/(12*sinh(n*pi/2)) ) * ( ((-13824*cos(n*pi))/(n*pi)) + ( (2648*cos(n*pi)-24648)/(n^3*pi^3) ) );
         u(i,j)= u(i,j) + An*sin(n*pi*x(i)/a)*sinh(n*pi*y(j)/a);
         end
     end
 end

%% Se grafica nuestra funcion y se le da formato
grid on 
surf(u)

set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Practica 01 Ecuacion de Laplace')