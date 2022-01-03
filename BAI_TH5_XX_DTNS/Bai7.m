clear all; clc;

% Tim gia tri tai x = 2.5 cua ham y = f(x) duoc cho boi bang
xx = [1, 2.2, 3.1, 4];
yy = [1.678, 3.267, 2.198, 3.787];
xc = 2.5;

n1 = yy;
n2(1) = (n1(2)-n1(1))/(xx(2)-xx(1));
n2(2) = (n1(3)-n1(2))/(xx(3)-xx(2));
n2(3) = (n1(4)-n1(3))/(xx(4)-xx(3));
n3(1) = (n2(2)-n2(1))/(xx(3)-xx(1));
n3(2) = (n2(3)-n2(2))/(xx(4)-xx(2));
n4(1) = (n3(2)-n3(1))/(xx(4)-xx(1));

syms x;
N = n1(1)+n2(1)*(x-xx(1))+n3(1)*(x-xx(1))*(x-xx(2))+n4(1)*(x-xx(1))*(x-xx(2))*(x-xx(3))
yc = double(subs(N,x,xc))

fplot(N,[xx(1) xx(end)]);
hold on; plot(xx,yy,'bo');