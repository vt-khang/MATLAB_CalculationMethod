clear all; clc;

% Viet function xap xi va noi suy ham so bang phuong phap binh phuong nho nhat

% a) Ham xap xi co dang R(x) = a*x^2+b*x+c va thu lai voi bo du lieu thoa yi = 0.3*xi^2+0.7*xi-2.5
xx = [1; 2; 3; 4; 5; 6];
yy = [-1.5; 0.1; 2.3; 5.1; 8.5; 12.5];
xc = 4.2;
[R,yc] = bpnn5(xx,yy,xc)
xx = [xx; xc];
yy = [yy; yc];
T = table(xx,yy)

% b) Ham xap xi co dang R(x) = a*x+b*sin(x)+c*cos(x) va thu lai voi bo du lieu thoa yi = 3*xi+1.5*sin(xi)-3.5*cos(xi)
xx = [1; 2; 3; 4; 5; 6];
yy = [2.37; 8.85; 12.67; 13.15; 12.57; 14.22];
xc = 4.2;
[R,yc] = bpnn6(xx,yy,xc)
xx = [xx; xc];
yy = [yy; yc];
T = table(xx,yy)