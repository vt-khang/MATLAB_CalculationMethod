function [R,yc] = bpnn2(xx,yy,xc)
    N = length(xx); X = sum(xx); lY = sum(log(yy));
    XX = sum(xx.*xx); XlY = sum(xx.*log(yy));

    syms A B;
    [A,B] = solve(XX*A + X*B == XlY, X*A + N*B == lY);
    a = exp(B); b = A;

    syms x;
    R = a*exp(b*x);
    yc = double(subs(R,x,xc));
end