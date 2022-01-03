function [Xo,fX_t] = seidel5(A,C,DF_t)
    B = -A./[diag(A) diag(A) diag(A) diag(A) diag(A)]+eye(5);
    G = C./diag(A);
    Xo = zeros(5,1); k = 1;

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
        Xn = Xo;
        Xn(1) = B(1,1)*Xo(1)+B(1,2)*Xo(2)+B(1,3)*Xo(3)+B(1,4)*Xo(4)+B(1,5)*Xo(5)+G(1);
        Xn(2) = B(2,1)*Xn(1)+B(2,2)*Xo(2)+B(2,3)*Xo(3)+B(2,4)*Xo(4)+B(2,5)*Xo(5)+G(2);
        Xn(3) = B(3,1)*Xn(1)+B(3,2)*Xn(2)+B(3,3)*Xo(3)+B(3,4)*Xo(4)+B(3,5)*Xo(5)+G(3);
        Xn(4) = B(4,1)*Xn(1)+B(4,2)*Xn(2)+B(4,3)*Xn(3)+B(4,4)*Xo(4)+B(4,5)*Xo(5)+G(4);
        Xn(5) = B(5,1)*Xn(1)+B(5,2)*Xn(2)+B(5,3)*Xn(3)+B(5,4)*Xn(4)+B(5,5)*Xo(5)+G(5);
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