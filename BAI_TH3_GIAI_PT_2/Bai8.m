clear all; clc; format long;

% Su dung phuong phap tiep tuyen va phuong phap day cung de giai quyet cac bai tap sau voi cung Df = 10^(-3)
Df = 10^(-3);

% a) exp(x) + 2^(-x) + 2*cos(x) = 6
figure(1);
syms x;
f = exp(x) + 2^(-x) + 2*cos(x) - 6;
df = diff(f,x);
xo = 1.5;
subplot(2,1,1);
[xn,fx] = tieptuyen(f,df,xo,Df)
f = @(x) exp(x) + 2^(-x) + 2*cos(x) - 6;
a = 1; b = 3;
subplot(2,1,2);
[c,fc] = daycung(f,a,b,Df)

% b) log(x-1) + cos(x-1) = 0
figure(2);
syms x;
f = log(x-1) + cos(x-1);
df = diff(f,x);
xo = 1.5;
subplot(2,1,1);
[xn,fx] = tieptuyen(f,df,xo,Df)
f = @(x) log(x-1) + cos(x-1);
a = 2; b = 3;
subplot(2,1,2);
[c,fc] = daycung(f,a,b,Df)

% c) (x-2)^2 - log(x) = 0
figure(3);
syms x;
f = (x-2)^2 - log(x);
df = diff(f,x);
xo = 1.5;
subplot(2,1,1);
[xn,fx] = tieptuyen(f,df,xo,Df)
f = @(x) (x-2)^2 - log(x);
a = 1; b = 3;
subplot(2,1,2);
[c,fc] = daycung(f,a,b,Df)

% d) sin(x) = exp(-x)
figure(4);
syms x;
f = sin(x) - exp(-x);
df = diff(f,x);
xo = 0.5;
subplot(2,1,1);
[xn,fx] = tieptuyen(f,df,xo,Df)
f = @(x) sin(x) - exp(-x);
a = 0; b = 2;
subplot(2,1,2);
[c,fc] = daycung(f,a,b,Df)