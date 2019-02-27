%% Ecuaciones diferenciales parciales
% Primer examen parcial 
% Jose Ramiro Fuentes Lara
% Andrea Isabel Casillas Hernandez
% Jose Luis Perez Mendez
% Leonardo Dario Ramirez Jaime
clc;clear;close all;

%% Ejercicio 03 Encuentre la funcion para una cuarda vibrante sujeta a los extremos 
% u(0,t) = u(L,t)=0
% u(x,0)= 0
% u(x,0) = 0.1sin(2x)

L = pi;
c = 1;
u = 0;
n = 2; % La funcion solo es posible en n = 2

%% Se establece nuestra condicion inicial asi como el intervalo de nuestra serie

x= 0:.1:L;     % Intervalo de nuestra funcion periodica (Es de cero a l por que representa la longitud de la cuerda)
y = 0.1*sin(2*x); % Es evaluar nuestra funcion original en un tiempo 0

%% Se evaluan los valores de nuestra sumatoria 

for t = 0:.3:20
    lambda= c*n*pi/L;
    u=u+(1/(5*lambda*pi))*sin(lambda*t)*sin(2*x);  
    plot(x,u);
    hold on;
end 

%% Se grafica nuestra funcion y se le da formato
grid on 
plot(x,y,'ro')

set(gcf,'Name','Ecuaciones Diferenciales Parciales') 
    xlabel('Eje X')
    ylabel('Eje Y')
    title('Ejercicio 03 Longitud de onda')
    legend('f(x) = 0.1*sin(2*x)')