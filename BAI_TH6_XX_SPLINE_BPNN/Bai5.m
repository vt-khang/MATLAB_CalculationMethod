clear all; clc;

% Tim gia tri x = 3.5 cua ham y = f(x) duoc cho boi bang sau bang ham xap xi R(x) = a*x+b
xx = [1; 1.6; 2.1; 3; 3.3; 3.7; 4.1; 4.9; 6.2];
yy = [1.1; 2.2; 3.5; 4.9; 7.2; 7.8; 7.9; 8.5; 10];
xc = 3.5;

N = length(xx); X = sum(xx); Y = sum(yy);
XX = sum(xx.*xx); XY = sum(xx.*yy);

syms a b;
[a,b] = solve(XX*a + X*b == XY, X*a + N*b == Y);

syms x;
R = a*x+b
yc = double(subs(R,x,xc))

fplot(R,[xx(1) xx(end)]);
hold on; plot(xx,yy,'bo');