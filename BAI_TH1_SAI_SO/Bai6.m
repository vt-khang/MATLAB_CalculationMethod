clear all; clc;

% Kiem tra cac dai luong co phu hop voi danh gia (dua tren gia tri tieu chuan p_t va sai so gioi han rEp_t
p_e = [218; 6.035; 2545; 37.54];
p_t = [200; 5.897; 2300; 35.89];
rEp = [0.05; 0.02; 0.1; 0.03];

aEp = p_t.*rEp;
p_L = p_t - aEp;
p_R = p_t + aEp;

rEp_t = [];
for i = 1:size(p_e)
    if p_L(i) <= p_e(i) && p_R(i) >= p_e(i)
        rEp_t = [rEp_t, {'Dung'},];
    else
        rEp_t = [rEp_t, {'Sai'},];
    end
end
rEp_t = rEp_t';

T = table(p_e,p_t,rEp,p_L,p_R,rEp_t)