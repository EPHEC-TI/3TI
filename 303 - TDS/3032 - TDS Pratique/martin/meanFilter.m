% ca fonctionne par contre armé vous de patience ... genre ca prend mille
% ans ...
function filteredImg = meanFilter(noisedImg)
    filteredImg = noisedImg;
    [ligne colonnes] = size(noisedImg)
    for i=2:ligne - 1
        for j=2:colonnes - 1
            filteredImg(i,j) = mean(mean(noisedImg(i-1:i+1, j-1:j+1)))
        end    
    end