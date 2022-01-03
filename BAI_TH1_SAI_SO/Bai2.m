clear all; clc; format long;

% Tinh sai so tuyet doi aEp va sai so tuong doi rEp cua cac dai luong co gia tri chinh xac p_e va gia tri gan dung p_a
p_e = [0.9857564312; 42189376; 1102.34598; 2.574314893];
p_a = [0.9768463123; 39773891; 1113.24691; 2.638100358];

aEp = abs(p_e-p_a);
rEp = abs((p_e-p_a)./p_e);

T = table(p_e,p_a,aEp,rEp)