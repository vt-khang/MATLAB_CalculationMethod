function [R,yc] = bpnn1(xx,yy,xc)
    N = length(xx); X = sum(xx); Y = sum(yy);
    XX = sum(xx.*xx); XY = sum(xx.*yy);

    syms a b;
    [a,b] = solve(XX*a + X*b == XY, X*a + N*b == Y);

    syms x;
    R = a*x+b;
    yc = double(subs(R,x,xc));
end