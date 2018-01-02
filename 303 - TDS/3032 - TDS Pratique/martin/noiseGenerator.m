% attention cette fonction est tres bancale et calibrée notamment pour
% lenna ...

function noisedImg = noiseGenerator(img, noiseSize)
    noisedImg = img;
    nSize = noiseSize;
    [ligne colonnes] = size(img)
    for i=1:100
        x = randNumByte();
        y = randNumByte();
        if x+nSize > colonnes -5 || y+nSize > ligne -5
            return
        else
            noisedImg(x : x + nSize, y : y + nSize) = 0;
        end
    end
end