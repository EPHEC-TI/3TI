% quick and dirty ... pas fou et pas tjs 1000% fonctionnel
function noisedImg = noiseGenerator(img)
    noisedImg = img;
    [ligne colonnes] = size(img);
    for i=1:100
        x = ceil(rand*ligne);
        y = ceil(rand*colonnes);
        noisedImg(x,y) = 0;
    end
end