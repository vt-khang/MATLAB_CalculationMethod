clear all; clc;

% Ve do thi cua cac ham so sau

% a) f(x) = x^4-2*x^3+3*x^2-4*x+5 tren [-10, 10]
figure(1);
f = @(x) x.^4-2*x.^3+3*x.^2-4*x+5
t = -10:0.1:10;
ft = f(t);
plot(t,ft,'r-')

% b) g(x) = sin(x)-2*cos(x) tren [-pi, pi/2]
figure(2);
g = @(x) sin(x)-2*cos(x)
t = -pi:pi/6:pi/2;
gt = g(t);
plot(t,gt,'r-')

% c) h(x) = (x+1)*exp(x-1) tren [1, 5]
figure(3);
h = @(x) (x+1).*exp(x-1)
t = 1:0.1:5;
ht = h(t);
plot(t,ht,'r-')

% d) k(x) = (x^2-1)/(2*x+1) tren [-3, 3]
figure(4);
k = @(x) (x.^2-1)./(2*x+1)
t = -3:0.1:3;
kt = k(t);
plot(t,kt,'r-')