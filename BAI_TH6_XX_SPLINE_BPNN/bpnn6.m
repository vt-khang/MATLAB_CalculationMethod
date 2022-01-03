function [R,yc] = bpnn6(xx,yy,xc)
    N = length(xx); XX = sum(xx.*xx); XY = sum(xx.*yy); 
    XsX = sum(xx.*sin(xx)); XcX = sum(xx.*cos(xx));
    s2X = sum(sin(xx).^2); scX = sum(sin(xx).*cos(xx)); sXY = sum(sin(xx).*yy);
    c2X = sum(cos(xx).^2); cXY = sum(cos(xx).*yy);

    syms a b c;
    [a,b,c] = solve(XX*a+XsX*b+XcX*c==XY, XsX*a+s2X*b+scX*c==sXY, XcX*a+scX*b+c2X*c==cXY);

    syms x;
    R = a*x+b*sin(x)+c*cos(x);
    yc = double(subs(R,x,xc));
end