clear all; clc;

% Thuc hien cac yeu cau sau

% a) Viet function giai phuong trinh vi phan bang phuong phap lap

% b) Su dung function moi viet giai lai Bai tap 1 va Bai tap 2
syms x y;
f = x + y;
a = 0; b = 0.4; rEy_t = 10^(-3);
y0 = 1;
[yn,rEyn_t] = lap(f,y0,a,b,rEy_t)

syms x y;
f = 2*x^2 + y;
a = 0; b = 0.5; rEy_t = 10^(-3);
y0 = 1;
[yn,rEyn_t] = lap(f,y0,a,b,rEy_t)