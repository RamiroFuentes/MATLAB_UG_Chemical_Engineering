% Jose Ramiro Fuentes Lara
% Ecuaciones Diferenciales Parciales
% Tarea 03 --- Corresponde a nuestra funcion par
clc; clear;

%% Se definen nuestras variables constantes para el problema
% Dichas constantes son utiles cuando la funcion cuenta con una, nosotros
% le damos un valor arbitrario en este caso nuestro problema no con cuenta con
% algun valor constante ajeno a la funcion...

l = pi;
a0 = pi^3/3;

%% Se establece nuestra condicion inicial asi como el intervalo de nuestra serie Par
a = 4;               % Parte constante de nuestra funcion
x= -2*l:.01:2*l;     % Intervalo de nuestra funcion periodica

u = 0;               % Funciona para inicializar nuestra funcion u() par

%% Se evaluan los valores de nuestra sumatoria par 
for n= 1:1000
    u = u + ( (cos(n*pi)/(n^2) ) * cos(n*x)) ;
end 

%% Se adicionan los valores constantes y se multiplica la sumatoria por su respectivo coeficiente
u = a0 + a*u;

%% Se grafica nuestra funcion
plot(x,u);
grid on 

set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Tarea 03 Par')
    legend('Funcion')