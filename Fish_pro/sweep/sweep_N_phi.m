N_list = [3 4 5 6];
phi_list = linspace(0.1,0.8,20);

results = [];

for N = N_list
    for phi = phi_list
        
        p = params();
        p.N = N;
        p.phi = phi;
        p.link_lengths = (p.L/p.N)*ones(1,N);
        p.A_i = linspace(0.2*p.Amax,p.Amax,N);
        
        F = evaluate_fidelity(p);
        [tau_max, P_avg] = compute_dynamics(p);
        
        results = [results; N phi F tau_max P_avg];
        
    end
end
