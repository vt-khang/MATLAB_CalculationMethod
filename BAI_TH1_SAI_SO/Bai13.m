clear all; clc; format long;

% Tim gia tri ham so u (lay 3 chu so thap phan) va tinh sai so tuyet doi gioi han, sai so tuong doi gioi han do viec lam tron so tai cac diem cho truoc

% a) u = log(2*y+x^2) tai x = 1.976, x*y = 0.532
syms x y;
u = log(2*y+x^2);
u_e = double(subs(u,[x, y],[1.976, 0.532/1.976]));
u_a = round(u_e,3);
aEu = abs(u_e - u_a)
rEu = aEu/abs(u_e)

% b) u = y*exp(x) - x^2 tai x = 1.675, y = 1.073
syms x y;
u = y*exp(x) - x^2;
u_e = double(subs(u,[x, y],[1.675, 1.073]));
u_a = round(u_e,3);
aEu = abs(u_e - u_a)
rEu = aEu/abs(u_e)

% c) u = x*tan(y) + (x+y)^2 tai x = -1.395, y = 1.643
syms x y;
u = x*tan(y) + (x+y)^2;
u_e = double(subs(u,[x, y],[-1.395, 1.643]));
u_a = round(u_e,3);
aEu = abs(u_e - u_a)
rEu = aEu/abs(u_e)

% d) Viet function tong quat cho cac bai toan tren
