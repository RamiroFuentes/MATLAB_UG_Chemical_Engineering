% Jose Ramiro Fuentes Lara
% Ecuaciones Diferenciales Parciales
% Tarea 03 --- Corresponde a nuestra funcion impar
clc; clear;

%% Se definen nuestras variables constantes para el problema
% Dichas constantes son utiles cuando la funcion cuenta con una, nosotros
% le damos un valor arbitrario en este caso nuestro problema no con cuenta con
% algun valor constante ajeno a la funcion...

l = pi;

%% Se establece nuestra condicion inicial asi como el intervalo de nuestra serie 
a = -2*pi;       % Parte constante de nuestra funcion
x= -2*l:.01:2*l;     % Intervalo de nuestra funcion periodica
u = 0;          % Funciona para inicializar nuestra funcion u() impar

%% Se evaluan los valores de nuestra sumatoria impar 

for n= 1:1000
    u = u + ((2/n*pi)*(cos(n*pi)*(-pi^2+2/n^2)-(2/n^2)))*sin(n*pi*x/l);
end 

%% Se grafica nuestra funcion
plot(x,u);
grid on 

set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Tarea 03 Impar')
    legend('Funcion')