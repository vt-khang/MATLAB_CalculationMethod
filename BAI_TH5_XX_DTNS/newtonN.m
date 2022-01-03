function [N,yc] = newtonN(xx,yy,xc,n)
    Ni = [];
    for i = 1:n
        Ni = [Ni, tysaiphan(xx,yy,i,1),];
    end

    syms x;
    N = 0;
    for i = 1:n
        N_T = 1;
        for j = 1:i-1
            N_T = N_T * (x-xx(j));
        end
        N = N + N_T*Ni(i);
    end
    yc = double(subs(N,x,xc));
end