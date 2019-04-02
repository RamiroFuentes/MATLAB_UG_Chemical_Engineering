% Jose Ramiro Fuentes Lara
% Ecuaciones Diferenciales Parciales
% Ecuaciones de Bessel
clc; clear; close all;

%% variables declaradas por nosotors
R = 1;
c = 1;
x = 0:.1:100;

%% Declaramos nuestra funcion de Bessel
f=@(x) besselj(0,x); % Se declara una funcion de besel 

%% Se buscan las raices de nuestra funcion
alfa = raicesDeBessel(f,x); % Encontramos nuestro alfa
a = zeros(1,length(alfa));

%% Se determina el parametro r
r = 0:.05:R;

%% Creamos una matriz con nuestros datos de la ecuacion de Bessel evaluada
for i = 1:length(alfa)
    f = @(r) r.*(1-r.^2).*besselj(0,alfa(i)*r/R);
    a(i) = 2*integral(f,0,R)/(R^2*besselj(1,alfa(i)))^2;
end

%% Se comparan dichos datos con respecto al tiempo
for t = 0:0.1:1
    u = 0;
    for i = 1:length(alfa)
        lamda = c*alfa(i)/R;
        u = u + a(i)*cos(lamda*t)*besselj(0,alfa(i)*r/R);
    end
    hold on;
    plot(r,u);
end

%% Formato de nuestra grafica
xlabel('x')
ylabel('J(x)')
title('Funciones J_\nu (X) de Bessel')
grid on 