clear all; close all;
Fs = 2000;
duree=2;
t=0:1/Fs:duree; 
s=sin(2*pi*440*t);
y=abs(fft(s));
df = 1/duree;
f=0:df:Fs/2; 

plot(f,y(1:Fs+1));

% a remarquer ici (par rapport à l'exercice précédent qu'on ne voit pas apparaitre 
% de fréquence fantome à 560,
% en effet elle se trouve à 1560 (2000 - 440)