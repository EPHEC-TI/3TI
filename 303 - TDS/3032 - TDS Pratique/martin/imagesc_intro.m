clear all;
close all;
clc;

R=rand(10);

subplot(3, 1, 1);
imagesc(R(1,:))
title 'i'

subplot(3,1,2);
imagesc(R(:,1));
title 'ii'
subplot(3,1,3);
imagesc(diag(R));
title 'i'

figure;
imagesc(R);