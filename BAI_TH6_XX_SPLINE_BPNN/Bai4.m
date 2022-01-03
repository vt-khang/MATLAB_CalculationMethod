clear all; clc;

% Tim gia tri x = 4.5 cua ham y = f(x) duoc cho boi bang sau bang ham xap xi R(x) = a*x+b
xx = [1; 2.1; 2.9; 3.8; 5; 6.2];
yy = [3.021; 4.219; 5.018; 5.986; 7.139; 8.138];
xc = 4.5;

N = length(xx); X = sum(xx); Y = sum(yy);
XX = sum(xx.*xx); XY = sum(xx.*yy);

syms a b;
[a,b] = solve(XX*a + X*b == XY, X*a + N*b == Y);

syms x;
R = a*x+b
yc = double(subs(R,x,xc))

fplot(R,[xx(1) xx(end)]);
hold on; plot(xx,yy,'bo');