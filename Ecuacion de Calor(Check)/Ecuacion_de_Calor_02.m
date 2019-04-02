% Jose Ramiro Fuentes Lara
% Ecuaciones Diferenciales Parciales
% Simulacro de examen 02 --- Corresponde a nuestra funcion 
clc; clear; close all;

%% Se establece nuestra condicion inicial asi como el intervalo de nuestra serie

k = 1.04;     % Constante
d = 0.056;    % Cp
p = 10.6;     % Densidad 

c = (k/(d*p))^0.5;

l = 10;  % Longitud de nuestra barra

x = 0:.1:l;    % Intervalo de x
lambda = c*pi/l;

    %% Forma 1 codigo improvisado

 for t = 0:1:10
         u = sin(pi*x/l) * exp(-(lambda.^2)*t) ;  
    plot(x,u);
    hold on;
end

%% Se grafica nuestra funcion

plot(x,u);
grid on 

set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Ecuacion de calor 02')
    legend('Funcion')