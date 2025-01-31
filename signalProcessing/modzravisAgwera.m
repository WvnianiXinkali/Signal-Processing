function [xchveni1, ychveni1] = modzravisAgwera(x, y, v, v0, vs, vx, vy, shemtxveva)

% chveni sensori 1
x1 = 0;
y1 = 0;

% chveni sensori 2
x2 = 0;
y2 = 1;

% chveni sensori 3
x3 = 1;
y3 = 0;

% realuri mandzili
D = mandzilisgageba(x, y, x1, y1);
D = double(D);
D1 = mandzilisgageba(x, y, x2, y2);
D1 = double(D1);
D2 = mandzilisgageba(x, y, x3, y3);
D2 = double(D2);
% chveni mandzili

S = 1024;
n = 1:S;
w = pi / 4;
signal =  cos(w * n);

css = ((x - x1) * vx + (y - y1) * vy) / (D * vs);
css1 = ((x - x2) * vx + (y - y2) * vy) / (D1 * vs);
css2 = ((x - x3) * vx + (y - y3) * vy) / (D2 * vs);

w1 = frequencyShift(w, v, v0, vs, 1, css, shemtxveva);
w2 = frequencyShift(w, v, v0, vs, 1, css1, shemtxveva);
w3 = frequencyShift(w, v, v0, vs, 1, css2, shemtxveva);

w1 = double(w1);
w2 = double(w2);
w3 = double(w3);

p = cos(w1 * n);
l = cos(w2 * n);
l1 = cos(w3 * n);


k = addNoise(p);
k1 = addNoise(l);
k2 = addNoise(l1);


rec = liveRecording(k, D);

dist = timeFromRecording(k, rec);


rec1 = liveRecording(k1, D1);
dist1 = timeFromRecording(k1, rec1);

rec2 = liveRecording(k2, D2);
dist2 = timeFromRecording(k2, rec2);


% %SABOLOO LOKACIA X DA Y
[xobieqti yobieqti] = mandzili(x1, y1, D, x2, y2, D1, x3, y3 , D2);
[xchveni ychveni] = mandzili(x1, y1, dist, x2, y2, dist1, x3, y3, dist2);
xchveni1 = vpa(xchveni);
ychveni1 = vpa(ychveni);

end

