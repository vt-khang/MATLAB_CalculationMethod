clear all; clc; format long;

% Giai he phuong trinh sau bang phuong phap lap voi DF = 10^(-3)
% [    5*x1 +      x2 +      x3 = 7;
%        x1 +   10*x2 +      x3 = 12;
%        x1 +      x2 +   20*x3 = 22    ]
A = [5 1 1; 1 10 1; 1 1 20];
C = [7; 12; 22];
B = -A./[diag(A) diag(A) diag(A)]+eye(3);
G = C./diag(A);
Xo = G; DF_t = 10^(-3); k = 1;

STT = [k];
X1 = [Xo(1)];
X2 = [Xo(2)];
X3 = [Xo(3)];
fX = [];
DF = [];
rEX = [];

while 1;
    Xn = B*Xo + G;
    rEX_t = norm((Xn-Xo)./Xo);
    fX_t = norm(A*Xn-C);
    
    rEX = [rEX, rEX_t,];
    fX = [fX, fX_t,];
    
    if abs(fX_t) <= DF_t, DF = [DF, {'Dung'},]; break;
    else DF = [DF, {'Sai'},]; end
    
    Xo = Xn;
    k = k+1;
    
    X1 = [X1, Xo(1),];
    X2 = [X2, Xo(2),];
    X3 = [X3, Xo(3),];
    STT = [STT, k,];
end

STT = STT';
X1 = X1';
X2 = X2';
X3 = X3';
fX = fX';
DF = DF';
rEX = rEX';

T = table(STT,X1,X2,X3,fX,DF,rEX)