function C = coriolis_matrix(q,dq,param)

m = param.m;
L = param.L;
r = param.r;

q2 = q(2);
q3 = q(3);

dq1 = dq(1);
dq2 = dq(2);
dq3 = dq(3);

s2 = sin(q2);
s3 = sin(q3);
s23 = sin(q2+q3);

h1 = -m(2)*L(1)*r(2)*s2 ...
     -m(3)*(L(1)*L(2)*s2 + L(1)*r(3)*s23);

h2 = -m(3)*L(2)*r(3)*s3;

C = zeros(3);

C(1,1) = h1*dq2 + (h1+h2)*dq3;
C(1,2) = h1*(dq1+dq2) + h2*dq3;
C(1,3) = (h1+h2)*(dq1+dq2+dq3);

C(2,1) = -h1*dq1;
C(2,2) = h2*dq3;
C(2,3) = h2*(dq2+dq3);

C(3,1) = -(h1+h2)*dq1;
C(3,2) = -h2*dq2;
C(3,3) = 0;

end
