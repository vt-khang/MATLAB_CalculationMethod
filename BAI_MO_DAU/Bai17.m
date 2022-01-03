clear all; clc;

% Thuc hien cac yeu cau sau

% a) Cho f(x) = x^2+2*x-4. Tinh dao ham, dao ham tai x = 2, nguyen ham va tich phan tu [0, 1]
syms x;
f = x^2+2*x-4
df = diff(f,x)
df1 = subs(df,x,2)
F = int(f,x)
I = int(f,x,0,1)

% b) Cho g(x) = (x^2+1)/(x+1). Tinh dao ham cap 2, dao ham cap 2 tai x = 1, nguyen ham va tich phan tu [-1, 1]
syms x;
g = (x^2+1)/(x+1)
gf = diff(g,x,2)
gf1 = subs(gf,x,1)
G = int(g,x)
I = int(g,x,-1,1)

% c) Cho h(x) = sin(2*x). Tinh dao ham, dao ham tai x = 0, nguyen ham va tich phan tu [0, Inf]
syms x;
h = sin(2*x)
hf = diff(h,x)
hf1 = subs(hf,x,0)
H = int(h,x)
I = int(h,x,0,Inf)