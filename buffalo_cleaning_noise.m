clear all;
%-----------------------------------------------
%%%%%%% cleaning salt and pepper noise%%%%%%%
%%----------------------------------------------
% c=imread('buffalo_sp_noise.png');
% imshow(c);

% avef=fspecial('average',[7,7]);
% 
% avefc=filter2(avef,c);            % average filter
% figure,imshow(uint8(avefc));

% medianfc=medfilt2(c);             % median filter
% figure,imshow(medianfc);
%-----------------------------------------------


%-----------------------------------------------
%%%%%%% cleaning gaussian noise  %%%%%%%
%%----------------------------------------------
% c=imread('buffalo.png');
% imshow(c);
% s=size(c);
% c_ga10=zeros(s(1),s(2),10);       % 3-dimension array, depth is 10
% 
% for i=1:10
%     c_ga10(:,:,i)=imnoise(c,'gaussian'); % Chaper 8.4 Image Averaging
% end
% 
% c_ga10_av=mean(c_ga10,3);           
% figure,imshow(uint8(c_ga10_av));
%-----------------------------------------------
%-----------------------------------------------
% c=imread('buffalo.png');
% imshow(c);
% c_gaussian_noise=imnoise(c,'gaussian');
% figure,imshow(c_gaussian_noise);
% 
% a3=fspecial('average')
% a5=fspecial('average',[5,5]);
% cg3=filter2(a3,c_gaussian_noise);        % Chaper 8.4 Average Filtering
% cg5=filter2(a5,c_gaussian_noise);
%
% figure,imshow(uint8(cg3));
% figure,imshow(uint8(cg5));
%-----------------------------------------------
% c=imread('buffalo.png');
% imshow(c);
% c_gaussian_noise=imnoise(c,'gaussian');
% figure,imshow(c_gaussian_noise);
% 
% c1=wiener2(c_gaussian_noise);
% c2=wiener2(c_gaussian_noise,[5,5]);
% c3=wiener2(c_gaussian_noise,[7,7]);
% c4=wiener2(c_gaussian_noise,[9,9]);  
% 
% figure,imshow(c1);                       % Chaper 8.4 Adaptive Filtering
% figure,imshow(c2);
% figure,imshow(c3);
% figure,imshow(c4);
%-----------------------------------------------


%-----------------------------------------------
%%%%%%% cleaning periodic noise  %%%%%%%
%%----------------------------------------------
% c=imread('buffalo_periodic_noise.png');
% imshow(c);
% [x,y]=meshgrid(1:481,1:321);
% 
% cf=fftshift(fft2(c));
% figure,fftshow(cf,'log');
% 
% impixelinfo;
% z=sqrt((x-241).^2+(y-161).^2);        % Chaper 8.5 Band reject filtering
% d=sqrt((216-241)^2+(151-161)^2);
% k=1;
% br=(z<floor(d-k) | z>ceil(d+k));
% cbr=cf.*br;
% figure,fftshow(cbr,'log');
% 
% icbr=ifft2(cbr);
% figure,fftshow(icbr,'abs');
%%----------------------------------------------


%-----------------------------------------------
%%%%%%%          inverse         %%%%%%%
%%----------------------------------------------
% c=imread('buffalo.png');
% imshow(c);
% cf=fftshift(fft2(c));                % Chaper 8.6  Inverse
% b=lbutter(c,15,2);
% cb=cf.*b;
% cba=abs(ifft2(cb));
% cba=uint8(255*mat2gray(cba));
% figure,imshow(cba);


%-----------------------------------------------
%%%%%%%      Motion Deblurring      %%%%%%%
%%----------------------------------------------
bc=imread('buffalo.png');
imshow(bc);
impixelinfo;
bg=im2uint8(bc);
b=bg(100:300,50:305);  % x:50~305 y:100~300 
figure,imshow(b);
m=fspecial('motion',7,0);
bm=imfilter(b,m);
figure,imshow(bm);

% m2=zeros(256,201);
% m2(1,1:7)=m;
% mf=fft2(m2);
% bmi=ifft2(fft2(bm)./mf');
% figure,fftshow(bmi,'abs');

d=0.02;
m2=zeros(201,256);
m2(1,1:7)=m;
mf=fft2(m2);
mf(find(abs(mf)<d))=1;
bmi=ifft2(fft2(bm)./mf);
figure,imshow(mat2gray(abs(bmi))*2);



