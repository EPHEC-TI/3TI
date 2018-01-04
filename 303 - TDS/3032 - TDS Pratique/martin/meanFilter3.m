% véritable fonction demandée a 5_3_2_6
% mon calcul est pas hyper correct ... 
% je fais 'abord la moyenne des 9 points et puis j'enleve celui du milieu
% alors qu'il faudrait que je fasse la moyenne des 8 points ...
function filteredImg = meanFilter3(noisedImg)
    filteredImg = noisedImg;
    [ligne colonnes] = size(noisedImg);
    for i=2:ligne - 1
        for j=2:colonnes - 1
            filteredImg(i,j) = mean2(noisedImg(i-1:i+1, j-1:j+1)) - noisedImg(i, j)/9;
        end    
    end