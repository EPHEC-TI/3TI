% véritable fonction demandée a 5_3_2_6
% on va estimer si un pixel noir est isolé ou pas grace a la moyenne de pixels l'entourant
% pixel noir = 0; pixel blanc = 255
% donc moyenne max (un pixel noir entouré de pixel blanc = 255*8/9 = 226,...
% donc on va décider arbitrairement d'une moyenne qui dépassée estime qu'on a un pixel
% pure qui se détache du fond, ici 50 
function filteredImg = meanFilter3(noisedImg)
    filteredImg = noisedImg;
    [ligne colonnes] = size(noisedImg);
    for i=2:ligne - 1
        for j=2:colonnes - 1
            %tempMean = mean2(noisedImg(i-1:i+1, j-1:j+1)) - noisedImg(i, j)/9;
            tempMean = mean2(noisedImg(i-1:i+1, j-1:j+1));
            if (tempMean > 50)
              filteredImg(i,j) = tempMean;
            end
        end    
    end