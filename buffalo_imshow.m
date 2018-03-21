clear all;
%c=imread('buffalo.png');% c matrix values are unit8 (0~255)
%cd= double(c);% c matrix values were transformed to double (0~1)

%-------------------------------
%imshow(c),figure,imshow(cd);
%Original values doubled were greater than 1 are now being displayed as white
%-------------------------------

%-------------------------------
%imshow(c),figure,imshow(cd/255);
%To display the matrix cd, we need to scale it to the range 0–1
%-------------------------------
%c=imread('buffalo.png');
%cd=im2double(c);
%imshow(cd);

%c2=unit8(255*cd);
%c3=im2unit8(cd);  better than the way of c2

c=imread('buffalo.png');
cl=c>120;
% if(c matrix elements>120)
    % cl matrix elements = 1  
% else cl matrix elements = 0 
% thus cl matrix is formed by 0 and 1
whos c cl;
imshow(cl);% figure 1
clu=uint8(cl);
whos c cl clu;
figure,imshow(clu); % all black, the reason is uint8 elements is 0~255, 
% 0 and 1 in uint8 both are black and vary deep gray
% so the results image looks like all black
% figure 2
figure,imshow(logical(clu)); % figure 3
figure,imshow(double(clu));% figure 4