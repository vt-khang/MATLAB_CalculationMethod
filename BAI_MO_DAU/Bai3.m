clear all; clc;

% Cho ham so y = f(x) = 4*x^3-3*x^2-5*x+2
y = @(x) 4*x.^3-3*x.^2-5*x+2

% Tim gia tri y1 = f(1), y2 = f(2), y3 = f(-4), y4 = f(0)
y1 = y(1)
y2 = y(2)
y3 = y(-4)
y4 = y(0)

% Ve do thi ham so tren doan [-4, 1]
t = -4:0.1:1;
yt = y(t);
plot(t,yt,'r-')