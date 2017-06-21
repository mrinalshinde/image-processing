A=ones(1,256);
B=[0:255];
C=(uint8(A'*B))';
imshow(C);