clear;%image restoration
Imgage=imread('pot.jpg');
Imgage=rgb2gray(Imgage);
subplot(2,2,1);
imshow(Imgage);
title('Original Image')
[N,M]=size(Imgage);
k1=0.005;
k2=0.01;
LEN = 20;
THETA = 30;
Deg = fspecial('motion',LEN,THETA);
image2 = imfilter(Imgage,Deg);
subplot(2,2,2);
imshow(image2)
title('Degraded Image')
Img3=deconvwnr(image2, Deg, k1);
subplot(2,2,3);
imshow(Img3)
title('Restored Image with k=0.005')
Img4=deconvwnr(image2, Deg, k2);
subplot(2,2,4);
imshow(Img4);
title('Restored Image with k=0.01')