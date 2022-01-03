function [Xo,fX] = lapN(A,C,DF)
    N = length(A);
    diA = [];
    for i = 1:N
        diA = [diA, diag(A),];
    end

    B = -A./diA+eye(N);
    G = C./diag(A);
    Xo = G; k = 1;

    while 1;
        Xn = B*Xo + G;
        rEX = norm((Xn-Xo)./Xo);
        fX = norm(A*Xn-C);

        if abs(fX) <= DF, break; end

        Xo = Xn;
        k = k+1;
    end
end