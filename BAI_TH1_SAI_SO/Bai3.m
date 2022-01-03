clear all; clc;

% Tinh sai so tuyet doi va sai so tuong doi cua cac dai luong sau khi su dung gia tri xap xi (3 so thap phan) bang phuong phap lam tron va phuong phap chat cut
p_e = [pi; exp(1); log(2); sqrt(2); sin(1)];

p_1 = round(p_e,3);
aEp1 = abs(p_e-p_1);
rEp1 = abs((p_e-p_1)./p_e);

p_2 = floor(p_e*10^3)/10^3;
aEp2 = abs(p_e-p_2);
rEp2 = abs((p_e-p_2)./p_e);

T = table(p_e,p_1,aEp1,rEp1,p_2,aEp2,rEp2)