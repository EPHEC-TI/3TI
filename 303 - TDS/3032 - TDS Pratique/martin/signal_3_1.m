close all;
clear all;
clc;

f=440;
Amp = 0.5;
ts=22000;
T=0.044;
t=0:1/ts:T;
y=Amp * sin(2*pi*f*t);
plot(t,y);
grid on;