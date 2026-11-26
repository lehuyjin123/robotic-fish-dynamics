function [X, Y] = continuous_model(params, t)

L = params.L;
Nx = params.Nx;
Amax = params.Amax;
p = params.p;
omega = params.omega;
k = params.k;

x = linspace(0, L, Nx);

A = Amax * (x/L).^p;

y = A .* sin(omega*t - k*x);

X = x;
Y = y;

end
