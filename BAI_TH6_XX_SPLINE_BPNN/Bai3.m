clear all; clc;

% Tim gia tri x = 6 cua ham y = f(x) duoc cho boi bang sau bang ham xap xi R(x) = a*x+b
xx = [2; 4; 7; 8.5; 9.5; 11];
yy = [2.2; 4.2; 6.8; 8.1; 9.7; 10.5];
xc = 6;

N = length(xx); X = sum(xx); Y = sum(yy);
XX = sum(xx.*xx); XY = sum(xx.*yy);

syms a b;
[a,b] = solve(XX*a + X*b == XY, X*a + N*b == Y);

syms x;
R = a*x+b
yc = double(subs(R,x,xc))

fplot(R,[xx(1) xx(end)]);
hold on; plot(xx,yy,'bo');