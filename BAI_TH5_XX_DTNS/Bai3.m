clear all; clc;

% Tim gia tri tai x = -2 va x = 0 cua ham y = f(x) duoc cho boi bang
xx = [-3.5, -2.5, -1.7, -0.8, 0.3, 1.5];
yy = [-8.982, -5.831, -4.261, -1.837, -3.298, -0.249];
x1 = -2; x2 = 0;

X = [1 xx(1) xx(1)^2 xx(1)^3 xx(1)^4 xx(1)^5; ...
    1 xx(2) xx(2)^2 xx(2)^3 xx(2)^4 xx(2)^5; ...
    1 xx(3) xx(3)^2 xx(3)^3 xx(3)^4 xx(3)^5; ...
    1 xx(4) xx(4)^2 xx(4)^3 xx(4)^4 xx(4)^5; ...
    1 xx(5) xx(5)^2 xx(5)^3 xx(5)^4 xx(5)^5; ...
    1 xx(6) xx(6)^2 xx(6)^3 xx(6)^4 xx(6)^5];
Y = [yy(1); yy(2); yy(3); yy(4); yy(5); yy(6)];

A = inv(X)*Y;

syms x;
P = A(1)+A(2)*x+A(3)*x^2+A(4)*x^3+A(5)*x^4+A(6)*x^5
y1 = double(subs(P,x,x1))
y2 = double(subs(P,x,x2))

fplot(P, [xx(1) xx(end)]);
hold on; plot(xx,yy,'bo');