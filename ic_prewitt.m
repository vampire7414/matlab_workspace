clear all;
ic=imread('ic.png');
ic_gray=rgb2gray(ic);

px=[-1 0 1;-1 0 1;-1 0 1];   %prewitt x
icx=filter2(px,ic_gray);
imshow(ic_gray);
figure,imshow(icx/255);

py=px';                      %prewitt y
icy=filter2(py,ic_gray);
figure,imshow(icy/255);

edge_p=sqrt(icx.^2+icy.^2);  %prewitt x&y (combined)
figure,imshow(edge_p/255);

tn=graythresh(edge_p);%otsu method to find the best threshold value
edge_p_binarize=imbinarize(edge_p/255,tn);%binarize image by threshold
figure,imshow(edge_p_binarize);

%or, you can just use edge function, haha, so lazy -.-
edge_p_lazy=edge(ic_gray,'prewitt');
figure,imshow(edge_p_lazy);

