Fs = 1000;
duree=2;
t=0:1/Fs:duree; 
s=sin(2*pi*440*t);
df = 1/duree;

%de -Fs/2 à Fs/2 
f=-Fs/2:df:Fs/2;
y=abs(fftshift(fft(s)));
plot(f, y);

%de 0 à Fs/2
f1=0:df:Fs/2;
z=y((Fs*duree/2)+1:length(y));
figure;
plot(f1,z);

%de 0 à Fs
%version compliquée
f2=0:df:Fs;
a=[y(1001:2001),y(1:1000)];
figure;
plot(f2, a);
%version simplifiée
a=abs(fft(s));
figure;
plot(f2,a);

%de 0 à Fs/2 simplifiée
figure;
plot(f1, a(1:1001));