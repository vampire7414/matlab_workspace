clear all;

c=imread('buffalo.png');
imshow(c);

c_sp_noise=imnoise(c,'salt & pepper');
figure,imshow(c_sp_noise);

c_gaussian_noise=imnoise(c,'gaussian');
figure,imshow(c_gaussian_noise);

c_speckle_noise=imnoise(c,'speckle');
figure,imshow(c_speckle_noise);

[rs,cs]=size(c);
[x,y]=meshgrid(1:cs,1:rs);
p=sin(x/3+y/5)+1;
cc=im2double(c);
c_periodic_noise=(2*cc+(p/2))/3;
figure,imshow(c_periodic_noise);

imwrite(c_sp_noise,'buffalo_sp_noise.png','png');
imwrite(c_gaussian_noise,'buffalo_gaussian_noise.png','png');
imwrite(c_speckle_noise,'buffalo_speckle_noise.png','png');
imwrite(c_periodic_noise,'buffalo_periodic_noise.png','png');