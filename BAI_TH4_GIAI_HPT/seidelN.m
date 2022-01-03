function [Xo,fX] = seidelN(A,C,DF)
    N = length(A);
    diA = [];
    for i = 1:N
        diA = [diA, diag(A),];
    end

    B = -A./diA+eye(N);
    G = C./diag(A);
    Xo = zeros(N,1); k = 1;

    while 1;
        Xn = Xo;
        for i = 1:N
            Xn(i) = 0;
            for j = 1:N
                if j < i, Xn(i) = Xn(i) + B(i,j)*Xo(j);
                else Xn(i) = Xn(i) + B(i,j)*Xn(j); end
            end
            Xn(i) = Xn(i) + G(i);
        end
        rEX = norm((Xn-Xo)./Xo);
        fX = norm(A*Xn-C);

        if abs(fX) <= DF, break; end

        Xo = Xn;
        k = k+1;
    end
end