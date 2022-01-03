function [yn,rEyn_t] = lap(f,y0,a,b,rEy_t)
    syms x y;
    x0 = a; k = 1; yo = y0;

    STT = [k];
    yx = [];
    rEyn = [];
    rEy = [];

    while 1;
        yn = y0 + int(subs(f,y,yo),x,x0,x);
        rEyn_t = double(abs(int(yn-yo,x,a,b)/int(yo,x,a,b)));

        yx = [yx, cellstr(char(yn)),];
        rEyn = [rEyn, rEyn_t,];

        if rEyn_t <= rEy_t, rEy = [rEy, {'Dung'},]; break;
        else rEy = [rEy, {'Sai'},]; end

        yo = yn;
        k = k+1;

        STT = [STT, k,];
    end

    STT = STT';
    yx = yx';
    rEyn = rEyn';
    rEy = rEy';

    T = table(STT,yx,rEyn,rEy)
end