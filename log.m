B=imread('restoration.jpg');
subplot(2,3,1);
imshow(B);
title('Original Image');

A=double(imread('restoration.jpg'));
X=power(A,0.5);
subplot(2,3,2);
imshow(uint8(X));
title('Gamma < 1');

k=power(A,1.7);
subplot(2,3,3);
imshow(uint8(k));
title('Gamma > 1');

M=power(A,1);
subplot(2,3,4);
imshow(uint8(M));
title('Gamma = 1');

L=log(1+I);
subplot(2,3,5);
imshow(uint8(L));
title('Log');

iL=exp(L)-1;
subplot(2,3,6);
imshow(uint8(iL));
title(' Inverse Log');

