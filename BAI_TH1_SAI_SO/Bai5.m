clear all; clc;

% Kiem tra cac dai luong co phu hop voi danh gia (dua tren gia tri tieu chuan p_t va sai so gioi han aEp_t
p_e = [17.351; 11205; 38.735; 319];
p_t = [15.932; 11115; 36.215; 297];
aEp = [1.247; 120; 1.327; 15];

p_L = p_t - aEp;
p_R = p_t + aEp;

aEp_t = [];
for i = 1:size(p_e)
    if p_L(i) <= p_e(i) && p_R(i) >= p_e(i)
        aEp_t = [aEp_t, {'Dung'},];
    else
        aEp_t = [aEp_t, {'Sai'},];
    end
end
aEp_t = aEp_t';

T = table(p_e,p_t,aEp,p_L,p_R,aEp_t)