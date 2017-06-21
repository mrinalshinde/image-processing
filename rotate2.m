clear;%rotation
Image=rgb2gray(imread('dexter.jpg'));
subplot(3,3,5);
imshow(Image);
title('Original image');


img1=affine2d([cosd(30) -sind(30) 0;sind(30) cosd(30) 0;0 0 1]);%30
img2=affine2d([cosd(60) -sind(60) 0;sind(60) cosd(60) 0;0 0 1]);%60
img3=affine2d([cosd(90) -sind(90) 0;sind(90) cosd(90) 0;0 0 1]);%90
img4=affine2d([cosd(-30) -sind(-30) 0;sind(-30) cosd(-30) 0;0 0 1]);%-30
img5=affine2d([cosd(-60) -sind(-60) 0;sind(-60) cosd(-60) 0;0 0 1]);%-60
img6=affine2d([cosd(-90) -sind(-90) 0;sind(-90) cosd(-90) 0;0 0 1]);%-90
C1=imwarp(Image,img1);
C2=imwarp(Image,img2);
C3=imwarp(Image,img3);
C4=imwarp(Image,img4);
C5=imwarp(Image,img5);
C6=imwarp(Image,img6);
subplot(3,3,1);

imshow(C1);
title('Rotation by 30 degrees');
subplot(3,3,3);
imshow(C2);
title('Rotation by 60 degrees');
subplot(3,3,4);
imshow(C3);
title('Rotation by 90 degrees');
subplot(3,3,6);
imshow(C4);
title('Rotation by -30 degrees');
subplot(3,3,7);
imshow(C5);
title('Rotation by -60 degrees');
subplot(3,3,9);
imshow(C6);
title('Rotation by -90 degrees');