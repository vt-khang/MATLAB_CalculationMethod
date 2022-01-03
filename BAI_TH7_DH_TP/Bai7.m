clear all; clc;

% Thuc hien cac yeu cau sau

% a) Viet function tinh dao ham bang phuong phap sai phan tien va sai phan lui

% b) Ap dung function vua viet de giai lai Bai tap 1
xx = [0.8; 0.9; 1; 1.1; 1.2; 1.3; 1.4];
yy = [0.7174; 0.7833; 0.8415; 0.8912; 0.9320; 0.9636; 0.9854];
X = 1; df = 0.5403;
[df_SPT,df_SPL] = saiphan(xx,yy,X)
rEdf_SPT = abs((df-df_SPT)/df)
rEdf_SPL = abs((df-df_SPL)/df)

T = table(df_SPT,rEdf_SPT,df_SPL,rEdf_SPL)