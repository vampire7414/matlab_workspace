clear all;

c=imread('buffalo.png');

%whos c;
%cd=bitget(c,8);
%cl=logical(cd);
%imshow(cl);
%figure,imshow(c);

posx=[0 1 2 0 1 2 0 1]/3;
posy=[2 2 2 1 1 1 0 0]/3;

for i = 1:8
    subplot('position',[posx(i),posy(i),0.3,0.3]);
    imshow(logical(bitget(c,i)))
end