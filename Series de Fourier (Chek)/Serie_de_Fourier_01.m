% Jose Ramiro Fuentes Lara
% Ecuaciones Diferenciales parciales
% Ejercicio 01
clc; clear;

%% Se definen nuestras variables constantes para el problema
k = 5;

%% Se establece nuestra condicion inicial asi como el intervalo de nuestra serie
x = -pi :pi/1000: pi;
u = 0;

%% Se evaluan los valores de nuestra sumatoria 
for n= 1:1000
    u = u + (1/n) * (1-cos(n*pi)) * sin(n*x);
end 

%% Se adicionan los valores constantes y se multiplica la sumatoria por su respectivo coeficiente
u = u * (2*k/pi);

%% Se grafica nuestra funcion
whitebg('white')
plot(x,u);
grid on 

set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Serie de Fourier 01')
    legend('Funcion')
