% Jose Ramiro Fuentes Lara
% Ecuaciones Diferenciales parciales
% Ejercicio 02
clc; clear;

%% Se definen nuestras variables constantes para el problema
k = 5;

%% Se establece nuestra condicion inicial asi como el intervalo de nuestra serie
x = -2 :pi/1000: 2;
u = 0;

%% Se evaluan los valores de nuestra sumatoria 
for n= 1:10000 % A mayor intervalo mas preciso resulta nuestra simulaci?n
    u = u + (1/n) * (sin(n*pi/2)) * cos(n*pi*x/2);
end 

%% Se adicionan los valores constantes y se multiplica la sumatoria por su respectivo coeficiente
u = u * (2*k/pi) + k/2;

%% Se grafica nuestra funcion
plot(x,u);
grid on 