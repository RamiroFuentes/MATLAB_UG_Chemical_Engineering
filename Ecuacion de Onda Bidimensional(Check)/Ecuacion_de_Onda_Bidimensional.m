% Ecuaciones diferenciales parciales 
% Jose Ramiro Fuentes Lara
% Leonardo Dario Ramirez Jaime
% Andrea Isabel Casillas Hernandez
% Jose Luis Perez Mendez
clc;clear;close all;

% valores de nuestras constantes

a = 4;
b = 2;
c = sqrt(5);

x = 0:.1:a;
y = 0:.1:b;
t = 0:0.2:1;

% Definimos el ciclo 

 for k=1:length(t)     
    for i=1:length(x)       
        for j=1:length(y)
         u(i,j) = 0;   
            for m=1:100
                for n = 1:100
                    lambda= c*pi*sqrt(((m/a)^2)+((n/b)^2));
                    A=(102.4*(1-cos(m*pi))*(1-cos(n*pi)))/((pi^6)*((m*n)^3));
                    u(i,j)=u(i,j)+A*cos(lambda*t(k))*sin((m*pi*x(i))/a)*sin((n*pi*y(j))/b);
                end
            end
         end
     end
 
% Se grafica nuestra funcion y se le da formato
subplot(2,3,k),surf(u), title(t(k))

set(gcf,'Name','Ecuacion de onda bidimensional(Membrana)') 

xlabel('Eje X')
ylabel('Eje Y')
zlabel('Eje Z')
end
