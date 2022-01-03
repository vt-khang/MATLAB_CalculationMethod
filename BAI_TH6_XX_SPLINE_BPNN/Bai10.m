clear all; clc;

% Viet function xap xi va noi suy ham so bang phuong phap binh phuong nho nhat dang R(x) = a*exp(b*x)

% a) Dung function tren de giai lai bai toan 6
xx = [1.1; 3.2; 5.1; 7.7; 9.6; 12.2];
yy = [3.1; 29.9; 65.7; 100.4; 195.7; 300.4];
xc = 8.5;
[R,yc] = bpnn2(xx,yy,xc)
xx = [xx; xc];
yy = [yy; yc];
T = table(xx,yy)

% b) Dung function tren de giai lai bai toan 7
xx = [2; 4; 7; 8.5; 9.5; 11];
yy = [2.2; 2.5; 2.7; 3.1; 3.2; 3.5];
xc = 7.7;
[R,yc] = bpnn2(xx,yy,xc)
xx = [xx; xc];
yy = [yy; yc];
T = table(xx,yy)

% c) Dung function tren de giai lai bai toan 8
xx = [3; 3.4; 4.1; 4.3; 4.7; 5.3; 5.3; 6; 6.4];
yy = [1.23; 1.40; 1.69; 1.79; 2.13; 2.52; 2.45; 2.97; 3.44];
xc = 5;
[R,yc] = bpnn2(xx,yy,xc)
xx = [xx; xc];
yy = [yy; yc];
T = table(xx,yy)