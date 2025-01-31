function [xd, yd] = mandzili(x, y, r, x1, y1, r1, x2, y2 , r2)
syms xd1 yd1 zd1
eq1 = r == sqrt((x - xd1) ^ 2 + (y - yd1) ^ 2);
eq2 = r1 == sqrt((x1 - xd1) ^ 2 + (y1 - yd1) ^ 2);

%eq3 = r2 == sqrt((x2 - xd1) ^ 2 + (y2 - yd1) ^ 2)


h = solve([eq1, eq2], [xd1 yd1]);

xd2 = h.xd1;
yd2 = h.yd1;

if isempty(xd2)
    xd = 0;
    yd = 0;
else

    if length(xd2) ~= 1
        m1 = mandzilisgageba(xd2(1), yd2(1), x2, y2);
        m2 = mandzilisgageba(xd2(2), yd2(2), x2, y2);
        if abs(m1 - r2) < abs(m2 - r2)
            xd = h.xd1(1);
            yd = h.yd1(1);
        else
            xd = h.xd1(2);
            yd = h.yd1(2);
        end
    else
        xd = h.xd1;
        yd = h.yd1;
    end
end
end

