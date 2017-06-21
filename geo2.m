clear;%geometric operations
Image=rgb2gray(imread('android.jpg'));
imshow(Image);
img1=affine2d([4 0 0;0 1 0;0 0 1]);%scaling(shrink)
img2=affine2d([0.3 0 0;0 1 0;0 0 1]);%scaling(stretch)
img3=affine2d([-1 0 0;0 1 0;0 0 1]);%flipping(horizontal)
img4=affine2d([1 0 0;0 -1 0;0 0 1]);%flipping(vertical)
img5=affine2d([-1 0 0;0 -1 0;0 0 1]);%flipping(horizontal and vertical)
C1=imwarp(Image,img1);
C2=imwarp(Image,img2);
C3=imwarp(Image,img3);
C4=imwarp(Image,img4);
C5=imwarp(Image,img5);
subplot(3,2,1);
imshow(Image);
title('Original image');
subplot(3,2,2);
imshow(C1);
title('Image scaled by 4');
subplot(3,2,3);
imshow(C2);
title('Image scaled by 0.3');
subplot(3,2,4);
imshow(C3);
title('Image horizontally flipped');
subplot(3,2,5);
imshow(C4);
title('image vertically flipped');
subplot(3,2,6);
imshow(C5);
title('Image flipped horizontally and vertically');