function compress(filename, k)
    %compress('Lenna.png', 10)
    I = imread(filename);
    I = rgb2gray(I);
    I = double(I);
    size(I);
    [U,S,V] = svd(I);
    for i=k+1:size(I,1)
        S(i,i)=0;
    end
    Ik = U * S * V';
    Ik = uint8(Ik);
    imshow(Ik);
end