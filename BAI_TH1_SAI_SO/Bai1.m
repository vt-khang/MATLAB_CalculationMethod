clear all; clc;

% Tinh sai so tuyet doi aEp va sai so tuong doi rEp cua cac dai luong co gia tri chinh xac p_e va gia tri gan dung p_a
p_e = [0.9857; 421; 1102; 2.5743];
p_a = [0.9768; 397; 1113; 2.6381];

aEp = abs(p_e-p_a);
rEp = abs((p_e-p_a)./p_e);

T = table(p_e,p_a,aEp,rEp)