function [aEu,rEu] = saisogioihan(u,x_u,y_u)
    syms x y;
    u_e = double(subs(u,[x, y],[x_u, y_u]));
    u_a = round(u_e,3);
    aEu = abs(u_e - u_a);
    rEu = aEu/abs(u_e);
end