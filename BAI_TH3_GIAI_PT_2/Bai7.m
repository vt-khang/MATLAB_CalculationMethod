clear all; clc; format long;

% Su dung function duoc viet o Bai toan 6 de giai phuong trinh 2^x + 3^x - 10*x = 30 voi cac input sau
f = @(x) 2^x + 3^x - 10*x - 30;

% a) a = -5, b = -3, Df = 10^(-3)
figure(1);
a = -5; b = -3; Df = 10^(-3);
[c,fc] = daycung(f,a,b,Df)

% b) a = -4, b = -2, Df = 2*10^(-3)
figure(2);
a = -4; b = -2; Df = 2*10^(-3);
[c,fc] = daycung(f,a,b,Df)

% c) a = 2, b = 4, Df = 3*10^(-3)
figure(3);
a = 2; b = 4; Df = 3*10^(-3);
[c,fc] = daycung(f,a,b,Df)

% d) a = 2, b = 4, Df = 3*10^(-3)
figure(4);
a = 2; b = 4; Df = 3*10^(-3);
[c,fc] = daycung(f,a,b,Df)