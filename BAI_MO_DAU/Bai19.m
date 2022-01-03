clear all; clc;

% Thuc hien cac yeu cau sau

% a) Viet function tim cac diem cuc tri cua mot ham so bat ki

% b) Ap dung de tim cuc tri ham so f(x) = x^3-6*x
syms x;
f = x^3-6*x
[Xct] = timCucTri(f)