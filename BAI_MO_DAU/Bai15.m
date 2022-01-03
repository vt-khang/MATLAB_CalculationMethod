clear all; clc;

% Cho ham so f(x) = x*sin(x). Hay tinh gia tri cua f tai x = 1 va x = 3 va ve do thi f tren [-2, 4] va

% a) Su dung khai bao kieu thay the (dung lenh @)
figure(1);
f = @(x) x.*sin(x)
f1 = f(1)
f2 = f(3)
t = -2:0.1:4;
ft = f(t);
plot(t,ft,'r-')

% b) Su dung khai bao kieu ham so (dung lenh syms)
figure(2);
syms x;
f = x*sin(x)
f1 = subs(f,x,1)
f2 = subs(f,x,3)
fplot(f,[-2 4])