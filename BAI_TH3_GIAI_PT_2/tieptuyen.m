function [xn_t,fx_t] = tieptuyen(f,df,xo_t,Df_t)
    syms x;
    k = 1; hold on;

    STT = [k];
    xo = [xo_t];
    xn = [];
    fx = [];
    Df = [];
    rExn = [];

    while 1;
        xn_t = double(xo_t-subs(f,x,xo_t)/subs(df,x,xo_t));
        rExn_t = abs((xn_t-xo_t)/xo_t);
        fx_t = double(subs(f,x,xn_t));
        plot(k,fx_t,'ro');

        xn = [xn, xn_t,];
        rExn = [rExn, rExn_t,];
        fx = [fx, fx_t,];

        if abs(fx_t) <= Df_t, Df = [Df, {'Dung'},]; break;
        else Df = [Df, {'Sai'},]; end

        xo_t = xn_t;
        k = k+1;

        xo = [xo, xo_t,];
        STT = [STT, k,];
    end

    STT = STT';
    xo = xo';
    xn = xn';
    fx = fx';
    Df = Df';
    rExn = rExn';

    T = table(STT,xo,xn,fx,Df,rExn)
end