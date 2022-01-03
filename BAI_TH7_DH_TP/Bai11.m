clear all; clc;

% Thuc hien cac yeu cau sau

% a) Viet function tinh tich phan bang phuong phap simpson 3/8

% b) Ap dung function vua viet de giai lai Bai tap 3 va Bai tap 4
xx = [1; 2; 3; 4; 5; 6; 7];
yy = [4; -6; -14; -14; 0; 34; 94];
a = 1; b = 7; I = 42;
[I_SS38] = simpson38(xx,yy,a,b)
rEI_SS38 = abs((I-I_SS38)/I)
T = table(I_SS38,rEI_SS38)

xx = [-2; -1; 0; 1; 2; 3; 4];
yy = [24; 1; 4; 3; -8; -11; 36];
a = -2; b = 4; I = 7.2;
[I_SS38] = simpson38(xx,yy,a,b)
rEI_SS38 = abs((I-I_SS38)/I)
T = table(I_SS38,rEI_SS38)