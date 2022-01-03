function [I_G2] = gauss2(f,a,b)
    syms t;
    w1 = 1; x12 = -0.5774; t12 = (b-a)*x12/2+(a+b)/2;
    w2 = 1; x22 = 0.5774; t22 = (b-a)*x22/2+(a+b)/2;
    I_G2 = double((b-a)/2*(w1*subs(f,t,t12)+w2*subs(f,t,t22)));
end