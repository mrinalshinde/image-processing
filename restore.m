
im=imread('restoration.jpg');
im=rgb2gray(im);
subplot(2,2,1);
imshow(im);
title('Original Image')
[N,M]=size(im);
k1=0.00001;
k2=0.001;
LEN = 30;
THETA = 10;
PSF = fspecial('motion',LEN,THETA);
imd = imfilter(im,PSF);
subplot(2,2,2);
imshow(imd)
title('Degraded Image')
imr1=deconvwnr(imd, PSF, k1);
subplot(2,2,3);
imshow(imr1)
title('Restored Image with k=0.00001')
imr2=deconvwnr(imd, PSF, k2);
subplot(2,2,4);
imshow(imr2);
title('Restored Image with k=0.001')