clear all; clc;

% Viet function xap xi va noi suy ham so bang ham spline bac ba tu nhien

% a) Voi bo du lieu 4 so va giai lai bai toan 1
xx = [2; 4; 7; 8];
yy = [2.2; 1.8; 2.7; 3.1];
x1 = 3; x2 = 7.5;
[S1,S2,S3,y1] = spline4(xx,yy,x1)
[S1,S2,S3,y2] = spline4(xx,yy,x2)
xx = [xx; x1; x2];
yy = [yy; y1; y2];
T = table(xx,yy)

% b) Voi bo du lieu 6 so va giai lai bai toan 2
xx = [2.2; 3.6; 4.9; 5.2; 5.7; 6.1];
yy = [1.4; 3.2; 5.1; 4.4; 3.9; 3.2];
x1 = 4; x2 = 5.5;
[S1,S2,S3,S4,S5,y1] = spline6(xx,yy,x1)
[S1,S2,S3,S4,S5,y2] = spline6(xx,yy,x2)
xx = [xx; x1; x2];
yy = [yy; y1; y2];
T = table(xx,yy)

% c) Voi bo du lieu n so va thu lai voi bo du lieu thoa yi = 3^xi
xx = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];
yy = [3; 9; 27; 81; 243; 729; 2187; 6561; 19683; 59049];
xc = 7.2;
[S,yc] = splineN(xx,yy,xc)
xx = [xx; xc];
yy = [yy; yc];
T = table(xx,yy)