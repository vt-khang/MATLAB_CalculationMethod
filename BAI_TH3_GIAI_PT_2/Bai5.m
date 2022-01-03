clear all; clc; format long;

% Su dung function duoc viet o Bai toan 4 de giai phuong trinh x + log(x+2) - 10 voi cac input sau
syms x;
f = x + log(x+2) - 10;
df = diff(f,x);

% a) xo = 7, Df = 10^(-3)
figure(1);
xo = 7; Df = 10^(-3);
[xn,fx] = tieptuyen(f,df,xo,Df)

% b) xo = 9, Df = 2*10^(-3)
figure(2);
xo = 9; Df = 2*10^(-3);
[xn,fx] = tieptuyen(f,df,xo,Df)

% c) xo = 5, Df = 5*10^(-3)
figure(3);
xo = 5; Df = 5*10^(-3);
[xn,fx] = tieptuyen(f,df,xo,Df)

% d) xo = 3, Df = 5*10^(-3)
figure(4);
xo = 3; Df = 5*10^(-3);
[xn,fx] = tieptuyen(f,df,xo,Df)