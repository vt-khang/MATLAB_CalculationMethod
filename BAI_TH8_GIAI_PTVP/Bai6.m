clear all; clc;

% Tim nghiem cua phuong trinh sau voi cac khoang chia h = 0.1
%       y' = 2*x^2 + y, y(0) = 1, x = [0, 0.5]
f = @(x,y) 2*x^2+y;
a = 0; b = 0.5; x0 = a; y0 = 1;
xx = a:0.1:b; h = xx(2:end)-xx(1:end-1);

k1=h(1)*f(x0,y0);
k2=h(1)*f(x0+h(1)/2,y0+k1/2);
k3=h(1)*f(x0+h(1),y0-k1+2*k2);
y(1)=y0+(k1+4*k2+k3)/6;
k1=h(2)*f(xx(1),y(1));
k2=h(2)*f(xx(1)+h(2)/2,y(1)+k1/2);
k3=h(2)*f(xx(1)+h(2),y(1)-k1+2*k2);
y(2)=y(1)+(k1+4*k2+k3)/6;
k1=h(3)*f(xx(2),y(2));
k2=h(3)*f(xx(2)+h(3)/2,y(2)+k1/2);
k3=h(3)*f(xx(2)+h(3),y(2)-k1+2*k2);
y(3)=y(2)+(k1+4*k2+k3)/6;
k1=h(4)*f(xx(3),y(3));
k2=h(4)*f(xx(3)+h(4)/2,y(3)+k1/2);
k3=h(4)*f(xx(3)+h(4),y(3)-k1+2*k2);
y(4)=y(3)+(k1+4*k2+k3)/6;
k1=h(5)*f(xx(4),y(4));
k2=h(5)*f(xx(4)+h(5)/2,y(4)+k1/2);
k3=h(5)*f(xx(4)+h(5),y(4)-k1+2*k2);
y(5)=y(4)+(k1+4*k2+k3)/6;

xx = xx';
y = [y0; y'];

T = table(xx,y)