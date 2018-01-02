clear all;
close all;
clc;

f=      440;
Amp=    0.5;
ts =    11025;
T =     4;
t =     0:1/ts:T;
y =     Amp*sin(2*pi*f*t);
exp = exp(-t/0.5);
amortie = y.*exp;

subplot(3,1,1);
plot(t,y);

subplot(3,1,2);
plot(t,exp);

subplot(3,1,3);
plot(t,amortie);