% Jose Ramiro Fuentes Lara
% Ecuaciones Diferenciales Parciales
% Ejercicio 04
clc; clear;

%% Se definen nuestras variables constantes para el problema
% Dichas constantes son utiles cuando la funcion cuenta con una, nosotros
% le damos un valor arbitrario en este caso nuestro problema no con cuenta con
% algun valor constante ajeno a la funci?n...

%% Se establece nuestra condicion inicial asi como el intervalo de nuestra serie
a = pi;         % Parte constante de nuestra funcion
x= -pi:.01:pi;  % Intervalo de nuestra funcion periodica
u = 0;          % Funciona para inicializar nuestra funcion u()

%% Se evaluan los valores de nuestra sumatoria
for n= 1:1000
    u = u + ( (cos(n*pi)*sin(n*x)) / (n) ) ;
end

%% Se adicionan los valores constantes y se multiplica la sumatoria por su respectivo coeficiente
u = a - 2*u;

%% Se grafica nuestra funcion
plot(x,u);
grid on

set(gcf,'Name','Ecuaciones Diferenciales Parciales')
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Serie de Fourier 04')
    legend('Funcion Periodica')
