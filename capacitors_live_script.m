clear all;
clc;

V0 = 20;    % (V)       Voltaje inicial
R = 1000;   % (Omhs)    Resistencia
C = 1e-6;   % (F)       Capacitancia
RC = R*C;   % (s)       Constante RC

step = 1e-9;% Paso de generación de datos 

% Modelo de voltaje de carga
V_charge = @(t, V0, RC) V0*(1-exp(-t./RC));

% Modelo voltaje en descarga
V_discharge = @(t, V0, RC) V0*(exp(-t./RC));

% Parametrización de t
t_cycle = 0:step:5*RC;
t = [t_cycle, t_cycle + t_cycle(end)];

% Parametrización de voltaje
v = [V_charge(t_cycle, V0, RC), V_discharge(t_cycle,V0, RC)];

figure(1);
plot(t,v,'.', "Color","red");
grid on;




