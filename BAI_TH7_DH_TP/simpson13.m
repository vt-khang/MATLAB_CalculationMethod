function [I_SS13] = simpson13(xx,yy,a,b)
    I_SS13 = 0;
    for i = find(xx==a):2:find(xx==b)-2
        I_SS13 = I_SS13 + (xx(i+2)-xx(i))*(yy(i+2)+4*yy(i+1)+yy(i))/6;
    end
end