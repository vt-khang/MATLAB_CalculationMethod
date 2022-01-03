clear all; clc;

% Tinh gia tri cac ham so sau tai x = 1, tinh dao ham bac 1 va bac 2 va tich phan tren doan [1, 2]

% a) f(x) = x^5-x^3+2*x-4
syms x;
f = x^5-x^3+2*x-4
f1 = subs(f,x,1)
df = diff(f,x)
df2 = diff(f,x,2)
I = int(f,x,1,2)

% b) g(x) = sin(pi*x/3)-cos(pi/4)
syms x;
g = sin(pi*x/3)-cos(pi/4)
g1 = subs(g,x,1)
gf = diff(g,x)
gf2 = diff(g,x,2)
I = int(g,x,1,2)

% c) h(x) = exp(x)+log(x^2)+1
syms x;
h = exp(x)+log(x^2)+1
h1 = subs(h,x,1)
hf = diff(h,x)
hf2 = diff(h,x,2)
I = int(h,x,1,2)