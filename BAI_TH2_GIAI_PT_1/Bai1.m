clear all; clc; format long;

% Giai phuong trinh x + sin(x) - 2 = 0 bang phuong phap chia doi voi a = 1, b = 1.4, aEf = 10^(-3)

f = @(x) x + sin(x) - 2;
a_t = 1; b_t = 1.4; Df_t = 10^(-3);
fa = f(a_t); fb = f(b_t);
k = 1;

STT = [k];
a = [a_t];
b = [b_t];
c = [];
fc = [];
Df = [];
rEc = [];

while 1
    c_t = (a_t+b_t)/2;
    rEc_t = abs((a_t-c_t)/c_t);
    fc_t = f(c_t);
    
    c = [c, c_t,];
    rEc = [rEc, rEc_t,];
    fc = [fc, fc_t,];
    
    if abs(fc_t) <= Df_t, Df = [Df, {'Dung'},]; break;
    else Df = [Df, {'Sai'},]; end
    dau = sign(f(a_t)*f(c_t));
    if dau >= 0, a_t = c_t;
    else, b_t = c_t; end
    a = [a, a_t,];
    b = [b, b_t,];
    k = k+1;
    STT = [STT, k,];
end

STT = STT';
a = a';
b = b';
c = c';
fc = fc';
Df = Df';
rEc = rEc';

T = table(STT,a,b,c,fc,Df,rEc)