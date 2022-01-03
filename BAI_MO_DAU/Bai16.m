clear all; clc;

% Cho ham so f(x, y) = abs(x)+2*abs(y). Hay tinh gia tri cua f tai (1, 2) va (sqrt(2), exp(-1)) ve do thi f tren [-2, 4] x [-3, 3]

% a) Su dung khai bao kieu thay the (dung lenh @)
figure(1);
f = @(x,y) abs(x)+2*abs(y)
f1 = f(1,2)
f2 = f(sqrt(2),exp(-1))
[X,Y] = meshgrid(-2:0.1:2,-3:0.1:3);
Z = f(X,Y);
surf(X,Y,Z)

% b) Su dung khai bao kieu ham so (dung lenh syms)
figure(2);
syms x y;
f = abs(x)+2*abs(y)
f1 = subs(f,[x, y],[1, 2])
f2 = subs(f,[x, y],[sqrt(2), exp(-1)])
fsurf(f,[-2 4 -3 3])