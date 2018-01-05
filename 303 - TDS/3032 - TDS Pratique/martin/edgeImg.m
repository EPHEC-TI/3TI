%5.3.4.2
% je gere pas les bors afin d'eviter les problèmes de outOfBound indexes
% flemme de gere ca 
% equivalent a une corr avec h = [0 0 0;1 0 0;0 -1 0];
function edgeImg = edgeImg(img)
    edgeImg = img;
    [ligne colonnes] = size(edgeImg); 
    for i=2:ligne - 1
        for j=2:colonnes - 1 
            leftpix = img(i-1,j);
            bottompix = img(i, j+1);
            edgeImg(i,j) = leftpix - bottompix;
        end    
    end