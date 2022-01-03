clear all; clc;

% Tim gia tri tai x = -2 va x = 0 cua ham y = f(x) duoc cho boi bang
xx = [-3.5, -2.5, -1.7, -0.8, 0.3, 1.5];
yy = [-8.982, -5.831, -4.261, -1.837, -3.298, -0.249];
x1 = -2; x2 = 0;

syms x;
L05 = ((x-xx(2))*(x-xx(3))*(x-xx(4))*(x-xx(5))*(x-xx(6)))/((xx(1)-xx(2))*(xx(1)-xx(3))*(xx(1)-xx(4))*(xx(1)-xx(5))*(xx(1)-xx(6)));
L15 = ((x-xx(1))*(x-xx(3))*(x-xx(4))*(x-xx(5))*(x-xx(6)))/((xx(2)-xx(1))*(xx(2)-xx(3))*(xx(2)-xx(4))*(xx(2)-xx(5))*(xx(2)-xx(6)));
L25 = ((x-xx(1))*(x-xx(2))*(x-xx(4))*(x-xx(5))*(x-xx(6)))/((xx(3)-xx(1))*(xx(3)-xx(2))*(xx(3)-xx(4))*(xx(3)-xx(5))*(xx(3)-xx(6)));
L35 = ((x-xx(1))*(x-xx(2))*(x-xx(3))*(x-xx(5))*(x-xx(6)))/((xx(4)-xx(1))*(xx(4)-xx(2))*(xx(4)-xx(3))*(xx(4)-xx(5))*(xx(4)-xx(6)));
L45 = ((x-xx(1))*(x-xx(2))*(x-xx(3))*(x-xx(4))*(x-xx(6)))/((xx(5)-xx(1))*(xx(5)-xx(2))*(xx(5)-xx(3))*(xx(5)-xx(4))*(xx(5)-xx(6)));
L55 = ((x-xx(1))*(x-xx(2))*(x-xx(3))*(x-xx(4))*(x-xx(5)))/((xx(6)-xx(1))*(xx(6)-xx(2))*(xx(6)-xx(3))*(xx(6)-xx(4))*(xx(6)-xx(5)));

L = L05*yy(1)+L15*yy(2)+L25*yy(3)+L35*yy(4)+L45*yy(5)+L55*yy(6)
y1 = double(subs(L,x,x1))
y2 = double(subs(L,x,x2))

fplot(L, [xx(1) xx(end)]);
hold on; plot(xx,yy,'bo');