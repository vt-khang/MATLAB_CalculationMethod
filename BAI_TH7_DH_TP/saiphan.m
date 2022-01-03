function [df_SPT,df_SPL] = saiphan(xx,yy,X)
    i = find(xx==X);
    df_SPT = (yy(i+1)-yy(i))/(xx(i+1)-xx(i));
    df_SPL = (yy(i)-yy(i-1))/(xx(i)-xx(i-1));
end