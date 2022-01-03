clear all; clc;

% Tim gia tri tai x = 5 va x = 10 cua ham y = f(x) duoc cho boi bang
xx = [2, 4.5, 5.7, 7.2, 9.3];
yy = [3.218, 1.642, 2.398, 2.145, 3.135];
x1 = 5; x2 = 10;

X = [1 xx(1) xx(1)^2 xx(1)^3 xx(1)^4; ...
    1 xx(2) xx(2)^2 xx(2)^3 xx(2)^4; ...
    1 xx(3) xx(3)^2 xx(3)^3 xx(3)^4; ...
    1 xx(4) xx(4)^2 xx(4)^3 xx(4)^4; ...
    1 xx(5) xx(5)^2 xx(5)^3 xx(5)^4];
Y = [yy(1); yy(2); yy(3); yy(4); yy(5)];

A = inv(X)*Y;

syms x;
P = A(1)+A(2)*x+A(3)*x^2+A(4)*x^3+A(5)*x^4
y1 = double(subs(P,x,x1))
y2 = double(subs(P,x,x2))

fplot(P, [xx(1) xx(end)]);
hold on; plot(xx,yy,'bo');