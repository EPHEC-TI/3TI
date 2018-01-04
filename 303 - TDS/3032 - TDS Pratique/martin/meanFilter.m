% ca fonctionne par contre armé vous de patience ... genre ca prend mille
% ans ... en fait utiliser des toutes petites images ...
% en fait non ca va ... 
% je pense que ca buggait car j'avais oublié un point virgule a la dans le for
% il voulait donc affiher le résultat du mean a chaque fois, ca faisait bcp ...
% oui c'était ça ! Ma ram était de plus en plus pleine, le soft doit garder
% en mémoire vive les résultats d'un script qu'il restitue à la fin du script...
function filteredImg = meanFilter(noisedImg)
    filteredImg = noisedImg;
    [ligne colonnes] = size(noisedImg);
    for i=2:ligne - 1
        for j=2:colonnes - 1
            filteredImg(i,j) = mean2(noisedImg(i-1:i+1, j-1:j+1));
        end    
    end