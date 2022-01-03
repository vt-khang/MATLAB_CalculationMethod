clear all; clc; format long;

% Giai phuong trinh x^2 + x = 5 bang phuong phap lap voi phi = 5 - x^2 va x = 1.5, aEf = 10^(-3)

f = @(x) x^2 + x - 5;
phi = @(x) 5 - x^2;
xo = 1.5; Df_t = 10^(-3);
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
    if k == 19, break; end
    STT = [STT, k];
end

STT = STT';
xn = xn';
fx = fx';
Df = Df';
rExn = rExn';

T = table(STT,xn,fx,Df,rExn)

% Giai thich tai sao gia tri fx cang luc cang tang. Phai thay doi dieu gi de giai duoc phuong trinh?
% - Vi gia tri cua xn khong huong ve mot gia tri nao, nen dan toi gia tri fx cang luc cang tang
% - Phai thay doi ham phi de giai phuong trinh tren

f = @(x) x^2 + x - 5;
phi = @(x) sqrt(5-x);
xo = 1.5; Df_t = 10^(-3);
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