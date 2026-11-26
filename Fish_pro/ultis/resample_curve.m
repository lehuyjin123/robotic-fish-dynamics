function [Xr, Yr] = resample_curve(X, Y, M)

s = [0 cumsum(sqrt(diff(X).^2 + diff(Y).^2))];
s_new = linspace(0, s(end), M);

Xr = interp1(s, X, s_new);
Yr = interp1(s, Y, s_new);

end
