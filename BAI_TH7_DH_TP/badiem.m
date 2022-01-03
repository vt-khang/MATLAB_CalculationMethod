function [df_3DC,df_3DG] = badiem(xx,yy,X)
    i = find(xx==X);
    df_3DC = (-3*yy(i)+4*yy(i+1)-yy(i+2))/(xx(i+2)-xx(i));
    df_3DG = (-yy(i-1)+yy(i+1))/(xx(i+1)-xx(i-1));
end