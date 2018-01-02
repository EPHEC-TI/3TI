function plotFFTsin(signal, duree, sampleFreq)
  s = signal;
  df = 1/duree;
  Fs = sampleFreq;

  % de -Fs/2 à Fs/2
  f = -Fs/2:df:Fs/2;
  x = abs(fftshift(fft(s)));
  #whos x;
  %whos f;
  subplot(3,1,1);
  plot(f, x);
  title("-Fs/2 à Fs/2");

  % de 0 à Fs/2
  f = 0:df:Fs/2;
  y = abs(fft(s));
  subplot(3,1,2);
  %whos y;
  h = ceil((length(y)/2));
  %whos h;
  %whos f;
  plot(f, y(1:h));
  title("0 à Fs/2");

  % de 0 à Fs
  f = 0:df:Fs;
  z = abs(fft(s));
  %whos f;
  %whos z;
  subplot(3,1,3);
  plot(f, z);
  title("0 à Fs");
endfunction