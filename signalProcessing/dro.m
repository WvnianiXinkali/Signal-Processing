function [time] = dro(mmx, mmy, Vx, Vy, x1, y1, vs)
syms t

mmx = mmx + Vx * t;
mmy = mmy + Vy * t;
f = sqrt((mmx - x1) ^ 2 + (mmy - y1) ^ 2);

time = solve(f == vs * t, t);

end

