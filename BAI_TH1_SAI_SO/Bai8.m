clear all; clc;

% Function sau duoc viet de tinh sai so tuyet doi va sai so tuong doi giua so chinh xac va so gan dung

% a) Cho biet input va output la gi?
% - Input: so chinh xac (p_e) va so gan dung (p_a)
% - Ouput: sai so tuyet doi (aEp) va sai so tuong doi (rEp)

% b) Function nay duoc viet o dau? Dat ten la gi?
% - Function nay duoc viet o file rieng
% - Dat ten file la ten function

% c) Khi muon function nay duoc thuc hien, phai lam gi? Nhu the nao?
% - Chay function nay o file khac va goi ten ham de su dung

% d) Hay su dung function nay de thuc hien lai bai tap 1
p_e = [0.9857; 421; 1102; 2.5743];
p_a = [0.9768; 397; 1113; 2.6381];

aEp_e = [];
rEp_e = [];
for i = 1:size(p_e)
    [aEp, rEp] = saiso(p_e(i),p_a(i));
    aEp_e = [aEp_e, aEp,];
    rEp_e = [rEp_e, rEp,];
end
aEp_e = aEp_e';
rEp_e = rEp_e';

T = table(p_e,p_a,aEp_e,rEp_e)