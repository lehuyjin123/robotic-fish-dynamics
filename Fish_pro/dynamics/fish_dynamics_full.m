function dx = fish_dynamics_full(t,x,param)

n = param.n;

q  = x(1:n);
dq = x(n+1:2*n);

q  = q(:);
dq = dq(:);

K = param.K;
D = param.D;
M = param.M;

%% ===== Travelling Wave Actuation =====
tau = zeros(n,1);
for i = 1:n
    tau(i) = param.A * sin(param.omega*t - param.k*i);
end

%% ===== Dynamics =====
ddq = M \ (tau - K*q - D*dq);
ddq = ddq(:);

dx = [dq; ddq];

end
