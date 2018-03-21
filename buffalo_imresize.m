clear all;

c=imread('buffalo.png');
%d=imresize(c,1/16);
%imshow(c),figure,imshow(d);

%r=imresize(d,16,'nearest');
%figure,imshow(r);
%whos ;

for i = 1:4;
    subplot(2,2,i),imshow()
