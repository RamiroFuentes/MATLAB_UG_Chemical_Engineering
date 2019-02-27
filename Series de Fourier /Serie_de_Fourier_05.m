% Jose Ramiro Fuentes Lara
% Ecuaciones Diferenciales Parciales
% Ejercicio 05 --- Corresponde a nuestra funcion par
clc; clear;

%% Se definen nuestras variables constantes para el problema
% Dichas constantes son utiles cuando la funcion cuenta con una, nosotros
% le damos un valor arbitrario en este caso nuestro problema no con cuenta con
% algun valor constante ajeno a la funci?n...

k = 3;
l = 1;

a0 = k/2;
f = 4*k/pi^2;

%% Se establece nuestra condicion inicial asi como el intervalo de nuestra serie
a = pi;         % Parte constante de nuestra funcion
x= -l:.01:l;     % Intervalo de nuestra funcion periodica
u = 0;          % Funciona para inicializar nuestra funcion u()

%% Se evaluan los valores de nuestra sumatoria 
for n= 1:1000
    u = u + ( ( 2*cos(n*pi/2) - cos(n*pi) -1) / (n^2) ) * cos(n*pi*x/l) ;
end 

%% Se adicionan los valores constantes y se multiplica la sumatoria por su respectivo coeficiente
u = a0 + f*u;

%% Se grafica nuestra funcion
plot(x,u);
grid on 

set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Serie de Fourier 05')
    legend('Funcion')