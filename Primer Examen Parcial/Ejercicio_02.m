%% Ecuaciones diferenciales parciales
% Primer examen parcial 
% Jose Ramiro Fuentes Lara
% Andrea Isabel Casillas Hernandez
% Jose Luis Perez Mendez
% Leonardo Dario Ramirez Jaime
clc;clear;close all;

%% Ejercicio 02 Resuelva la ecuacion de calor
% u(0,t)= u(100,t)=0
% para u(x,0)
%    0.8x cuando 0<=x<=50
%    0.8(100-x) cuando 50<=x<=100

c = (1.6352)^.5; % Valor De nuestra constante
l = 100;         % longitud de nuestra barra
x = 0:100;       % Intervalo de x en la longitud

for t = 0:1:200 % Representa nuestro intervalo de tiempo
    u = 0;
    
    for n= 1:100
        lambda= c*n*pi/l;
        u = u + ((360/(n*pi)^2)*sin(n*pi/2)) * sin(n*pi*x/l)*exp(-(lambda.^2)*t) ;       
    end
    
    plot(x,u);
    grid on
    hold on;
end 

%% Dando Formato a nuestra grafica
set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Longitud')
    ylabel('Temperatura')
    title('Ejercicio 02 Ecuacion de Calor')
    legend('f(x)= 0.8x cuando 0<=x<=50 y .8(100-x) cuando 50<=x<=100')
