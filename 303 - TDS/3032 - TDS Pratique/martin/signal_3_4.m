clear all;
close all;
clc;

Note=440;
Amp=1;
ts=11025;
T=1;
t=0:1/ts:T;
for i=1:17
   y=Amp * sin(2*pi*Note*t);
   sound(y,ts);
   Note=Note*(2^(1/6));
end