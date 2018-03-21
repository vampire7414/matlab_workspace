clear all;

c=imread('buffalo.png');
f1=fspecial('laplacian');
f2=fspecial('log');
cf1=filter2(f1,c);
cf2=filter2(f2,c);
figure,imshow(c);
figure,imshow(cf1/100);
figure,imshow(cf2/100);