function [xn_t,fx_t] = lap(f,phi,xo,Df_t)
    k = 1; hold on;

    STT = [k];
    xn = [];
    fx = [];
    Df = [];
    rExn = [];

    while 1
        xn_t = phi(xo);
        rExn_t = abs((xn_t-xo)/xo);
        fx_t = f(xn_t);
        plot(k,fx_t,'ro');

        xn = [xn, xn_t,];
        rExn = [rExn, rExn_t,];
        fx = [fx, fx_t,];

        if abs(fx_t) <= Df_t, Df = [Df, {'Dung'},]; break;
        else Df = [Df, {'Sai'},]; end

        xo = xn_t;
        k = k+1;
        STT = [STT, k];
    end

    STT = STT';
    xn = xn';
    fx = fx';
    Df = Df';
    rExn = rExn';

    T = table(STT,xn,fx,Df,rExn)
end