clear all;

c=imread('buffalo.png');
f1=fspecial('gaussian');          % default 3*3 gaussian matrix with sigma=0.5
f2=fspecial('gaussian',[50 50],3) %50*50 gaussian matrix with sigma=3
f3=fspecial('gaussian',[50 50],9) %50*50 gaussian matrix with sigma=3

figure,surf(1:3,1:3,f1);
figure,surf(1:50,1:50,f2);
figure,surf(1:50,1:50,f3);

cf1=filter2(f1,c);
cf2=filter2(f2,c);
cf3=filter2(f3,c);

figure,imshow(c);
figure,imshow(uint8(cf1));
figure,imshow(uint8(cf2));
figure,imshow(uint8(cf3));