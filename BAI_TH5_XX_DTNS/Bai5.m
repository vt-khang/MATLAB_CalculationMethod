clear all; clc;

% Tim gia tri tai x = 5 va x = 10 cua ham y = f(x) duoc cho boi bang
xx = [2, 4.5, 5.7, 7.2, 9.3];
yy = [3.218, 1.642, 2.398, 2.145, 3.135];
x1 = 5; x2 = 10;

syms x;
L04 = ((x-xx(2))*(x-xx(3))*(x-xx(4))*(x-xx(5)))/((xx(1)-xx(2))*(xx(1)-xx(3))*(xx(1)-xx(4))*(xx(1)-xx(5)));
L14 = ((x-xx(1))*(x-xx(3))*(x-xx(4))*(x-xx(5)))/((xx(2)-xx(1))*(xx(2)-xx(3))*(xx(2)-xx(4))*(xx(2)-xx(5)));
L24 = ((x-xx(1))*(x-xx(2))*(x-xx(4))*(x-xx(5)))/((xx(3)-xx(1))*(xx(3)-xx(2))*(xx(3)-xx(4))*(xx(3)-xx(5)));
L34 = ((x-xx(1))*(x-xx(2))*(x-xx(3))*(x-xx(5)))/((xx(4)-xx(1))*(xx(4)-xx(2))*(xx(4)-xx(3))*(xx(4)-xx(5)));
L44 = ((x-xx(1))*(x-xx(2))*(x-xx(3))*(x-xx(4)))/((xx(5)-xx(1))*(xx(5)-xx(2))*(xx(5)-xx(3))*(xx(5)-xx(4)));

L = L04*yy(1)+L14*yy(2)+L24*yy(3)+L34*yy(4)+L44*yy(5)
y1 = double(subs(L,x,x1))
y2 = double(subs(L,x,x2))

fplot(L, [xx(1) xx(end)]);
hold on; plot(xx,yy,'bo');