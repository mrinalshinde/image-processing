clear ;%spatial low pass filters
Image=imread('flower.jpg');
avg=ones(3,3)/9;
Image2=imfilter(Image,avg);
subplot(1,3,1);
imshow(Image);
title('Original image');
subplot(1,3,2);
imshow(Image2);
title('Moving average filter');
gaussian=[1 2 1;2 4 2;1 2 1]/16;
Image3=imfilter(Image,gaussian);
subplot(1,3,3);
imshow(Image3);
title('Gaussian filter');