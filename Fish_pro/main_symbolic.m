clear; clc;
syms q1 q2 q3 dq1 dq2 dq3 real
syms m1 m2 m3 I1 I2 I3 real
syms L1 L2 L3 r1 r2 r3 real

% Góc tuyệt đối
th1 = q1;
th2 = q1+q2;
th3 = q1+q2+q3;

% COM positions
x1 = r1*cos(th1);
y1 = r1*sin(th1);

x2 = L1*cos(q1) + r2*cos(th2);
y2 = L1*sin(q1) + r2*sin(th2);

x3 = L1*cos(q1) + L2*cos(q1+q2) + r3*cos(th3);
y3 = L1*sin(q1) + L2*sin(q1+q2) + r3*sin(th3);

% velocities
vx1 = jacobian(x1,[q1 q2 q3])*[dq1;dq2;dq3];
vy1 = jacobian(y1,[q1 q2 q3])*[dq1;dq2;dq3];

vx2 = jacobian(x2,[q1 q2 q3])*[dq1;dq2;dq3];
vy2 = jacobian(y2,[q1 q2 q3])*[dq1;dq2;dq3];

vx3 = jacobian(x3,[q1 q2 q3])*[dq1;dq2;dq3];
vy3 = jacobian(y3,[q1 q2 q3])*[dq1;dq2;dq3];

% kinetic energy
T = 1/2*m1*(vx1^2+vy1^2) + 1/2*I1*dq1^2 ...
  + 1/2*m2*(vx2^2+vy2^2) + 1/2*I2*(dq1+dq2)^2 ...
  + 1/2*m3*(vx3^2+vy3^2) + 1/2*I3*(dq1+dq2+dq3)^2;

% generalized coordinates
q = [q1 q2 q3];
dq = [dq1 dq2 dq3];

% Mass matrix
M = jacobian(jacobian(T,dq).',dq);

simplify(M)
