clear all;
clc;

V0 = 20;    % (V)Voltaje inicial
R = 1000;   % (Omhs) Resistencia
C = 1e-6;   % (F) Capacitancia

RC = R*C;

% Ciclo de carga
V = @(t, V0, RC) V0*(1-exp(-t./RC));

t = 0:1e-9:5*RC;
v = V(t, V0, RC);

figure(1);
plot(v,t,"Color","red");

data = table2array(readtable("sim_1_data.csv", "NumHeaderLines",1));
x = data(:,1);
y = data(:,2);



figure(2);
plot(x,y,"Color","green");



