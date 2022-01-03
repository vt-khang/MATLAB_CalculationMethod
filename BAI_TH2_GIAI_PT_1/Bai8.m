clear all; clc; format long;

% Su dung phuong phap chia doi va phuong phap lap de giai quyet cac bai tap sau voi cung Df = 10^(-3)
Df = 10^(-3);

% a) exp(x) + 2^(-x) + 2*cos(x) = 6
figure(1);
f = @(x) exp(x) + 2^(-x) + 2*cos(x) - 6;
phi = @(x) log(6 - 2^(-x) - 2*cos(x));
a = 1; b = 3; xo = 1.5;
subplot(2,1,1);
[c,fc] = chiadoi(f,a,b,Df)
subplot(2,1,2);
[xn,fx] = lap(f,phi,xo,Df)

% b) log(x-1) + cos(x-1) = 0
figure(2);
f = @(x) log(x-1) + cos(x-1);
phi = @(x) exp(-cos(x-1)) + 1;
a = 1; b = 3; xo = 1.5;
subplot(2,1,1);
[c,fc] = chiadoi(f,a,b,Df)
subplot(2,1,2);
[xn,fx] = lap(f,phi,xo,Df)

% c) (x-2)^2 - log(x) = 0
figure(3);
f = @(x) (x-2)^2 - log(x);
phi = @(x) sqrt(log(x)) + 2;
a = 1; b = 3; xo = 1.5;
subplot(2,1,1);
[c,fc] = chiadoi(f,a,b,Df)
subplot(2,1,2);
[xn,fx] = lap(f,phi,xo,Df)

% d) sin(x) = exp(-x)
figure(4);
f = @(x) sin(x) - exp(-x);
phi = @(x) asin(exp(-x));
a = 0; b = 2; xo = 0.5;
subplot(2,1,1);
[c,fc] = chiadoi(f,a,b,Df)
subplot(2,1,2);
[xn,fx] = lap(f,phi,xo,Df)