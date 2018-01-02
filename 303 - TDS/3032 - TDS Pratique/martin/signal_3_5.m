clear all;
close all;
clc;

f=      440;
Amp=    1;
noiseAmp=1;
ts =    11025;
T =     4;
t =     0:1/ts:T;
y =     Amp*sin(2*pi*f*t);
noise = noiseAmp*rand(1, length(y));
y_noise = y + noise;

subplot(3,1,1);
plot(t,y);

subplot(3,1,2);
plot(t,noise);

subplot(3,1,3);
plot(t,y_noise);