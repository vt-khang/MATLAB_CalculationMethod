function [Xo,fX_t] = lap5(A,C,DF_t)
    B = -A./[diag(A) diag(A) diag(A) diag(A) diag(A)]+eye(5);
    G = C./diag(A);
    Xo = G; k = 1;

    STT = [k];
    X1 = [Xo(1)];
    X2 = [Xo(2)];
    X3 = [Xo(3)];
    X4 = [Xo(4)];
    X5 = [Xo(5)];
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
        X4 = [X4, Xo(4),];
        X5 = [X5, Xo(5),];
        STT = [STT, k,];
    end

    STT = STT';
    X1 = X1';
    X2 = X2';
    X3 = X3';
    X4 = X4';
    X5 = X5';
    fX = fX';
    DF = DF';
    rEX = rEX';

    T = table(STT,X1,X2,X3,X4,X5,fX,DF,rEX)
end