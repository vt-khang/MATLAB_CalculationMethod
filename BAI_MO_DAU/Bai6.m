clear all; clc;

% Cho ham so y = f(x) = 4*x^3-3*x^2-5*x+2
syms x;
y = 4*x^3-3*x^2-5*x+2

% a) Tim gia tri y1 = f(1), y2 = f(2), y3 = f(-4), y4 = f(0) 
y1 = subs(y,x,1)
y2 = subs(y,x,2)
y3 = subs(y,x,-4)
y4 = subs(y,x,0)

% b) Ve do thi ham so tren doan [-4, 1]
fplot(y,[-4 1])

% c) Tinh dao ham cua ham so tai x = 0 
dy = diff(y,x);
dy1 = subs(dy,x,0)

% d) Tinh tich phan cua ham so tren doan [-2, 3]
F = int(y,x);
I = int(y,x,-2,3)