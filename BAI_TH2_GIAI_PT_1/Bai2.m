clear all; clc; format long;

% Giai phuong trinh x + sin(x) - 2 = 0 bang phuong phap lap voi phi = 2 - sin(x) va x = 1.05, aEf = 10^(-3)

f = @(x) x + sin(x) - 2;
phi = @(x) 2 - sin(x);
xo = 1.05; Df_t = 10^(-3);
k = 1;

STT = [k];
xn = [];
fx = [];
Df = [];
rExn = [];

while 1
    xn_t = phi(xo);
    rExn_t = abs((xn_t-xo)/xo);
    fx_t = f(xn_t);
    
    xn = [xn, xn_t,];
    rExn = [rExn, rExn_t,];
    fx = [fx, fx_t,];
    
    if abs(fx_t) <= Df_t, Df = [Df, {'Dung'},]; break;
    else Df = [Df, {'Sai'},]; end
    
    xo = xn_t;
    k = k+1;
    STT = [STT, k];
end

STT = STT';
xn = xn';
fx = fx';
Df = Df';
rExn = rExn';

T = table(STT,xn,fx,Df,rExn)