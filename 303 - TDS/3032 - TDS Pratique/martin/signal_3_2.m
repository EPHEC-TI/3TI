close all;
clear all;
clc;

f1=440;
f2=441;
Amp = 0.5;
ts=22000;
T=4;
t=0:1/ts:T;
y1=Amp * sin(2*pi*f1*t);
y2=Amp * sin(2*pi*f2*t);
y3 = y1+y2;

subplot(3,1,1);
plot(t,y1);

subplot(3,1,2);
plot(t,y2);

subplot(3,1,3);
plot(t,y3);