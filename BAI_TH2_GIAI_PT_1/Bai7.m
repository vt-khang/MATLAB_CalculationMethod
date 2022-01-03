clear all; clc; format long;

% Su dung function duoc viet o Bai tap 6 de giai bai toan x - x/2 = 1/x voi phi = x/2 + 1/x va cac input sau
f = @(x) x - x/2 - 1/x;
phi = @(x) x/2 + 1/x;

% a) xo = 1, Df = 10^(-3)
figure(1);
xo = 1; Df = 10^(-3);
[xn,fx] = lap(f,phi,xo,Df)

% b) xo = 2, Df = 3*10^(-3)
figure(2);
xo = 2; Df = 3*10^(-3);
[xn,fx] = lap(f,phi,xo,Df)

% c) xo = -2, Df = 10^(-2)
figure(3);
xo = -2; Df = 10^(-2);
[xn,fx] = lap(f,phi,xo,Df)

% d) xo = -5, Df = 10^(-4)
figure(4);
xo = -5; Df = 10^(-4);
[xn,fx] = lap(f,phi,xo,Df)