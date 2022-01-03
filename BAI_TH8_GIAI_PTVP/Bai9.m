clear all; clc;

% Thuc hien cac yeu cau sau

% a) Viet function giai phuong trinh vi phan bang phuong phap Euler cai tien

% b) Su dung function moi viet giai lai Bai tap 3 va Bai tap 4
f = @(x,y) x+y;
a = 0; b = 0.4; y0 = 1;
xx = a:0.1:b;
[yy] = eulercaitien(f,y0,a,b,xx)

f = @(x,y) 2*x^2+y;
a = 0; b = 0.5; y0 = 1;
xx = a:0.1:b;
[yy] = eulercaitien(f,y0,a,b,xx)