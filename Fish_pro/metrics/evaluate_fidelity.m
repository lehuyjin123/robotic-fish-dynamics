function F = evaluate_fidelity(p)

E_total = 0;

for k = 1:p.Nt
    t = (k-1)/p.Nt * p.T;

    [Xc,Yc] = continuous_model(p,t);
    [Xr,Yr] = robot_model(p,t);

    [Xr2,Yr2] = resample_curve(Xr,Yr,length(Xc));

    E_total = E_total + shape_error(Xc,Yc,Xr2,Yr2);
end

E = E_total / p.Nt;
Emax = p.Amax;

F = 1 - E/Emax;

end
