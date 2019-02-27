% Jose Ramiro Fuentes Lara
% Ecuaciones Diferenciales Parciales
% Simulacro de Examen 01 --- Corresponde a nuestra funcion par
clc; clear; close all;

%% Se definen nuestras variables constantes para el problema
% Corrresponde a una cuerda sujeta a los extremos

c = (1)^.5;
l = 10;

%% Se establece nuestra condicion inicial asi como el intervalo de nuestra serie

x= 0:1:l;     % Intervalo de nuestra funcion periodica (Es de cero a l por que representa la longitud de la cuerda)
y = x.*(10-x); % Es evaluar nuestra funcion original en un tiempo 0
u = 0;

%% Se evaluan los valores de nuestra sumatoria 

for t = 0:1:20
    
    for n= 1:10
        lambda= c*n*pi/l;
        u = u + ( (200/(n*pi)^3) * (2-2*cos(n*pi)) ) * cos(lambda*t) * sin(n*pi*x/l);
    end
    
    plot(x,u);
    hold on;
end 

%% Se grafica nuestra funcion y se le da formato
grid on 

plot(x,y,'ro')

set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Simulacro de Examen 01')
    legend('Para una cuerda sujeta por los extremos')