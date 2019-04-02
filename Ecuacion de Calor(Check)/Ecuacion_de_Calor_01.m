% Jose Ramiro Fuentes Lara
% Ecuaciones Diferenciales Parciales
% Simulacro de Examen 01 --- Corresponde a nuestra funcion par
clc; clear;close all;

%% Se definen nuestras variables constantes para el problema.

c = 1;
l = 1;          % Longitud de nuestra barra
x = 0:.01:l;     % intervalo de x

%% Se evaluan los valores de nuestra sumatoria 
for t = 0:.05:1
    u = 0;
    
    for n= 1:1000
        lambda= c*n*pi/l;
        u = u + ( sin(n*pi/2)/n^2 ) * sin(n*pi*x/l) * exp(-t*lambda^2);
    end
    
    u = (u*4*l)/(pi^2);
    plot(x,u);
    hold on;
end 

%% Se grafica nuestra funcion
grid on 

set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Simulacro de Examen 01')
    legend('Funcion')