

%## Circuito 1
clear all;
close all;
clc;
% ------------- Parámetros--------------------%

V0 = 20;    % (V)       Voltaje inicial
R = 1000;   % (Omhs)    Resistencia
C = 1e-6;   % (F)       Capacitancia
RC = R*C;   % (s)       Constante RC

step = 1e-9;% Paso de generación de datos

fig_num = 1; % Número defigura
fig_title = sprintf("Circuit 1: V %.3f V, RC: %.3f s",V0, RC);
x_label = "Time (s)";
y_label = "Voltage (V)";
plot_args = {"-b", "Color", "red", "LineWidth", 2};

is_create_gif = true;
filename = "circuit_1.gif";
gif_step = 0.5e-4;
gif_line_args = {"Color", "red", "LineWidth", 2};

% --------------------------------------------%

% Modelo de voltaje de carga
V_charge = @(t, V0, RC) V0*(1-exp(-t./RC));

% Modelo voltaje en descarga
V_discharge = @(t, V0, RC) V0*(exp(-t./RC));

% Parametrización de t
t_cycle = 0:step:5*RC;
t = [t_cycle, t_cycle + t_cycle(end)];

% Parametrización de voltaje
v = [V_charge(t_cycle, V0, RC), V_discharge(t_cycle,V0, RC)];

figure(fig_num);
plot(t,v,plot_args{:});
grid on;
title(fig_title);
xlabel(x_label);
ylabel(y_label);

if is_create_gif
    t_gif_cycle = 0:gif_step:5*RC;
    t_gif = [t_gif_cycle, t_gif_cycle + t_gif_cycle(end)];
    v_gif = [V_charge(t_gif_cycle, V0, RC), V_discharge(t_gif_cycle,V0, RC)];
    plot2gif(fig_num+1, t_gif,v_gif, fig_title, x_label, y_label, filename, gif_line_args);
end

%## Circuito 2
clear all;
close all;
clc;
% ------------- Parámetros--------------------%

V0 = 10;    % (V)       Voltaje inicial
R = 1000;   % (Omhs)    Resistencia
C = 1e-6;   % (F)       Capacitancia
RC = R*C;   % (s)       Constante RC

step = 1e-9;% Paso de generación de datos

fig_num = 2; % Número defigura
fig_title = sprintf("Circuit 2: V %.3f V, RC: %.3f s",V0, RC);
x_label = "Time (s)";
y_label = "Voltage (V)";
plot_args = {"-b", "Color", "red", "LineWidth", 2};

is_create_gif = true;
filename = "circuit_2.gif";
gif_step = 0.5e-4;
gif_line_args = {"Color", "red", "LineWidth", 2};

% --------------------------------------------%

% Modelo de voltaje de carga
V_charge = @(t, V0, RC) V0*(1-exp(-t./RC));

% Modelo voltaje en descarga
V_discharge = @(t, V0, RC) V0*(exp(-t./RC));

% Parametrización de t
t_cycle = 0:step:5*RC;
t = [t_cycle, t_cycle + t_cycle(end)];

% Parametrización de voltaje
v = [V_charge(t_cycle, V0, RC), V_discharge(t_cycle,V0, RC)];

figure(fig_num);
plot(t,v,plot_args{:});
grid on;
title(fig_title);
xlabel(x_label);
ylabel(y_label);

if is_create_gif
    t_gif_cycle = 0:gif_step:5*RC;
    t_gif = [t_gif_cycle, t_gif_cycle + t_gif_cycle(end)];
    v_gif = [V_charge(t_gif_cycle, V0, RC), V_discharge(t_gif_cycle,V0, RC)];
    plot2gif(fig_num+1, t_gif,v_gif, fig_title, x_label, y_label, filename, gif_line_args);
end

