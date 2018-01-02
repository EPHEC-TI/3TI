clear all;close all;
im = imread('pout.tif');
tic
    for i=1:291
        im(i,:)=0;
    end
toc