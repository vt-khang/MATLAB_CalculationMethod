clear all; clc;

% Thuc hien cac yeu cau sau

% a) Viet function giai phuong trinh vi phan bang phuong phap Runge-Kutta bac 3

% b) Su dung function moi viet giai lai Bai tap 5 va Bai tap 6
f = @(x,y) x+y;
a = 0; b = 0.4; x0 = a; y0 = 1;
xx = a:0.1:b;
[yy] = runge_kutta3(f,x0,y0,a,b,xx)

f = @(x,y) 2*x^2+y;
a = 0; b = 0.5; x0 = a; y0 = 1;
xx = a:0.1:b;
[yy] = runge_kutta3(f,x0,y0,a,b,xx)