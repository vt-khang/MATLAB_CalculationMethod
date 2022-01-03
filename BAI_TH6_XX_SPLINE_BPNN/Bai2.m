clear all; clc;

% Tim gia tri x = 4, x = 5.5 cua ham y = f(x) duoc cho boi bang sau bang spline bac ba tu nhien
xx = [2.2; 3.6; 4.9; 5.2; 5.7; 6.1];
yy = [1.4; 3.2; 5.1; 4.4; 3.9; 3.2];
x1 = 4; x2 = 5.5;

h = xx(2:end)-xx(1:end-1);
VT = [1, 0, 0, 0, 0, 0; ...
    h(1)/6, (h(1)+h(2))/3, h(2)/6, 0, 0, 0; ...
    0, h(2)/6, (h(2)+h(3))/3, h(3)/6, 0, 0; ...
    0, 0, h(3)/6, (h(3)+h(4))/3, h(4)/6, 0; ...
    0, 0, 0, h(4)/6, (h(4)+h(5))/3, h(5)/6; ...
    0, 0, 0, 0, 0, 1];
VP = [0; (yy(3)-yy(2))/h(2) - (yy(2)-yy(1))/h(1); ...
    (yy(4)-yy(3))/h(3) - (yy(3)-yy(2))/h(2); ...
    (yy(5)-yy(4))/h(4) - (yy(4)-yy(3))/h(3); ...
    (yy(6)-yy(5))/h(5) - (yy(5)-yy(4))/h(4); 0];
m = inv(VT)*VP;

M = yy(1:end-1)-m(1:end-1).*h(1:end).^2/6;
N = yy(2:end)-m(2:end).*h(1:end).^2/6;

syms x;
S1 = m(2)*(x-xx(1))^3/6/h(1)+m(1)*(xx(2)-x)^3/6/h(1)+M(1)*(xx(2)-x)/h(1)+N(1)*(x-xx(1))/h(1)
S2 = m(3)*(x-xx(2))^3/6/h(2)+m(2)*(xx(3)-x)^3/6/h(2)+M(2)*(xx(3)-x)/h(2)+N(2)*(x-xx(2))/h(2)
S3 = m(4)*(x-xx(3))^3/6/h(3)+m(3)*(xx(4)-x)^3/6/h(3)+M(3)*(xx(4)-x)/h(3)+N(3)*(x-xx(3))/h(3)
S4 = m(5)*(x-xx(4))^3/6/h(4)+m(4)*(xx(5)-x)^3/6/h(4)+M(4)*(xx(5)-x)/h(4)+N(4)*(x-xx(4))/h(4)
S5 = m(6)*(x-xx(5))^3/6/h(5)+m(5)*(xx(6)-x)^3/6/h(5)+M(5)*(xx(6)-x)/h(5)+N(5)*(x-xx(5))/h(5)

y1 = double(subs(S2,x,x1))
y2 = double(subs(S4,x,x2))

hold on; plot(xx,yy,'bo');
fplot(S1,[xx(1) xx(2)]);
fplot(S2,[xx(2) xx(3)]);
fplot(S3,[xx(3) xx(4)]);
fplot(S4,[xx(4) xx(5)]);
fplot(S5,[xx(5) xx(6)]);