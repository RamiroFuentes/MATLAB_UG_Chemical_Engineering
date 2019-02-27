% Jose Ramiro Fuentes Lara
% Ecuaciones Diferenciales Parciales
% Tarea 03 --- Corresponde a nuestra funcion par
% Ejercicio 1 de examen
clc; clear all;

% Funcion periodica correspondiente a la funcion de x^2 

%% Se definen nuestras variables constantes para el problema
% Dichas constantes son utiles cuando la funcion cuenta con una, nosotros
% le damos un valor arbitrario en este caso nuestro problema no con cuenta con
% algun valor constante ajeno a la funcion...
a1 = 1/3;
t = -2:.1:2;

t1 = -1:.1:1;
f = t1.^2;

%% Se establece nuestra condicion inicial asi como el intervalo de nuestra serie Par              % Parte constante de nuestra funcion
u = 0;               % Funciona para inicializar nuestra funcion u() par

%% Se evaluan los valores de nuestra sumatoria par 
for n= 1:10000
    u= u + (2*(pi^2*n^2*sin(n*pi) - 2*(sin(n*pi) - pi*n*cos(n*pi)) ) * cos(2*n*pi*t/2)) / (pi^3*n^3);
end 

%% Se adicionan los valores constantes y se multiplica la sumatoria por su respectivo coeficiente
u = a1 +u;

%% Se grafica nuestra funcion
plot(t,u,'b');
grid on 
hold on
plot(t1,f,'r*');

set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Repaso 01 Par')
    legend('Serie de Fourier','Funcion original')
    