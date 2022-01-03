clear all; clc;

% Viet function thuc hien cac yeu cau sau doi voi mot ham so bat ki
% a) Tinh dao ham va nguyen ham, sau do ve do thi cua chung tren cung mot he truc toa do
% b) Tim cac diem ma dao ham bang 0
% c) Tinh tich phan tren khoang [-5, 5]
% d) Ap dung voi f(x) = x^3-2*x^2+x-3
syms x;
f = x^3-2*x^2+x-3
[df,F,Xct,I] = khaosat(f)