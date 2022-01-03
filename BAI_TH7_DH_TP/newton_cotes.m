function [I_NC] = newton_cotes(xx,yy,a,b,n)
    I_NC = 0;
    for i = find(xx==a):n:find(xx==b)-n
        I_NC_T = 0;
        for j = 0:n
            I_NC_T = I_NC_T + H(j,n)*yy(i+j);
        end
        I_NC_T = (xx(i+n)-xx(i))*I_NC_T;
        I_NC = I_NC + I_NC_T;
    end
end