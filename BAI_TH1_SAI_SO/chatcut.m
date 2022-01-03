function [p_a] = chatcut(p_e,n)
    p_a = floor(p_e*10^n)/10^n;
end