A=imread('expt 2.jpg');
B=rgb2gray(A);
imshow(B);
title('Original Image(8 bit)');
 
Q1=B/2;
subplot(2,2,1);
imshow(Q1,[0,127]);
title('Quantized by 2(7bit)');
 
Q2=B/4;
subplot(2,2,2);
imshow(Q2,[0,63]);
title('Quantized by 4(6bit)');
 
Q2=B/8;
subplot(2,2,3);
imshow(Q2,[0,31]);
title('Quantized by 8(5 bit)');
 
Q3=B/64;
subplot(2,2,4);
imshow(Q3,[0,3]);
title('Quantized by 64(2 bit)');






