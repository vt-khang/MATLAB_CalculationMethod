clear all; clc; format long;

% Giai phuong trinh x^2 - sin(x) = 50 bang phuong phap day cung voi a = 0, b = 8, Df = 3*10^(-3)
f = @(x) x^2 - sin(x) - 50;
a_t = 0; b_t = 8; Df_t = 3*10^(-3);
k = 1;

STT = [k];
a = [a_t];
b = [b_t];
c = [];
fc = [];
Df = [];
rEc = [];

while 1;
    c_t = a_t-(b_t-a_t)/(f(b_t)-f(a_t))*f(a_t);
    rEc_t = abs((c_t-a_t)/a_t);
    fc_t = f(c_t);
    
    c = [c, c_t,];
    rEc = [rEc, rEc_t,];
    fc = [fc, fc_t,];
    
    if abs(fc_t) <= Df_t, Df = [Df, {'Dung'},]; break;
    else Df = [Df, {'Sai'},]; end
    
    dau = sign(f(a_t)*f(c_t));
    if dau >= 0, a_t = c_t;
    else b_t = c_t; end    
    k = k+1;
    
    a = [a, a_t,];
    b = [b, b_t,];
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