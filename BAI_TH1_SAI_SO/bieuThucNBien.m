function [aEy,rEy] = bieuThucNBien(y,n,x_a,aEx)
    x = sym('x',[1 n]);
    y_a = subs(y, x, x_a);
    aEy = 0;
    for i = 1:n
        dy = diff(y, x(i));
        dy_a = subs(dy, x, x_a);
        aEy = aEy + dy_a*aEx(i);
    end
    rEy = aEy/abs(y_a);
end