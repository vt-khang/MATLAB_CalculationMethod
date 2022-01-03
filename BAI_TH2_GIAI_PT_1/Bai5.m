clear all; clc; format long;

% Su dung function duoc viet o Bai tap 4 de giai bai toan exp(x) - x = 3 voi cac input sau
f = @(x) exp(x) - x - 3;

% a) a = 0, b = 3, Df = 10^(-3)
figure(1);
a = 0; b = 3; Df = 10^(-3);
[c,fc] = chiadoi(f,a,b,Df)

% b) a = 0, b = 2, Df = 5*10^(-3)
figure(2);
a = 0; b = 2; Df = 5*10^(-3);
[c,fc] = chiadoi(f,a,b,Df)

% c) a = -3, b = 0, Df = 10^(-4)
figure(3);
a = -3; b = 0; Df = 10^(-4);
[c,fc] = chiadoi(f,a,b,Df)

% d) a = -3, b = -1, Df = 10^(-4)
figure(4);
a = -3; b = -1; Df = 10^(-4);
[c,fc] = chiadoi(f,a,b,Df)