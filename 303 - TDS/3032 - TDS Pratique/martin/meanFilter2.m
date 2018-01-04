% je 'triche en appliquant direct une matrice, pas envie de me refaire chier avec
% boucles de l'enfer
% vraie version = meanFilter3
function filteredImg = meanFilter2(noisedImg)
  
  filteredImg = noisedImg;
  
  h = [1/8 1/8 1/8;1/8 0 1/8;1/8 1/8 1/8];
 
  filteredImg = imfilter(noisedImg, h);
  
  end