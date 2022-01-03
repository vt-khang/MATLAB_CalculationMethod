function [c_t,fc_t] = daycung(f,a_t,b_t,Df_t)
    k = 1; hold on;

    STT = [k];
    a = [a_t];
    b = [b_t];
    c = [];
    fc = [];
    Df = [];
    rEc = [];

    while 1;
        c_t = a_t-(b_t-a_t)/(f(b_t)-f(a_t))*f(a_t);
        rEc_t = abs((c_t-a_t)/a_t);
        fc_t = f(c_t);
        plot(k,fc_t,'ro');

        c = [c, c_t,];
        rEc = [rEc, rEc_t,];
        fc = [fc, fc_t,];

        if abs(fc_t) <= Df_t, Df = [Df, {'Dung'},]; break;
        else Df = [Df, {'Sai'},]; end

        dau = sign(f(a_t)*f(c_t));
        if dau >= 0, a_t = c_t;
        else b_t = c_t; end    
        k = k+1;

        a = [a, a_t,];
        b = [b, b_t,];
        STT = [STT, k,];
    end

    STT = STT';
    a = a';
    b = b';
    c = c';
    fc = fc';
    Df = Df';
    rEc = rEc';

    T = table(STT,a,b,c,fc,Df,rEc)
end