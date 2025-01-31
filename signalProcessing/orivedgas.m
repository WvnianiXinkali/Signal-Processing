% maxRange
maxRange = 10;

% obieqti
x = 4.7;
y = 3.2;

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

D1 = mandzilisgageba(x, y, x2, y2);

D2 = mandzilisgageba(x, y, x3, y3);

% chveni mandzili

S = 256;
n = 1:S;
w = pi / 4;
signal =  cos(w * n);

k = addNoise(signal);


%plot(awgn(zeros(1,S), 0.000001))

rec = liveRecording(k, D);
plot(rec)
dist = timeFromRecording(k, rec);
rec1 = liveRecording(k, D1);
dist1 = timeFromRecording(k, rec1);
rec2 = liveRecording(k, D2);
dist2 = timeFromRecording(k, rec2);




% %SABOLOO LOKACIA X DA Y
[xobieqti yobieqti] = mandzili(x1, y1, D, x2, y2, D1, x3, y3 , D2)
[xchveni ychveni] = mandzili(x1, y1, dist, x2, y2, dist1, x3, y3, dist2);
xchveni = vpa(xchveni)
ychveni = vpa(ychveni)

mandzilisgageba(xobieqti,yobieqti,xchveni,ychveni)
hold on
plot([x1 x2 x3],[y1 y2 y3], 'x', 'MarkerSize', 20,'linewidth', 5);
plot(xchveni, ychveni, 'o', 'MarkerSize', 20, 'linewidth', 5);
plot(xobieqti, yobieqti, 'kx', 'MarkerSize', 20,'linewidth', 5);
hold off








