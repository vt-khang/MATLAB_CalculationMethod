clear all; clc;

% Viet function xap xi va noi suy ham so bang phuong phap binh phuong nho nhat

% a) Ham xap xi co dang R(x) = a*x^2+b va thu lai voi bo du lieu thoa yi = 0.5*xi^2+1.5
xx = [1; 2; 3; 4; 5; 6];
yy = [2; 3.5; 6; 9.5; 14; 19.5];
xc = 4.2;
[R,yc] = bpnn3(xx,yy,xc)
xx = [xx; xc];
yy = [yy; yc];
T = table(xx,yy)

% b) Ham xap xi co dang R(x) = a*x^b va thu lai voi bo du lieu thoa yi = 2*xi^(1.3)
xx = [1; 2; 3; 4; 5; 6];
yy = [2; 4.925; 8.342; 12.126; 16.21; 20.541];
xc = 4.2;
[R,yc] = bpnn4(xx,yy,xc)
xx = [xx; xc];
yy = [yy; yc];
T = table(xx,yy)