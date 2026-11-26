clear
clc
close all

%% ================= PARAMETERS =================
param = params();        % dùng file params.m của bạn

n = param.n;

%% ================= INITIAL STATE =================
q0  = zeros(n,1);
dq0 = zeros(n,1);
x0  = [q0; dq0];

%% ================= SIMULATION =================
tspan = [0 5];

[t,x] = ode45(@(t,x) fish_ode(t,x,param), tspan, x0);

%% ================= POST PROCESS =================
q  = x(:,1:n);
dq = x(:,n+1:2*n);

figure
plot(t,q)
xlabel('Time (s)')
ylabel('Joint angle (rad)')
title('Multi-link Fish Dynamics')
grid on
