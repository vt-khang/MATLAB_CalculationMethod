function[aEy, rEy] = bieuThuc3Bien(y, x1_a, x2_a, x3_a, aEx1, aEx2, aEx3)
    syms x1 x2 x3
    y_a = subs(y, [x1, x2, x3], [x1_a, x2_a, x3_a]);
    dy1 = diff(y, x1);
    dy2 = diff(y, x2);
    dy3 = diff(y, x3);
    dy1_a = subs(dy1, [x1, x2, x3], [x1_a, x2_a, x3_a]);
    dy2_a = subs(dy2, [x1, x2, x3], [x1_a, x2_a, x3_a]);
    dy3_a = subs(dy3, [x1, x2, x3], [x1_a, x2_a, x3_a]);
    aEy = abs(dy1_a)*aEx1 + abs(dy2_a)*aEx2 + abs(dy3_a)*aEx3;
    rEy = aEy/abs(y_a);
end