clear all; clc;

% Tinh gia tri cac bieu thuc sau

% a) A = 3^2 - 4*(5+6)/2 + sqrt(2) - 5^(1/3)
A = 3^2 - 4*(5+6)/2 + sqrt(2) - 5^(1/3)

% b) B = sin(3*al) + 4*cos(2*al) - tan(al)*cot(5*al) voi al = pi/6
al = pi/6;
B = sin(3*al) + 4*cos(2*al) - tan(al)*cot(5*al)

% c) C = exp(2+t) + log(4-t) voi t = 3
t = 3;
C = exp(2+t) + log(4-t)

% d) D = [B+C, A^2-B*C, abs(A)+1]
D = [B+C, A^2-B*C, abs(A)+1]