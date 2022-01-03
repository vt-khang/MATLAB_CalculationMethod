clear all; clc; format long;

% Mot cai xa nha chiu luc co do vong omega phu thuoc vao vi tri x thuoc [0, L] duoc cho boi phuong trinh
%       omega = omega_o*(-x^5+2*L^2*x^3-L^4*x)/(120*E*I*L)
% trong do E = 50000 la do cung, I = 30000 la tiet dien, L = 600 la chieu dai, omega_o = 2.5 la he so vat lieu cua xa nha
% De tim do vong lon nhat cua xa nha, nguoi ta thuc hien nhu sau:
% - Buoc 1: Tinh dao ham D_omega va ve do thi cua no de tim khoang phan ly nghiem
% - Buoc 2: Giai phuong trinh D_omega = 0 de tim vi tri ma do vong dat cuc tri
% - Buoc 3: So sanh do vong tai cuc tri va bien (x = 0 va x = L) de tim do vong lon nhat
% Hay thuc hien cac buoc tren va tim do vong cuc dai
E = 50000; I = 30000; L = 600; omega_o = 2.5;
syms x;
omega = omega_o*(-x^5+2*L^2*x^3-L^4*x)/(120*E*I*L);
D_omega = diff(omega,x);
D_omega_2 = diff(omega,x,2);
xo = 2.5; Df = 10^(-3);
figure(1);
line([0 0], ylim);
line(xlim, [0 0]);
fplot(D_omega,[0 1000]);
figure(2);
[xn,omega_x] = tieptuyen(D_omega,D_omega_2,xo,Df)
x0 = subs(omega,x,0)
xN = double(subs(omega,x,xn))
xL = subs(omega,x,L)
max_omega = max(max(x0,xL),xN)