A=imread('thresholding.jpg');
B=rgb2gray(A);
subplot(2,2,1);
imshow(B);
title('Original image');
K=(B>100);
subplot(2,2,2);
imshow(K);
title('Original image after thresholding');

for i=1:size(B,1)
for j=1:size(B,2)
N(i,j)=uint8(abs(255-B(i,j)));
end
end
subplot(2,2,3);
imshow(N);
title('Image after digital negative');
