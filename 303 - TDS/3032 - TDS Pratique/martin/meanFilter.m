% ca fonctionne par contre arm� vous de patience ... genre ca prend mille
% ans ... en fait utiliser des toutes petites images ...
% en fait non ca va ... 
% je pense que ca buggait car j'avais oubli� un point virgule a la dans le for
% il voulait donc affiher le r�sultat du mean a chaque fois, ca faisait bcp ...
% oui c'�tait �a ! Ma ram �tait de plus en plus pleine, le soft doit garder
% en m�moire vive les r�sultats d'un script qu'il restitue � la fin du script...
function filteredImg = meanFilter(noisedImg)
    filteredImg = noisedImg;
    [ligne colonnes] = size(noisedImg);
    for i=2:ligne - 1
        for j=2:colonnes - 1
            filteredImg(i,j) = mean2(noisedImg(i-1:i+1, j-1:j+1));
        end    
    end