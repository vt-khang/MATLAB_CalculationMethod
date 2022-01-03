clear all; clc; format long;

% Viet function cho bai toan giai he 3 phuong trinh 3 an

% a) Bang phuong phap lap

% b) Bang phuong phap Seidel

% c) Dung cac function moi viet de giai lai bai tap 1
A = [5 1 1; 1 10 1; 1 1 20];
C = [7; 12; 22];
DF = 10^(-3);
[Xo,fX] = lap3(A,C,DF)

% d) Dung cac function moi viet de giai lai bai tap 2
A = [5 1 1; 1 10 1; 1 1 20];
C = [7; 12; 22];
DF = 10^(-3);
[Xo,fX] = seidel3(A,C,DF)