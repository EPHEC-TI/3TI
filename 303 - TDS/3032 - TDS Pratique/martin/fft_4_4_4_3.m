clear all; close all;

Fs = 2000;
duree = 2;
t = 0:1/Fs:duree;
f1 = -Fs/2:1/duree:Fs/2;
f2 = 0:1/duree:Fs/2;
f3 = 0:1/duree:Fs;

s = 2*cos(2*pi*50*t) + 1*sin(2*pi*440*t);

y = abs(fftshift(fft(s)));
subplot(3,1,1);
plot(f1, y);
y = abs(fft(s));

subplot(3,1,2);
plot(f2, y(1:Fs+1));

subplot(3,1,3);
plot(f3, y);

% on observe bien les fréquences a 50 et 440 hz mais également les
% fréquences fantomes engendrées autour de 2kHz à 1560 et 1950 Hz.
