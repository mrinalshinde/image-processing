A=imread('contrastlow1.jpg');
B=rgb2gray(A);
subplot(2,3,1);
imshow(B);
title('Original image');
subplot(2,3,2);
imhist(B);
title('Histogram of original image');
min1=min(min(B));
max1=max(max(B));
for i=1:size(B,1)
for j=1:size(B,2)
C(i,j)=uint8(255*(double(B(i,j)-min1)/double(max1-min1)));
end
end
subplot(2,3,3);
imhist(C);
title('Histogram after contrast stretching');
subplot(2,3,4);
imshow(C);
title('Image after contrast stretching');
K=(B>120);
subplot(2,3,5);
imshow(K);%thresholding
title('Original image after thresholding');
for i=1:size(B,1)%digital negative
for j=1:size(B,2)
D(i,j)=uint8(abs(255-B(i,j)));%or imshow(C-255)
end
end
subplot(2,3,6);
imshow(D);
title('Image after digital negative');
