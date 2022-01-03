clear all; clc; format long;

% Hay viet function de tinh so gan dung do cua dai luong co vo han so thap phan

% a) Cho biet input va output la gi?
% - Input: so chinh xac (p_e) va so thap phan (n)
% - Output: so gan dung (p_a)

% b) Su dung phuong phap lam tron

% c) Su dung phuong phap chat cut

% d) Hay su dung function nay de thuc hien lai bai tap 4
p_e = [pi; exp(1); log(2); sqrt(2); sin(1)];
n = [2; 3; 4; 5; 6];

p_1 = [];
aEp1 = [];
rEp1 = [];
for i = 1:size(n)
    [p_a] = lamtron(p_e(i),n(i));
    p_1 = [p_1, p_a,];
    [aEp,rEp] = saiso(p_e(i),p_1(i));
    aEp1 = [aEp1, aEp,];
    rEp1 = [rEp1, rEp,];
end
p_1 = p_1';
aEp1 = aEp1';
rEp1 = rEp1';

p_2 = [];
aEp2 = [];
rEp2 = [];
for i = 1:size(n)
    [p_a] = chatcut(p_e(i),n(i));
    p_2 = [p_2, p_a,];
    [aEp,rEp] = saiso(p_e(i),p_2(i));
    aEp2 = [aEp2, aEp,];
    rEp2 = [rEp2, rEp,];
end
p_2 = p_2';
aEp2 = aEp2';
rEp2 = rEp2';

T = table(p_e,n,p_1,aEp1,rEp1,p_2,aEp2,rEp2)