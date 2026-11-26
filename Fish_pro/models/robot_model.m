function [X, Y] = robot_model(params, t)

N = params.N;
L = params.L;
omega = params.omega;
phi = params.phi;

link_lengths = params.link_lengths;   % vector size N
A_i = params.A_i;                     % vector size N

theta = zeros(1,N);

for i = 1:N
    theta(i) = A_i(i)*sin(omega*t + (i-1)*phi);
end

X = zeros(1,N+1);
Y = zeros(1,N+1);

cum_angle = 0;

for i = 1:N
    cum_angle = cum_angle + theta(i);
    X(i+1) = X(i) + link_lengths(i)*cos(cum_angle);
    Y(i+1) = Y(i) + link_lengths(i)*sin(cum_angle);
end

end
