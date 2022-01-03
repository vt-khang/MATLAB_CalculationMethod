function [yy] = euler(f,y0,a,b,xx)
    yy = 0*xx;
    for i = 1:length(xx)
        if i == 1, yy(i) = y0; continue; end
        yy(i) = yy(i-1) + (xx(i)-xx(i-1))*f(xx(i-1),yy(i-1));
    end

    xx = xx';
    yy = yy';

    T = table(xx,yy)
end