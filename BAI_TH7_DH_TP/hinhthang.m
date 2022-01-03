function [I_HT] = hinhthang(xx,yy,a,b)
    I_HT = 0;
    for i = find(xx==a):1:find(xx==b)-1
        I_HT = I_HT + (xx(i+1)-xx(i))*(yy(i+1)+yy(i))/2;
    end
end