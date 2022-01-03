clear all; clc;

% Tim tich phan cua ham so f(x) = exp(x) tren [2,4] bang phuong phap Gauss. Sau do tinh sai so tuong doi cua tung ket qua so voi tich phan chinh xac
syms t; f = exp(t);
a = 2; b = 4; I = int(f,t,2,4);

w1 = 1; x12 = -0.5774; t12 = (b-a)*x12/2+(a+b)/2;
w2 = 1; x22 = 0.5774; t22 = (b-a)*x22/2+(a+b)/2;
I1 = double((b-a)/2*(w1*subs(f,t,t12)+w2*subs(f,t,t22)))
rEI1 = double(abs((I-I1)/I))

w1 = 0.5556; x13 = -0.7746; t13 = (b-a)*x13/2+(a+b)/2;
w2 = 0.8889; x23 = 0; t23 = (b-a)*x23/2+(a+b)/2;
w3 = 0.5556; x33 = 0.7746; t33 = (b-a)*x33/2+(a+b)/2;
I2 = double((b-a)/2*(w1*subs(f,t,t13)+w2*subs(f,t,t23)+w3*subs(f,t,t33)))
rEI2 = double(abs((I-I2)/I))

w1 = 0.3479; x14 = -0.8611; t14 = (b-a)*x14/2+(a+b)/2;
w2 = 0.6521; x24 = -0.3340; t24 = (b-a)*x24/2+(a+b)/2;
w3 = 0.6521; x34 = 0.3340; t34 = (b-a)*x34/2+(a+b)/2;
w4 = 0.3479; x44 = 0.8611; t44 = (b-a)*x44/2+(a+b)/2;
I3 = double((b-a)/2*(w1*subs(f,t,t14)+w2*subs(f,t,t24)+w3*subs(f,t,t34)+w4*subs(f,t,t44)))
rEI3 = double(abs((I-I3)/I))

T = table(I1,rEI1,I2,rEI2,I3,rEI3)