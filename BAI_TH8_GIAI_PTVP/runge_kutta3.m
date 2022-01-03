function [yy] = runge_kutta3(f,x0,y0,a,b,xx)
    h = xx(2:end)-xx(1:end-1);
    for i = 1:length(xx)-1       
        if i == 1
            k1 = h(i)*f(x0,y0);
            k2 = h(i)*f(x0+h(i)/2,y0+k1/2);
            k3 = h(i)*f(x0+h(i),y0-k1+2*k2);
            yy(i) = y0+(k1+4*k2+k3)/6;
        else
            k1 = h(i)*f(xx(i-1),yy(i-1));
            k2 = h(i)*f(xx(i-1)+h(i)/2,yy(i-1)+k1/2);
            k3 = h(i)*f(xx(i-1)+h(i),yy(i-1)-k1+2*k2);
            yy(i) = yy(i-1)+(k1+4*k2+k3)/6;
        end
    end
    
    xx = xx';
    yy = [y0, yy]';
    
    T = table(xx,yy)
end