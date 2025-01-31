

x = 3;
y = 0;
r = 2;

x1 = 2;
y1 = 0;
r1 = 2;

x2 = 5;
y2 = 5;
r2 = 3;

pasuxi = mandzilisgageba(x,y,0,0);
pasuxi3 = mandzilisgageba(x1,y1,0,0);
pasuxi2 = mandzilisgageba(x2,y2,0,0);
% r = pasuxi;
% r1 = pasuxi3;
% r2 = pasuxi2;

syms xd1 yd1 zd1
eq1 = r == sqrt((x - xd1) ^ 2 + (y - yd1) ^ 2);
eq2 = r1 == sqrt((x1 - xd1) ^ 2 + (y1 - yd1) ^ 2);
eq3 = r2 == sqrt((x2 - xd1) ^ 2 + (y2 - yd1) ^ 2) + 0*zd1;
h = solve([eq1,eq2,eq3], [xd1 yd1 zd1]);
h.xd1
h.yd1

[k m] = mandzili(x, y, r, x1, y1, r1, x2, y2 , r2)