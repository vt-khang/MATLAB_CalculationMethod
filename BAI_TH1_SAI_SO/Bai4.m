clear all; clc; format long;

% Thuc hien lai Bai 3 voi so thap phan duoc cho truoc
p_e = [pi; exp(1); log(2); sqrt(2); sin(1)];
n = [2; 3; 4; 5; 6];

p_1 = [];
for i = 1:size(n)
    p_1 = [p_1, round(p_e(i),n(i)),];
end
p_1 = p_1';
aEp1 = abs(p_e-p_1);
rEp1 = abs((p_e-p_1)./p_e);

p_2 = [];
for i = 1:size(n)
    p_2 = [p_2, floor(p_e(i)*10^n(i))/10^n(i),];
end
p_2 = p_2';
aEp2 = abs(p_e-p_2);
rEp2 = abs((p_e-p_2)./p_e);

T = table(p_e,n,p_1,aEp1,rEp1,p_2,aEp2,rEp2)