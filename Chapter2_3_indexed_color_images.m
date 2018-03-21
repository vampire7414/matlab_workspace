clear all;
w=imread('flower.png');%read a rgb image
imshow(w);impixelinfo;%test and show
[w_indexed,map]=rgb2ind(w,16);%rgb to indexed color image (16 indicies)
imwrite(w_indexed,'flower_indexed.png');%form a new image file
imwrite(w_indexed,map,'flower_indexed_with_map.png')%write in with map

w_new=imread('flower_indexed.png');%read a indexed color image
figure,imshow(w_new),impixelinfo;%show,but get a dark image

figure,imshow(w_new,map),impixelinfo;
%Assigning the image to a single matrix picks up only the index

c136r58=impixel(w,136,58);%pixel value of rgb image
c136r58_indexed=impixel(w_new,136,58);%pixel value of indexed color image