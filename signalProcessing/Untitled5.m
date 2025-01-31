clc;
clear;
x = 3;
y = 0;

Vx = -1;
Vy = sqrt(3);

% chveni sensori 1
x1 = 1;
y1 = 0;

% chveni sensori 2
x2 = 0;
y2 = 1;

% chveni sensori 3
x3 = 0;
y3 = 0;

vs = 100;

sz = 5;

chemixebi = zeros(1,sz);
chemiyebi = zeros(1,sz);
nagdix = zeros(1,sz);
nagdiy = zeros(1,sz);
chemiv = zeros(1,sz);
t = zeros(1,sz);
chemiv(1) = 2;

for i = 1:sz
    
    time1 = dro(x, y, Vx, Vy, x1, y1, vs);

    time2 = dro(x, y, Vx, Vy, x1, y1, vs);

    time3 = dro(x, y, Vx, Vy, x1, y1, vs);
    
    jemalit = time3;
    
    if time1 >= time2 && time1 >= time3
        jemalit = time1;
    elseif time2 >= time1 && time2>=time3
        jemalit = time2
    end
    t(i) = jemalit;
    [chemix chemiy] = modzravisAgwera(x, y, 100, 0, sqrt(Vx^2 + Vy^2),Vx, Vy, 2);
    
    chemixebi(i) = chemix;
    chemiyebi(i) = chemiy;
    
    x = x + Vx * vpa(jemalit);
    y = y + Vy * vpa(jemalit);
    
    nagdix(i) = x;
    nagdiy(i) = y;
    
   if i > 1
        chemiv(i) = mandzilisgageba(chemixebi(i),chemiyebi(i), chemixebi(i-1),chemiyebi(i-1))/(t(i-1));
   end
    nagdiv(i) = sqrt(Vx^2 + Vy^2);
end

hold on
plot([x1 x2 x3],[y1 y2 y3], 'O', 'MarkerSize', 20,'linewidth', 5);
plot(chemixebi,chemiyebi,'x', 'MarkerSize', 20,'linewidth', 5);
plot(nagdix, nagdiy, 'x', 'MarkerSize', 20,'linewidth', 5);
hold off

figure(2)
hold on
plot(chemixebi,chemiyebi,'x', 'MarkerSize', 20,'linewidth', 5);
plot(nagdix, nagdiy, 'x', 'MarkerSize', 20,'linewidth', 5);
hold off

figure(3)
hold on
plot(1,0, 'x');
plot(1:length(chemiv), chemiv, 'x', 'MarkerSize', 20,'linewidth', 5)
plot(1:length(nagdiv), nagdiv, 'x', 'MarkerSize', 20,'linewidth', 5)
hold off

