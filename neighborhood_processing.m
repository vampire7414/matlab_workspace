clear all;
% x=uint8(10*magic(5)); % get a magic 5*5 matrix!!
% figure,imshow(x);
% 
% mean2(x(1:3,1:3));
%--------------------------------------------------------------

%  x=uint8(10*magic(5)); % get a magic 5*5 matrix!!
%  a=ones(3,3)/9;   % ones(n,n) get a n*n matrix of 1s
%  ans1=filter2(a,x,'same');  % linear filter (matrix 'a') operation to image matrix 'x'
%  ans2=filter2(a,x,'valid'); % linear filter (matrix 'a') operation to image matrix 'x'
%  ans3=filter2(a,x,'full');  % linear filter (matrix 'a') operation to image matrix 'x'

%--------------------------------------------------------------

x=uint8(10*magic(5)); % get a magic 5*5 matrix!!
f1=fspecial('average');
ans4=filter2(f1,x);