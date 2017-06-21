im=imread('restoration.jpg');
im=rgb2gray(im);
imshow(im);
title('Input')
[N,M]=size(im);
k=0.0001;
LEN = 15;
THETA = 90;
PSF = fspecial('motion',LEN,THETA);
imd = imfilter(im,PSF);
figure, imshow(imd)
title('Degraded Image')
imr=deconvwnr(imd, PSF, k);
figure, imshow(imr)
title('Restored Image')