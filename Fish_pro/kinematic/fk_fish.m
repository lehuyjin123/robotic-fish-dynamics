function [x,y] = fk_fish(q, L)

q1 = q(1); q2 = q(2); q3 = q(3);

x1 = L(1)*cos(q1);
y1 = L(1)*sin(q1);

x2 = x1 + L(2)*cos(q1+q2);
y2 = y1 + L(2)*sin(q1+q2);

x3 = x2 + L(3)*cos(q1+q2+q3);
y3 = y2 + L(3)*sin(q1+q2+q3);

x = [0 x1 x2 x3];
y = [0 y1 y2 y3];
end
