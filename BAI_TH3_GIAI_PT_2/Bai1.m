clear all; clc; format long;

% Giai phuong trinh x^2 - sin(x) = 50 bang phuong phap tiep tuyen voi xo = 2, Df = 10^(-3)
syms x;
f = x^2 - sin(x) - 50;
df = diff(f,x);
xo_t = 2; Df_t = 10^(-3);
k = 1;

STT = [k];
xo = [xo_t];
xn = [];
fx = [];
Df = [];
rExn = [];

while 1;
    xn_t = double(xo_t-subs(f,x,xo_t)/subs(df,x,xo_t));
    rExn_t = abs((xn_t-xo_t)/xo_t);
    fx_t = double(subs(f,x,xn_t));
    
    xn = [xn, xn_t,];
    rExn = [rExn, rExn_t,];
    fx = [fx, fx_t,];
    
    if abs(fx_t) <= Df_t, Df = [Df, {'Dung'},]; break;
    else Df = [Df, {'Sai'},]; end
    
    xo_t = xn_t;
    k = k+1;
    
    xo = [xo, xo_t,];
    STT = [STT, k,];
end

STT = STT';
xo = xo';
xn = xn';
fx = fx';
Df = Df';
rExn = rExn';

T = table(STT,xo,xn,fx,Df,rExn)