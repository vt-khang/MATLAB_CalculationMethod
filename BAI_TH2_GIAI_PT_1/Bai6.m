clear all; clc; format long;

% Xet bai toan tim nghiem cua phuong trinh dai so va sieu viet bang phuong phap lap

% a) Viet function cho bai toan tren voi output la nghiem bai toan va input la ham so f, ham lap phi, toa do hai can a, b, toa do nghiem thu ban dau xo, sai so gioi han Df

% b) Them cac dong lenh de function tu dong in ra bang gia tri va ve do thi cua nghiem cua phuong trinh

% c) Thuc hien lai Bai tap 2
figure(1);
f = @(x) x + sin(x) - 2;
phi = @(x) 2 - sin(x);
xo = 1.05; Df = 10^(-3);
[xn,fx] = lap(f,phi,xo,Df)

% d) Thuc hien lai Bai tap 3
figure(2);
f = @(x) x^2 + x - 5;
phi = @(x) sqrt(5-x);
xo = 1.5; Df = 10^(-3);
[xn,fx] = lap(f,phi,xo,Df)