function [Xct] = timCucTri(f)
    syms x;
    df = diff(f,x);
    Xct = solve(df == 0, x);
end