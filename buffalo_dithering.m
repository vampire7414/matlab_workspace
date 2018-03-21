clear all;

c=imread('buffalo.png');
% imfinfo('buffalo.png');
% imshow(c);
% figure,imshow(grayslice(c,2),gray(2));  % uniform quantization

%uniform quantization example 

c1=imresize(c,[256,256]);
figure,imshow(c1);

figure,imshow(grayslice(c1,2),gray(2)) % 

% dithering example.1
D=[0 128;192 64];                     % ditherimg matrix               
r=repmat(D,128,128);                  % repeat ditherimg matrix
c2=c1>r;                              % boolean  ( if c1>r is true, c2 get 1, else c2 get 0 )
figure,imshow(c2);

%dithering example.2
D2=[0 128 32 160;192 64 224 96;48 176 16 144;240 112 208 80]; % ditherimg matrix               
r2=repmat(D2,64,64);              % repeat ditherimg matrix
c3=c1>r2;                        %  boolean  ( if c1>r2 is true, c3 get 1, else c3 get 0 )
figure,imshow(c3);               %  logical

%dithering example.3
D3=[0 56;84 28];
r3=repmat(D3,128,128)
c4=double(c1);
q=floor(c4/85);
c5=q+(c4-85*q>r3);
figure,imshow(uint8(85*c5));