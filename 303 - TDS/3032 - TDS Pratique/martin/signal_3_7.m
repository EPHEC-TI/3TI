clear all;
close all;
clc;

f=      440;
Amp=    0.5;
ts =    22000;
T =     4;
t =     0:1/ts:T;
y =     Amp*sin(2*pi*f*t);
d = 0 : 1/5 : T; 
square = Amp*square(t);
sawtooth = sawtooth(t);
sinc = sinc(t);
pulstran = pulstran(t, d, 'gauspuls');
chirp = chirp(t,0,1,2);

subplot(5,1,1);
plot(square);
title 'square';

subplot(5,1,2);
title 'sawtooth';
plot(sawtooth);

subplot(5,1,3);
title 'sinc';
plot(sinc);

subplot(5,1,4);
title 'pulstran';
plot(pulstran);

subplot(5,1,5);
title 'chirp';
plot(chirp);

    
