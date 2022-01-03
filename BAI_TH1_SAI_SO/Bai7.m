clear all; clc;

% Tim sai so tuyet doi cua ham so sau
x1_a = [5; 2; 3; 3; 8; 7; 3];
aEx1 = [0.03; 0.05; 0.05; 0.08; 0.09; 0.05; 0.06];
x2_a = [3; 4; 7; 7; 4; 5; 0];
aEx2 = [0.06; 0.02; 0.07; 0.03; 0.02; 0.02; 0.02];
x3_a = [7; 6; 3; 10; 3; 2; 1];
aEx3 = [0.04; 0.03; 0.02; 0.1; 0.04; 0.03; 0.04];

syms x1 x2 x3;
y1 = x1+x2*x3;
y2 = x1^2+x2*x3^3;
y3 = x3*sqrt(x1+x2);
y4 = x1*x2/x3;
y5 = x1*(x2+x3)-x2*x3;
y6 = log(x1*x2-x3);
y7 = x1*sin(x2)-cos(x3);
y = [y1; y2; y3; y4; y5; y6; y7];

y_a = [];
for i = 1:size(y)
    y_a = [y_a, subs(y(i),[x1, x2, x3],[x1_a(i), x2_a(i), x3_a(i)]),];
end
y_a = y_a';

dy1 = diff(y,x1);
dy2 = diff(y,x2);
dy3 = diff(y,x3);
dy1_a = []; dy2_a = []; dy3_a = [];
for i = 1:size(y)
    dy1_a = [dy1_a, subs(dy1(i),[x1, x2, x3],[x1_a(i), x2_a(i), x3_a(i)]),];
    dy2_a = [dy2_a, subs(dy2(i),[x1, x2, x3],[x1_a(i), x2_a(i), x3_a(i)]),];
    dy3_a = [dy3_a, subs(dy3(i),[x1, x2, x3],[x1_a(i), x2_a(i), x3_a(i)]),];
end
dy1_a = dy1_a';
dy2_a = dy2_a';
dy3_a = dy3_a';

aEy = double(abs(dy1_a).*aEx1 + abs(dy2_a).*aEx2 + abs(dy3_a).*aEx3);
rEy = double(aEy./abs(y_a));

y_f = [];
for i = 1:size(y)
    y_f = [y_f, {char(y(i))},];
end
y_f = y_f';
T = table(y_f,x1_a,aEx1,x2_a,aEx2,x3_a,aEx3,aEy,rEy)