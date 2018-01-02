clear all; close all;
Fs     = 1000;
duree  = 2;
t      = 0:1/Fs:duree; 
s      = sin(2*pi*440*t);
df     = 1/duree;

% de -Fs/2 à Fs/2
f = -Fs/2:df:Fs/2;
x = abs(fftshift(fft(s)));
whos f;
whos x;
subplot(3,1,1);
plot(f, x);
title("-Fs/2 à Fs/2");

% de 0 à Fs/2
f = 0:df:Fs/2;
y = abs(fft(s));
subplot(3,1,2);
plot(f, y(1:Fs+1));
title("0 à Fs/2");

% de 0 à Fs
f = 0:df:Fs;
z = abs(fft(s));
subplot(3,1,3);
plot(f, z);
title("0 à Fs");