clear all; clc;

% Tim gia tri tai x = 8.5 cua ham y = f(x) duoc cho boi bang sau bang ham xap xi R(x) = a*exp(b*x)
xx = [1.1; 3.2; 5.1; 7.7; 9.6; 12.2];
yy = [3.1; 29.9; 65.7; 100.4; 195.7; 300.4];
xc = 8.5;

N = length(xx); X = sum(xx); lY = sum(log(yy));
XX = sum(xx.*xx); XlY = sum(xx.*log(yy));

syms A B;
[A,B] = solve(XX*A + X*B == XlY, X*A + N*B == lY);
a = exp(B); b = A;

syms x;
R = a*exp(b*x)
yc = double(subs(R,x,xc))

fplot(R,[xx(1) xx(end)]);
hold on; plot(xx,yy,'bo');