function [R,yc] = bpnn3(xx,yy,xc)
    N = length(xx); XX = sum(xx.^2); Y = sum(yy);
    XXXX = sum(xx.^4); XXY = sum(xx.^2.*yy);

    syms a b;
    [a,b] = solve(XXXX*a + XX*b == XXY, XX*a + N*b == Y);

    syms x;
    R = a*x^2+b;
    yc = double(subs(R,x,xc));
end