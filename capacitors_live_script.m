

%##Circuito 1
clear all;
close all;
clc;
% ------------- Parámetros--------------------%

V0 = 20;    % (V)       Voltaje inicial
R = 1000;   % (Omhs)    Resistencia
C = 1e-6;   % (F)       Capacitancia
RC = R*C;   % (s)       Constante RC

step = 1e-9;% Paso de generación de datos
gif_step = 0.5e-4;

% Voltaje ------------- %
fig_num_v = 1; % Número de figura
fig_title_v = sprintf("Circuit 1: V %.3f V, RC: %.3f s",V0, RC);
x_label_v = "Time (s)";
y_label_v = "Voltage (V)";
plot_args_v = {"-b", "Color", "red", "LineWidth", 2};

is_create_gif_v = true;
filename_v = "circuit_1_voltage.gif";
gif_line_args_v = {"Color", "red", "LineWidth", 2};


% Carga ---------------- %
fig_num_q = 2; % Número de figura
fig_title_q = sprintf("Circuit 1: V %.3f V, RC: %.3f s",V0, RC);
x_label_q = "Time (s)";
y_label_q = "Charge (C)";
plot_args_q = {"-b", "Color", "blue", "LineWidth", 2};

is_create_gif_q = true;
filename_q = "circuit_1_charge.gif";
gif_line_args_q = {"Color", "blue", "LineWidth", 2};

% --------------------------------------------%

% Modelo de voltaje de carga
V_charge = @(t) V0*(1-exp(-t./RC));

% Modelo voltaje en descarga
V_discharge = @(t) V0*(exp(-t./RC));

% Modelo de carga
Q = @(v) C.*v;

% Parametrización de t
t_cycle = 0:step:5*RC;
t = [t_cycle, t_cycle + t_cycle(end)];

% Parametrización de voltaje
v = [V_charge(t_cycle), V_discharge(t_cycle)];
q = Q(v);

% Graficación de voltaje
figure(fig_num_v);
plot(t,v,plot_args_v{:});
grid on;
title(fig_title_v);
xlabel(x_label_v);
ylabel(y_label_v);

% Graficación de carga
figure(fig_num_q);
plot(t,q,plot_args_q{:});
grid on;
title(fig_title_q);
xlabel(x_label_q);
ylabel(y_label_q);

% Crear gif de voltaje
if is_create_gif_v
    t_gif_cycle = 0:gif_step:5*RC;
    t_gif = [t_gif_cycle, t_gif_cycle + t_gif_cycle(end)];
    v_gif = [V_charge(t_gif_cycle), V_discharge(t_gif_cycle)];
    plot2gif(fig_num_v+10, t_gif,v_gif, fig_title_v, x_label_v, y_label_v, filename_v, gif_line_args_v);
end

% Crear gif de carga
if is_create_gif_q
    t_gif_cycle = 0:gif_step:5*RC;
    t_gif = [t_gif_cycle, t_gif_cycle + t_gif_cycle(end)];
    q_gif = Q([V_charge(t_gif_cycle), V_discharge(t_gif_cycle)]);
    plot2gif(fig_num_q+10, t_gif,q_gif, fig_title_q, x_label_q, y_label_q, filename_q, gif_line_args_q);
end

%##Circuito 2
clear all;
close all;
clc;
% ------------- Parámetros--------------------%

V0 = 20;    % (V)       Voltaje inicial
R = 1000;   % (Omhs)    Resistencia
C = 1e-6;   % (F)       Capacitancia
RC = R*C;   % (s)       Constante RC

step = 1e-9;% Paso de generación de datos
gif_step = 0.5e-4;

% Voltaje ------------- %
fig_num_v = 3; % Número de figura
fig_title_v = sprintf("Circuit 2: V %.3f V, RC: %.3f s",V0, RC);
x_label_v = "Time (s)";
y_label_v = "Voltage (V)";
plot_args_v = {"-b", "Color", "red", "LineWidth", 2};

is_create_gif_v = true;
filename_v = "circuit_2_voltage.gif";
gif_line_args_v = {"Color", "red", "LineWidth", 2};


% Carga ---------------- %
fig_num_q = 4; % Número de figura
fig_title_q = sprintf("Circuit 1: V %.3f V, RC: %.3f s",V0, RC);
x_label_q = "Time (s)";
y_label_q = "Charge (C)";
plot_args_q = {"-b", "Color", "blue", "LineWidth", 2};

is_create_gif_q = true;
filename_q = "circuit_1_charge.gif";
gif_line_args_q = {"Color", "blue", "LineWidth", 2};

% --------------------------------------------%

% Modelo de voltaje de carga
V_charge = @(t) V0*(1-exp(-t./RC));

% Modelo voltaje en descarga
V_discharge = @(t) V0*(exp(-t./RC));

% Modelo de carga
Q = @(v) C.*v;

% Parametrización de t
t_cycle = 0:step:5*RC;
t = [t_cycle, t_cycle + t_cycle(end)];

% Parametrización de voltaje
v = [V_charge(t_cycle), V_discharge(t_cycle)];
q = Q(v);

% Graficación de voltaje
figure(fig_num_v);
plot(t,v,plot_args_v{:});
grid on;
title(fig_title_v);
xlabel(x_label_v);
ylabel(y_label_v);

% Graficación de carga
figure(fig_num_q);
plot(t,q,plot_args_q{:});
grid on;
title(fig_title_q);
xlabel(x_label_q);
ylabel(y_label_q);

% Crear gif de voltaje
if is_create_gif_v
    t_gif_cycle = 0:gif_step:5*RC;
    t_gif = [t_gif_cycle, t_gif_cycle + t_gif_cycle(end)];
    v_gif = [V_charge(t_gif_cycle), V_discharge(t_gif_cycle)];
    plot2gif(fig_num_v+10, t_gif,v_gif, fig_title_v, x_label_v, y_label_v, filename_v, gif_line_args_v);
end

% Crear gif de carga
if is_create_gif_q
    t_gif_cycle = 0:gif_step:5*RC;
    t_gif = [t_gif_cycle, t_gif_cycle + t_gif_cycle(end)];
    q_gif = Q([V_charge(t_gif_cycle), V_discharge(t_gif_cycle)]);
    plot2gif(fig_num_q+10, t_gif,q_gif, fig_title_q, x_label_q, y_label_q, filename_q, gif_line_args_q);
end

