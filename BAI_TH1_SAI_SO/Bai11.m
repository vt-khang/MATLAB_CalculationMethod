clear all; clc;

% Hay viet function de kiem tra so chinh xac co phu hop voi danh gia (p_t va rEp_t) hay khong?

% a) Cho biet input va output la gi?
% - Input: so chinh xac (p_e), so gan dung (p_t) va sai so tuong doi (rEp)
% - Output: can trai (p_L), can phai (p_R) va danh gia (aEp_t)

% b) Hay su dung function nay de thuc hien lai bai tap 6
p_e = [218; 6.035; 2545; 37.54];
p_t = [200; 5.897; 2300; 35.89];
rEp = [0.05; 0.02; 0.1; 0.03];

p_L = [];
p_R = [];
rEp_t = [];
for i = 1:size(p_e)
    [pL,pR,rEpt] = danhgia2(p_e(i),p_t(i),rEp(i));
    p_L = [p_L, pL,];
    p_R = [p_R, pR,];
    rEp_t = [rEp_t, rEpt,];
end
p_L = p_L';
p_R = p_R';
rEp_t = rEp_t';

T = table(p_e,p_t,rEp,p_L,p_R,rEp_t)

% c) Hay su dung function nay de kiem tra su phu hop cua mot tuyt kem danh rang co khoi luong 138g voi tieu chuan 135 ± 3% g
p_e = 138;
p_t = 135;
rEp = 0.03;
[p_L,p_R,rEp_t] = danhgia2(p_e,p_t,rEp);
T = table(p_e,p_t,rEp,p_L,p_R,rEp_t)

% d) Hay su dung function nay de kiem tra su phu hop cua mot chai nuoc mam co do dam 43.789o voi tieu chuan 42.5 ± 5% o
p_e = 43.789;
p_t = 42.5;
rEp = 0.05;
[p_L,p_R,rEp_t] = danhgia2(p_e,p_t,rEp);
T = table(p_e,p_t,rEp,p_L,p_R,rEp_t)