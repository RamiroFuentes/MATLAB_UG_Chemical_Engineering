%% Ecuaciones diferenciales parciales
% Primer examen parcial 
% Jose Ramiro Fuentes Lara
% Andrea Isabel Casillas Hernandez
% Jose Luis Perez Mendez
% Leonardo Dario Ramirez Jaime
clc;clear;close all;

%% Ejercicio 01 Calcular serie de Fourier para la funcion 
%  f(x)= x^2+x
%  -1<x<1

T = 2; % Periodo
a0 = 1/3; % Factor de nuestra sumatoria

t = -T/2:.01:T/2 ; % intervalo donde se evaluara la funcion
tp = -T/2:.1:T/2 ; % Intervalo primado para evaluar la funcion original

u = 0; % Inicializacion de sumatoria
y = tp.^2+tp; % Funcion original

%% Se evaluan los valores de nuestra sumatoria

for n= 1:10000
    u = u + (4*cos(n*pi)/(n^2*pi^2)) * cos(n*pi*t) - (2*cos(n*pi)/(n*pi)) * sin(n*pi*t) ;
end 

%% Se adicionan los valores constantes

u = a0 + u;

%% Se grafica nuestra funcion

plot(t,u);
hold on
grid on 

plot(tp,y,'r+'); % Funcion original para comparar

%% Dando Formato a nuestra grafica
set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Ejercicio 01 Serie de fourier')
    legend('f(x)= x^2+x','Funcion Original')