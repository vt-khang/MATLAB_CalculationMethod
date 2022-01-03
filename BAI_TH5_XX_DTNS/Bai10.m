clear all; clc;

% Viet function xay dung ham da thuc xap xi va noi suy dung da thuc tong quat cho bang 4 du lieu

% a) Thuc hien voi cac yeu cau sau:
% - Input la gia tri xx, yy va toa do xc
% - Ve do thi ham xap xi va bang du lieu

% b) Su dung function tren de giai bai tap 1
xx = [1, 2.2, 3.1, 4];
yy = [1.678, 3.267, 2.198, 3.787];
xc = 2.5;
[P,yc] = tongquat4(xx,yy,xc)
xx = [xx, xc,]';
yy = [yy, yc,]';
T = table(xx,yy)