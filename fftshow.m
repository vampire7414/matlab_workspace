function fftshow(f,type)

if nargin<2
    type='log';
end

if(strcmp(type,'log'))  % if type == 'log'
    f1 = log(1+abs(f));
    fm = max(f1(:));
    imshow(im2uint8(f1/fm))
elseif (strcmp(type,'abs'))  % if type == 'abs'
    fa=abs(f);
    fm=max(fa(:));
    imshow(fa/fm)
else
    error('TYPE must be abs or log.');
end