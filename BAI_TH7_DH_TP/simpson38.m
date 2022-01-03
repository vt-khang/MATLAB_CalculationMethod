function [I_SS38] = simpson38(xx,yy,a,b)
    I_SS38 = 0;
    for i = find(xx==a):3:find(xx==b)-3
        I_SS38 = I_SS38 + (xx(i+3)-xx(i))*(yy(i+3)+3*yy(i+2)+3*yy(i+1)+yy(i))/8;
    end
end