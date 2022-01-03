function[aEy, rEy] = bieuThuc2Bien(y, x1_a, x2_a, aEx1, aEx2)
    syms x1 x2
    y_a = subs(y, [x1, x2], [x1_a, x2_a]);
    dy1 = diff(y, x1);
    dy2 = diff(y, x2);
    dy1_a = subs(dy1, [x1, x2], [x1_a, x2_a]);
    dy2_a = subs(dy2, [x1, x2], [x1_a, x2_a]);
    aEy = abs(dy1_a)*aEx1 + abs(dy2_a)*aEx2;
    rEy = aEy/abs(y_a);
end