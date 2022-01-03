function [L,yc] = lagrangeN(xx,yy,xc,n)
    syms x;
    Li = [];
    for i = 1:n
        tu = 1;
        mau = 1;
        for j = 1:n
            if j == i, continue; end
            tu = tu * (x-xx(j));
            mau = mau * (xx(i)-xx(j)); 
        end
        Li = [Li, tu/mau,];
    end

    L = 0;
    for i = 1:n
        L = L + Li(i)*yy(i);
    end
    yc = double(subs(L,x,xc));
end