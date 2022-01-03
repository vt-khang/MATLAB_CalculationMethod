clear all; clc;

% Hay viet function de kiem tra so chinh xac co phu hop voi danh gia (p_t va aEp_t) hay khong?

% a) Cho biet input va output la gi?
% - Input: so chinh xac (p_e), so gan dung (p_t) va sai so tuyet doi (aEp)
% - Output: can trai (p_L), can phai (p_R) va danh gia (aEp_t)

% b) Hay su dung function nay de thuc hien lai bai tap 5
p_e = [17.351; 11205; 38.735; 319];
p_t = [15.932; 11115; 36.215; 297];
aEp = [1.247; 120; 1.327; 15];

p_L = [];
p_R = [];
aEp_t = [];
for i = 1:size(p_e)
    [pL,pR,aEpt] = danhgia1(p_e(i),p_t(i),aEp(i));
    p_L = [p_L, pL,];
    p_R = [p_R, pR,];
    aEp_t = [aEp_t, aEpt,];
end
p_L = p_L';
p_R = p_R';
aEp_t = aEp_t';

T = table(p_e,p_t,aEp,p_L,p_R,aEp_t)

% c) Hay su dung function nay de kiem tra su phu hop cua mot hop banh co khoi luong 438g voi tieu chuan 425 ± 15g
p_e = 438;
p_t = 425;
aEp = 15;
[p_L,p_R,aEp_t] = danhgia1(p_e,p_t,aEp);
T = table(p_e,p_t,aEp,p_L,p_R,aEp_t)

% d) Hay su dung function nay de kiem tra su phu hop cua mot toa xe lua co chieu dai 15659cm voi tieu chuan 15586 ± 123cm
p_e = 15659;
p_t = 15586;
aEp = 123;
[p_L,p_R,aEp_t] = danhgia1(p_e,p_t,aEp);
T = table(p_e,p_t,aEp,p_L,p_R,aEp_t)