clear all; close all;

Fs = 2000;
duree = 2;
t = 0:1/Fs:duree;
win1 = -Fs/2:1/duree:Fs/2;
win2 = 0:1/duree:Fs/2;
win3 = 0:1/duree:Fs;

s = sin(2*pi*440*t).^2;
%p = s.^2;

y = abs(fftshift(fft(s)));
subplot(3,1,1);
plot(win1, y);
y = abs(fft(s));

subplot(3,1,2);
plot(win2, y(1:Fs+1));

subplot(3,1,3);
plot(win3, y);