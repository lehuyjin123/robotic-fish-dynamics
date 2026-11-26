function dx = fish_ode(t,x,param)

n = param.n;

q  = x(1:n);
dq = x(n+1:2*n);

q  = q(:);
dq = dq(:);

%% ===== MODEL MATRICES =====
M = mass_matrix(q,param);
C = coriolis_matrix(q,dq,param);
K = param.K;
D = param.D;

%% ===== ACTUATION =====
tau = traveling_wave(t,param);

%% ===== DYNAMICS =====
ddq = M \ (tau - C*dq - D*dq - K*q);

dx = [dq; ddq];

end
