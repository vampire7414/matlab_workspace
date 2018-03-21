clear all;
c=imread('circles.png');
c_gray=rgb2gray(c);%because the original image is rgb image
imshow(c_gray);
%-------------------------------------------------------------
%%%%%%%%%%%%%%   making image nonuniform   %%%%%%%%%%%%%%
%%------------------------------------------------------------
x=ones(244,1)*(1:244);
c2=double(c_gray).*(x/2+50)+(1-double(c)).*x/2;
c3=uint8(255*mat2gray(c2));
figure,imshow(c3);