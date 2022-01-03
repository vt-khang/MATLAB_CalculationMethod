clear all; clc; format long;

% Xet bai toan tim nghiem cua phuong trinh dai so va sieu viet bang phuong phap day cung

% a) Viet function cho bai toan tren voi output la nghiem bai toan va input la ham so f, toa do hai can a, b va sai so gioi han Df

% b) Them cac dong lenh de function tu dong in ra bang gia tri va ve do thi cua nghiem cua phuong trinh

% c) Su dung function tren de giai Bai toan 3
f = @(x) x^2 - sin(x) - 50;
a = 0; b = 8; Df = 3*10^(-3);
[c,fc] = daycung(f,a,b,Df)