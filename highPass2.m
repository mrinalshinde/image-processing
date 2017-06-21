clear ;%spatial high pass filters
Image=rgb2gray(imread('coins.jpg'));
laplaceT=[0 1 0;1 -4 1;0 1 0];
ident=[0 0 0;0 1 0;0 0 0];
Image2=imfilter(Image,laplaceT);
subplot(3,2,1);
imshow(Image);title('Original image');
subplot(3,2,2);
imshow(Image2);title('Image after laplacian masking');
sharp=ident-laplaceT;
Image3=imfilter(Image,sharp);
subplot(3,2,[3,4]);
imshow(Image3);title('Sharpened image');
gau=[1 2 1;2 4 2;1 2 1]/16;
highPass=ident-gau;
unMask=ident+(0.1*highPass);
Image4=imfilter(Image,unMask);

subplot(3,2,5);
imshow(Image4);title('Unsharped image');
boost=ident+(7*highPass);
E=imfilter(Image,boost);
subplot(3,2,6);
imshow(E);
title('High boost filtering');
