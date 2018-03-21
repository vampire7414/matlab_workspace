clear all;
%-----------------------------------------------
%%%%%%%%%%%%%%   using boolean   %%%%%%%%%%%%%%
%%----------------------------------------------
% r=imread('rice.png');
% imshow(r);
% tr=r>120;
% figure,imshow(tr);
%%----------------------------------------------
%-----------------------------------------------
%%%%%%%%%%%%%%   using im2bw   %%%%%%%%%%%%%%
%%----------------------------------------------
% r=imread('rice.png');
% imshow(r);
% tr=im2bw(r,0.43);
% figure,imshow(tr);
%-----------------------------------------------
%%%%%%%%%%   paper by thresholding   %%%%%%%
%%----------------------------------------------
% p=imread('paper1.tif');
% imshow(p);
% tp=p>241;
% figure,imshow(tp);
%-----------------------------------------------
%%%%   spine by Double Thresholding   %%%%
%%----------------------------------------------
% [x,map]=imread('spine.tif');
% imshow(x,map);
% xgray=ind2gray(x,map);
% figure,imshow(xgray);
% xdouble = x>31 & x<34;
% figure,imshow(xdouble);
% xdouble_im=im2bw(x,0.11)&~im2bw(x,0.12);
% figure,imshow(xdouble_im);
%-----------------------------------------------
%%%%   text by Double Thresholding   %%%%
%%----------------------------------------------
% r=rand(256)*128+127;    %random 256*256 matrix, values : 0~1
% t=imread('text.png');
% imshow(t);
% inverse_t=not(t);
% figure,imshow(inverse_t);
% tr=r.*(inverse_t);
% double_tr=double(tr);
% uint8_dtr=uint8(double_tr);
% figure,imshow(uint8_dtr);
% figure,imshow(uint8_dtr>100);
%---------------------------------------------------------------
%%%%%%%    Choosing an Appropriate Threshold Value   %%%%%%%%
%%-------------------------------------------------------------
% n=imread('rice.png');
% imshow(n);
% n1=im2bw(n,0.35);
% n2=im2bw(n,0.75);
% figure,imshow(n1);
% figure,imshow(n2);
% figure,imhist(n);
%-----------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%        Otsu Method           %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%  A Threshold Selection Method from Gray-Level Histograms  %%%%%%%%
%%-----------------------------------------------------------------------------
% n=imread('rice.png');
% imshow(n);
% tn=graythresh(n);%Global image threshold using Otsu's method
% n_otsu=imbinarize(n,tn);%Binarize image by thresholding
% figure,imshow(n_otsu);





