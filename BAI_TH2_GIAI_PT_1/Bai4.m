clear all; clc; format long;

% Function de giai phuong trinh dai so va sieu viet bang phuong phap chia doi duoc trinh bay nhu sau

% a) Khi chay chuong trinh tren (voi day du input) thi tren COMMAND WINDOW se xuat hien gi?
% - Cac ket qua cua moi lan lap: k c fc
% - Do thi the hien cac ket qua cua ham fc doi voi tung gia tri c trong moi lan lap
% - Nghiem cuoi cung (c) va gia tri ung voi nghiem do (fc)

% b) Hinh ve xuat hien co truc Ox the hien dieu gi va truc Oy the hien dieu gi?
% - Truc Ox: cac lan lap (k)
% - Truc Oy: gia tri cua ham trong moi lan lap (fc)

% c) Thuc hien lenh >> help plot tren COMMAND WINDOW de tim hieu them ve cach ve hinh. Sau do thu thay doi mau sac va hinh dang cac diem nghiem
help plot

% d) Thuc hien lai bai tap 1
f = @(x) x + sin(x) - 2;
a = 1; b = 1.4; Df = 10^(-3);
[c,fc] = chiadoi(f,a,b,Df)