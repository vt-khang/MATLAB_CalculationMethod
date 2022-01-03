clear all; clc;

% Tinh gia tri cac bieu thuc sau

% a) E = (4-7)^2 + (3-1)^(1/3)*(6+2)^(1/4)*sqrt(9-3)/sqrt(2)
E = (4-7)^2 + (3-1)^(1/3)*(6+2)^(1/4)*sqrt(9-3)/sqrt(2)

% b) F = a^2*(sin(b)+cos(c)) - 2*b*tan(c) + 4*c*(cot(a)-cot(b)) voi a = 2, b = 3, c = 1
a = 2; b = 3; c = 1;
F = a^2*(sin(b)+cos(c)) - 2*b*tan(c) + 4*c*(cot(a)-cot(b))

% c) G = log(x^2-2*x+1) + exp(4*x+2) voi x = 2
x = 2;
G = log(x^2-2*x+1) + exp(4*x+2)

% d) H = [G/2, sqrt(E*F)]
H = [G/2, sqrt(E*F)]