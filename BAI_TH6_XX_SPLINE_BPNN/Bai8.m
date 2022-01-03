clear all; clc;

% Tim gia tri tai x = 5 cua ham y = f(x) duoc cho boi bang sau bang ham xap xi R(x) = a*exp(b*x)
xx = [3; 3.4; 4.1; 4.3; 4.7; 5.3; 5.3; 6; 6.4];
yy = [1.23; 1.40; 1.69; 1.79; 2.13; 2.52; 2.45; 2.97; 3.44];
xc = 5;

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