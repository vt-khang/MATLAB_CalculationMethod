function [I_G3] = gauss3(f,a,b)
    syms t;
    w1 = 0.5556; x13 = -0.7746; t13 = (b-a)*x13/2+(a+b)/2;
    w2 = 0.8889; x23 = 0; t23 = (b-a)*x23/2+(a+b)/2;
    w3 = 0.5556; x33 = 0.7746; t33 = (b-a)*x33/2+(a+b)/2;
    I_G3 = double((b-a)/2*(w1*subs(f,t,t13)+w2*subs(f,t,t23)+w3*subs(f,t,t33)));
end