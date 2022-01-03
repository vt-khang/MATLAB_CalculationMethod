clear all; clc;

% Tim tich phan cua ham so cho boi bang sau bang 3 cong thuc Newton-Cotes. Sau do tinh sai so tuong doi cua tung ket qua biet tich phan chinh xac la I = 42
xx = [1; 2; 3; 4; 5; 6; 7];
yy = [4; -6; -14; -14; 0; 34; 94];
I = 42;

I1 = (xx(2)-xx(1))*(yy(2)+yy(1))/2 + (xx(3)-xx(2))*(yy(3)+yy(2))/2 ...
    + (xx(4)-xx(3))*(yy(4)+yy(3))/2 + (xx(5)-xx(4))*(yy(5)+yy(4))/2 ...
    + (xx(6)-xx(5))*(yy(6)+yy(5))/2 + (xx(7)-xx(6))*(yy(7)+yy(6))/2
rEI1 = abs((I-I1)/I)

I2 = (xx(3)-xx(1))*(yy(3)+4*yy(2)+yy(1))/6 ...
    + (xx(5)-xx(3))*(yy(5)+4*yy(4)+yy(3))/6 ...
    + (xx(7)-xx(5))*(yy(7)+4*yy(6)+yy(5))/6
rEI2 = abs((I-I2)/I)

I3 = (xx(4)-xx(1))*(yy(4)+3*yy(3)+3*yy(2)+yy(1))/8 ...
    + (xx(7)-xx(4))*(yy(7)+3*yy(6)+3*yy(5)+yy(4))/8
rEI3 = abs((I-I3)/I)

T = table(I1,rEI1,I2,rEI2,I3,rEI3)