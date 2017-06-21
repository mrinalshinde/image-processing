A=imread('ex 2.jpg');
B=rgb2gray(A);
subplot(2,2,1);
imshow(B);
title('Original Image');

%sampling

S1=imresize(B,[480 640]/4);
subplot(2,2,2);
imshow(S1);
title('Sampled by 2');

S3=imresize(B,[480 640]/8);
subplot(2,2,3);
imshow(S3);
title('Sampled by 8');

S4=imresize(C,[480 640]/64);
subplot(2,2,4);
imshow(S4);
title('Sampled by 64');