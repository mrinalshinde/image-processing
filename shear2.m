clear;%shear
Image=rgb2gray(imread('cat.jpg'));
img1=affine2d([1 0.5 0;0 1 0;0 0 1]);%vertical
img2=affine2d([1 0 0;0.5 1 0;0 0 1]);%horizontal
C1=imwarp(Image,img1);
C2=imwarp(Image,img2);
subplot(3,1,1);
imshow(Image);
title('Original image');
subplot(3,1,2);
imshow(C1);
title('Vertical shear');
subplot(3,1,3);
imshow(C2);
title('Horizontal shear');