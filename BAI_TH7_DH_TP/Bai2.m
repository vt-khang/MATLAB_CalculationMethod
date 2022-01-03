clear all; clc;

% Thuc hien lai bai toan 1 bang cong thuc nam diem
xx = [0.8; 0.9; 1; 1.1; 1.2; 1.3; 1.4];
yy = [0.7174; 0.7833; 0.8415; 0.8912; 0.9320; 0.9636; 0.9854];
df = 0.5403;

df_5DC = (-25*yy(3)+48*yy(4)-36*yy(5)+16*yy(6)-3*yy(7))/(3*(xx(7)-xx(3)))
rEdf_5DC = abs((df-df_5DC)/df)
df_5DG = (yy(1)-8*yy(2)+8*yy(4)-yy(5))/(3*(xx(5)-xx(1)))
rEdf_5DG = abs((df-df_5DG)/df)

T = table(df_5DC,rEdf_5DC,df_5DG,rEdf_5DG)