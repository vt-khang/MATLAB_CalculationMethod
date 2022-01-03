clear all; clc;

% Thuc hien cac yeu cau sau

% a) Viet function tinh cac dao ham rieng cap 2 cua ham so hai bien f(x,y) va kiem tra bieu thuc fxy = fyx

% b) Ap dung de tinh dao ham rieng cap hai cua ham so f(x,y) = x/y*sin(y/x)
syms x y;
f = x/y*sin(y/x)
[fxx,fxy,fyx,fyy] = tinhDaoHamRiengCap2(f)