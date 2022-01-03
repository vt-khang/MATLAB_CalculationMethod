clear all; clc;

% Thuc hien cac yeu cau sau

% a) Viet function tinh cac he so H(k,n) trong (7,8) voi n = 8
k = 7; n = 8;
H_kn = H(k,n)

% b) Viet function tinh tich phan bang phuong phap Newton-Cotes tong quat

% c) Ap dung function vua viet de giai lai bai 3 voi n = 4
xx = [1; 2; 3; 4; 5; 6; 7];
yy = [4; -6; -14; -14; 0; 34; 94];
I = 42;
[I_NC] = double(newton_cotes(xx,yy,1,5,4)+newton_cotes(xx,yy,5,7,2))
rEI_NC = double(abs((I-I_NC)/I))
T = table(I_NC,rEI_NC)