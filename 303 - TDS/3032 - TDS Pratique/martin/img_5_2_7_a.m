clear all;close all;
im = imread('pout.tif');
tic
im(1:291, 1:240) = 0;
toc