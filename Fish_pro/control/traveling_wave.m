function tau = traveling_wave(t,param)

n = param.n;

tau = zeros(n,1);

for i = 1:n
    tau(i) = param.A * sin(param.omega*t - param.k*i);
end

end
