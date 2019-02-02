% Jose Ramiro Fuentes Lara
% Ecuaciones Diferenciales parciales
% Ejercicio 03
clc; clear;

%% Se definen nuestras variables constantes para el problema
E = 5;
W = 2;

%% Se establece nuestra condicion inicial asi como el intervalo de nuestra serie
a = E/pi;
t = -pi/W:0.001:pi/W;
u = 0; % Funciona para inicializar nuestra funcion u()

%% Se evaluan los valores de nuestra sumatoria 
for n= 2:2:10000
    u = u + ( ((2*E)*cos(n*W*t)) / (pi*(1+n)*(1-n)) );
end 

%% Se adicionan los valores constantes y se multiplica la sumatoria por su respectivo coeficiente
u = a + E/2*sin(W*t) + u;

%% Se grafica nuestra funcion
plot(t,u);
grid on 