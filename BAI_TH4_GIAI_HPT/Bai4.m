clear all; clc; format long;

% Viet function cho bai toan giai he 5 phuong trinh 5 an

% a) Bang phuong phap lap

% b) Bang phuong phap Seidel

% c) Dung cac function moi viet de giai bai toan sau
% [    6*x1 +      x2 +      x3 +      x4 +       x5 = 9;
%      2*x1 +    9*x2 +    3*x3 +      x4 +     2*x5 = 1;
%      2*x1 +      x2 +   10*x3 +    4*x4 +     2*x5 = -12;
%        x1 +    2*x2 +      x3 +    8*x4 +     3*x5 = -12;
%      2*x1 +      x2 +    2*x3 +    3*x4 +     9*x5 = 5    ]
A = [6 1 1 1 1; 2 9 3 1 2; 2 1 10 4 2; 1 2 1 8 3; 2 1 2 3 9];
C = [9; 1; -12; -12; 5];
DF = 10^(-3);
[Xo,fX] = lap5(A,C,DF)
[Xo,fX] = seidel5(A,C,DF)