function param = params()

param.n = 3;

%% ===== MASS FROM SOLIDWORKS =====
param.m = [0.08011;
           0.06841;
           0.00457];

param.I = [0.004388;
           0.003716;
           0.000247];

param.r = [0.05;
           0.043;
           0.042];

%% ===== GEOMETRY =====
param.L = [0.20;
           0.20;
           0.20];

%% ===== STRUCTURE =====
param.K = diag([5 5 3]);
param.D = diag([0.5 0.5 0.3]);

%% ===== ACTUATION =====
param.A = 0.2;
param.f = 2;
param.omega = 2*pi*param.f;
param.k = pi/4;

end
