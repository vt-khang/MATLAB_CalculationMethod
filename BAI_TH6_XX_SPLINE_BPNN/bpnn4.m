function [R,yc] = bpnn4(xx,yy,xc)
    N = length(xx); lX = sum(log(xx)); Y = sum(yy);
    lXX = sum(log(xx).^2); lXY = sum(log(xx).*yy);

    syms A B;
    [A,B] = solve(N*A + lX*B == Y, lX*A + lXX*B == lXY);
    a = exp(A); b = B;

    syms x;
    R = a*x^b;
    yc = double(subs(R,x,xc));
end