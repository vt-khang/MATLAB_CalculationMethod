clear all; clc;

% Tim gia tri tai x = 5 va x = 10 cua ham y = f(x) duoc cho boi bang
xx = [2, 4.5, 5.7, 7.2, 9.3];
yy = [3.218, 1.642, 2.398, 2.145, 3.135];
x1 = 5; x2 = 10;

n1 = yy;
n2(1) = (n1(2)-n1(1))/(xx(2)-xx(1));
n2(2) = (n1(3)-n1(2))/(xx(3)-xx(2));
n2(3) = (n1(4)-n1(3))/(xx(4)-xx(3));
n2(4) = (n1(5)-n1(4))/(xx(5)-xx(4));
n3(1) = (n2(2)-n2(1))/(xx(3)-xx(1));
n3(2) = (n2(3)-n2(2))/(xx(4)-xx(2));
n3(3) = (n2(4)-n2(3))/(xx(5)-xx(3));
n4(1) = (n3(2)-n3(1))/(xx(4)-xx(1));
n4(2) = (n3(3)-n3(2))/(xx(5)-xx(2));
n5(1) = (n4(2)-n4(1))/(xx(5)-xx(1));

syms x;
N = n1(1)+n2(1)*(x-xx(1))+n3(1)*(x-xx(1))*(x-xx(2))+n4(1)*(x-xx(1))*(x-xx(2))*(x-xx(3))+n5(1)*(x-xx(1))*(x-xx(2))*(x-xx(3))*(x-xx(4))
y1 = double(subs(N,x,x1))
y2 = double(subs(N,x,x2))

fplot(N,[xx(1) xx(end)]);
hold on; plot(xx,yy,'bo');