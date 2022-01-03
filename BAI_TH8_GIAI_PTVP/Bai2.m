clear all; clc;

% Tim nghiem cua phuong trinh sau voi sai so tuong doi cho phep rEy = 0.1%
%       y' = 2*x^2 + y, y(0) = 1, x = [0, 0.5]
syms x y;
f = 2*x^2 + y;
a = 0; b = 0.5; rEy_t = 10^(-3);
x0 = a; y0 = 1; k = 1; yo = y0;

STT = [k];
yx = [];
rEyn = [];
rEy = [];

while 1;
    yn = y0 + int(subs(f,y,yo),x,x0,x);
    rEyn_t = double(abs(int(yn-yo,x,a,b)/int(yo,x,a,b)));
    
    yx = [yx, cellstr(char(yn)),];
    rEyn = [rEyn, rEyn_t,];
    
    if rEyn_t <= rEy_t, rEy = [rEy, {'Dung'},]; break;
    else rEy = [rEy, {'Sai'},]; end
    
    yo = yn;
    k = k+1;
    
    STT = [STT, k,];
end

STT = STT';
yx = yx';
rEyn = rEyn';
rEy = rEy';

T = table(STT,yx,rEyn,rEy)