clear all; clc;

% Viet function xay dung ham da thuc xap xi va noi suy dung da thuc Newton

% a) Cho bang 6 du lieu va giai lai bai tap 9
xx = [-3.5, -2.5, -1.7, -0.8, 0.3, 1.5];
yy = [-8.982, -5.831, -4.261, -1.837, -3.298, -0.249];
x1 = -2; x2 = 0;
[N,y1] = newton6(xx,yy,x1)
[N,y2] = newton6(xx,yy,x2)
xx = [xx, x1, x2,]';
yy = [yy, y1, y2,]';
T = table(xx,yy)

% b) Cho bang n du lieu