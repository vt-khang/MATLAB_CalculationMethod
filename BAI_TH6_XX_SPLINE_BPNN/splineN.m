function [S,yc] = splineN(xx,yy,xc)
    n = length(xx);
    h = xx(2:end)-xx(1:end-1);
    VT = zeros(n,n);
    VP = zeros(n,1);
    for i = 1:n
        if i == 1 || i == n, VT(i,i) = 1; continue;
        else
            VT(i,i-1) = h(i-1)/6;
            VT(i,i) = (h(i-1)+h(i))/3;
            VT(i,i+1) = h(i)/6;
        end
        VP(i,1) = (yy(i+1)-yy(i))/h(i) - (yy(i)-yy(i-1))/h(i-1);
    end
    m = inv(VT)*VP;

    M = yy(1:end-1)-m(1:end-1).*h(1:end).^2/6;
    N = yy(2:end)-m(2:end).*h(1:end).^2/6;
    
    syms x;
    S = [];
    for i = 1:n-1
        S = [S, m(i+1)*(x-xx(i))^3/6/h(i)+m(i)*(xx(i+1)-x)^3/6/h(i)+M(i)*(xx(i+1)-x)/h(i)+N(i)*(x-xx(i))/h(i)];
    end
    
    yc = 0;
    for i = 1:n-1
        if xx(i) <= xc && xc <= xx(i+1)
            yc = double(subs(S(i),x,xc));
        end
    end
end