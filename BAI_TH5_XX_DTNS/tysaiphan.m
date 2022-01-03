function s = tysaiphan(xx,yy,i,j)
    if i == 1, s = yy(j);
    else s = (tysaiphan(xx,yy,i-1,j+1)-tysaiphan(xx,yy,i-1,j))/(xx(j+i-1)-xx(j)); end
end