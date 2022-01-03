clear all; clc;

% Thuc hien cac yeu cau sau

% a) Viet function tinh tich phan bang phuong phap Gauss 3 diem nut

% b) Ap dung function vua viet de giai lai Bai tap 5 va Bai tap 6
syms t; f = exp(t);
a = 2; b = 4; I = int(f,t,2,4);
[I_G3] = gauss3(f,a,b)
rEI_G3 = double(abs((I-I_G3)/I))
T = table(I_G3,rEI_G3)

syms t; f = sin(t);
a = 0; b = pi; I = int(f,t,0,pi);
[I_G3] = gauss3(f,a,b)
rEI_G3 = double(abs((I-I_G3)/I))
T = table(I_G3,rEI_G3)