clear all;

c=imread('buffalo.png');
f1=fspecial('average');
f2=fspecial('average',9);
f3=fspecial('average',15);
f4=fspecial('average',25)

cf1=filter2(f1,c);
cf2=filter2(f2,c);
cf3=filter2(f3,c);
cf4=filter2(f4,c);

figure,imshow(c);
figure,imshow(cf1/255);
figure,imshow(uint8(cf1));
figure,imshow(uint8(cf2));
figure,imshow(uint8(cf3));
figure,imshow(uint8(cf4));