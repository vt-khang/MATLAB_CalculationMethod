clear all; clc;

% Cho a = 2, b = 3, c = 1. Tinh gia tri cac bieu thuc sau
a = 2; b = 3; c = 1;

% a) A = (b+sqrt(b^2-4*a*c))/(2*a)
A = (b+sqrt(b^2-4*a*c))/(2*a)

% b) B = [a*sin(b)*cos(c), a*sin(b)*sin(c), a*cos(b)]
B = [a*sin(b)*cos(c), a*sin(b)*sin(c), a*cos(b)]

% c) C = [(a+b)/(a+b+c), (a-b+c)/(a+b+c), (c^2-a*b)/(a+b+c), 1/(a+b+c)]
C = [(a+b)/(a+b+c), (a-b+c)/(a+b+c), (c^2-a*b)/(a+b+c), 1/(a+b+c)]

% d) D = A*B - C
D = A*B