clear all; clc;

% Tim nghiem cua phuong trinh sau voi cac khoang chia h = 0.1
%       y' = x + y, y(0) = 1, x = [0, 0.4]
f = @(x,y) x+y;
a = 0; b = 0.4; y0 = 1;
xx = a:0.1:b;

y1 = 0*xx; y1(1) = y0;
y1(2) = y1(1) + (xx(2)-xx(1))*f(xx(1),y1(1));
y1(3) = y1(2) + (xx(3)-xx(2))*f(xx(2),y1(2));
y1(4) = y1(3) + (xx(4)-xx(3))*f(xx(3),y1(3));
y1(5) = y1(4) + (xx(5)-xx(4))*f(xx(4),y1(4));

y2 = 0*xx; y2(1)=y0;
y2(2) = y2(1) + (xx(2)-xx(1))*f(xx(1),y2(1));
y2(2) = y2(1) + (xx(2)-xx(1))/2*(f(xx(1),y2(1))+f(xx(2),y2(2)));
y2(3) = y2(2) + (xx(3)-xx(2))*f(xx(2),y2(2));
y2(3) = y2(2) + (xx(3)-xx(2))/2*(f(xx(2),y2(2))+f(xx(3),y2(3)));
y2(4) = y2(3) + (xx(4)-xx(3))*f(xx(3),y2(3));
y2(4) = y2(3) + (xx(4)-xx(3))/2*(f(xx(3),y2(3))+f(xx(4),y2(4)));
y2(5) = y2(4) + (xx(5)-xx(4))*f(xx(4),y2(4));
y2(5) = y2(4) + (xx(5)-xx(4))/2*(f(xx(4),y2(4))+f(xx(5),y2(5)));

xx = xx';
y1 = y1';
y2 = y2';

T = table(xx,y1,y2)