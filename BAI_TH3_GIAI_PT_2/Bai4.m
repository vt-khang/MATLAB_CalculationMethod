clear all; clc; format long;

% Xet bai toan tim nghiem cua phuong trinh dai so va sieu viet bang phuong phap tiep tuyen

% a) Viet function cho bai toan tren voi output la nghiem bai toan va input la ham so f, dao ham df, toa do nghiem thu ban dau xo va sai so gioi han Df

% b) Them cac dong lenh de function tu dong in ra bang gia tri va ve do thi cua nghiem cua phuong trinh

% c) Su dung function tren de giai Bai toan 1
figure(1);
syms x;
f = x^2 - sin(x) - 50;
df = diff(f,x);
xo = 2; Df = 10^(-3);
[xn,fx] = tieptuyen(f,df,xo,Df)

% d) Su dung function tren de giai Bai toan 2
figure(2);
syms x;
f = x^3 - 6*x^2 + 2*x + 25;
df = diff(f,x);
xo = 4; Df = 10^(-3);
[xn,fx] = tieptuyen(f,df,xo,Df)