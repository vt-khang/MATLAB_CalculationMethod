function [fxx,fxy,fyx,fyy] = tinhDaoHamRiengCap2(f)
    syms x y;
    fxx = diff(f,x,2);
    fxy = diff(f,x,y);
    fyx = diff(f,y,x);
    fyy = diff(f,y,2);
    
    if fxy == fyx
        disp('fxy == fyx')
    else
        disp('fxy ~= fyx')
    end
end