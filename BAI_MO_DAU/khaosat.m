function [df,F,Xct,I] = khaosat(f)
    % a) Tinh dao ham va nguyen ham, sau do ve do thi cua chung tren cung mot he truc toa do
    syms x;
    df = diff(f,x);
    F = int(f,x);
    
    hold on;
    fplot(f,[-4, 4]);
    fplot(df, [-4, 4]);
    fplot(F, [-4, 4]);
    
    % b) Tim cac diem ma dao ham bang 0
    Xct = solve(df == 0, x);
    
    % c) Tinh tich phan tren khoang [-5, 5]
    I = int(f,x,-5,5);
end