function dx = dynamics(~,x,I1,I2,I3,d1,d2,d3)

q1 = x(1); q2 = x(2); q3 = x(3);
dq1 = x(4); dq2 = x(5); dq3 = x(6);

% Torque input (sin wave swimming)
tau1 = 0;
tau2 = 10*sin(2*pi*1*x(1));
tau3 = 8*sin(2*pi*1*x(1));

% Simple decoupled model
ddq1 = (tau1 - d1*dq1)/I1;
ddq2 = (tau2 - d2*dq2)/I2;
ddq3 = (tau3 - d3*dq3)/I3;

dx = zeros(6,1);
dx(1) = dq1;
dx(2) = dq2;
dx(3) = dq3;
dx(4) = ddq1;
dx(5) = ddq2;
dx(6) = ddq3;

end
a