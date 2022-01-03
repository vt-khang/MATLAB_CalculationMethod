function [] = giaiPTB2(a,b,c)
    delta = b^2-4*a*c;
    if delta < 0
        disp('phuong trinh vo nghiem'), end
    if delta == 0
        disp('phuong trinh co nghiem kep')
        X = -b/(2*a), end
    if delta > 0
        disp('phuong trinh co 2 nghiem phan biet')
        x1 = (-b+sqrt(delta))/(2*a)
        x2 = (-b-sqrt(delta))/(2*a)
    end
end