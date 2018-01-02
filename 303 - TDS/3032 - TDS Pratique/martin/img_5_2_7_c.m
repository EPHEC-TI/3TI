clear all;close all;
im = imread('pout.tif');
tic
    for i=1:291
        for j=1:240
            im(i,j)=0;
        end
    end
toc