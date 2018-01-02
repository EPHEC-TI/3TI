close all;
clear all;
clc;

t1 = 0:0.2:4;
t2 = 0:0.5:4;

subplot(4,1,1);
plot(sin(t1));
title 'i';
grid on;
subplot(4,1,2);
plot(sin(t2));
title 'ii';
grid on;
subplot(4,1,3);
t=0:0.2:4;
stem(sin(t1));
title 'iii';
grid on;
subplot(4,1,4);
t=0:0.5:4;
stem(sin(t2));
title 'iiii';
grid on;