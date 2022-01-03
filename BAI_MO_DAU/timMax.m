function [M] = timMax(a,b,c)
    M = a;
    if b > M, M = b; end
    if c > M, M = c; end
end