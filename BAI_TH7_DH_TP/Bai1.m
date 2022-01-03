clear all; clc;

% Cho ham so cho boi bang sau. Tim dao ham cua no tai x = 1 bang cac cong thuc sai phan va ba diem. Sau do tinh sai so tuong doi cua tung ket qua biet gia tri dao ham chinh xac la f'(1) = 0.5403
xx = [0.9; 1; 1.1; 1.2];
yy = [0.7833; 0.8415; 0.8912; 0.9320];
df = 0.5403;

df_SPT = (yy(3)-yy(2))/(xx(3)-xx(2))
rEdf_SPT = abs((df-df_SPT)/df)
df_SPL = (yy(2)-yy(1))/(xx(2)-xx(1))
rEdf_SPL = abs((df-df_SPL)/df)

df_3DC = (-3*yy(2)+4*yy(3)-yy(4))/(xx(4)-xx(2))
rEdf_3DC = abs((df-df_3DC)/df)
df_3DG = (-yy(1)+yy(3))/(xx(3)-xx(1))
rEdf_3DG = abs((df-df_3DG)/df)

T = table(df_SPT,rEdf_SPT,df_SPL,rEdf_SPL,df_3DC,rEdf_3DC,df_3DG,rEdf_3DG)