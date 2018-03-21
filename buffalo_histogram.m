clear all;

c=imread('buffalo.png');
imshow(c);
figure,imhist(c),axis tight;

%histogram stretching
ch=imadjust(c,[],[],0.5);
figure,imshow(ch);
figure,plot(c,ch,'.'),axis tight;

%histogram equalization
cheq=histeq(c);
figure,imshow(cheq);
