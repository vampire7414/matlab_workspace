clear all;

c=imread('city.png');
imshow(c);
cgray=rgb2gray(c);
figure,imshow(cgray);

f=fspecial('average');   % average filter
cf=filter2(f,cgray);     % blur with low pass filter
cu=double(cgray)-cf/1.5; % subtracting a scaled blurred image from the original
figure,imshow(cu/70);    % scale for display

fu=fspecial('unsharp',0.5); % use unsharp filter given by matlab
cfu=filter2(fu,cgray);
figure,imshow(uint8(cfu));  %the same result like above