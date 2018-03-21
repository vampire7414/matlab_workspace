clear all;
colorbird=imread('bird.png');
imshow(colorbird),impixelinfo;size_colorbird=size(colorbird);
graybird=rgb2gray(colorbird);
figure,imshow(graybird),impixelinfo;size_graybird=size(graybird);
c336r264_rgb_method1=colorbird(264,336,1:3);%column336,row264
c336r264_rgb_method2=impixel(colorbird,336,264);%column336,row264
