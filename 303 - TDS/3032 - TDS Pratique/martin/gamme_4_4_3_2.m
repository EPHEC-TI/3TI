a  = 1;
Fs = 8000;
t  = 0:1/Fs:1;

N1 = 440; % La 3e octave
N2 = 880; % 
N3 = 1760;
N4 = 3520;
N5 = 7040; % Provoquera une fréquence fantome a 960 Hz (8000 - 7040)
N6 = 14080; % Provoquera une fréquence fantome a 1960 Hz (8000*2 - 14080)
N7 = 28160; % Provoquera une fréquence fantome a 3840 Hz (8000*4 - 28160)
% On remarque qu'on aura un problème car on va échantilloner avec une
% valeur inférieure au double de la fréquence maximale du signal (#Shannon)

gamme = [];
for i=0:6
    sig = a*sin(2*pi*440*(2^i)*t);
    gamme = [gamme,sig];
end
