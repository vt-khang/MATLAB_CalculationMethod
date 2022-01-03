clear all; clc;

% Tim gia tri tai x = 7.7 cua ham y = f(x) duoc cho boi bang sau bang ham xap xi R(x) = a*exp(b*x)
xx = [2; 4; 7; 8.5; 9.5; 11];
yy = [2.2; 2.5; 2.7; 3.1; 3.2; 3.5];
xc = 7.7;

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