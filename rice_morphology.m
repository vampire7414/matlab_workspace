clear all;
r=imread('rice.png');
imshow(r);
%-----------------------------------------------
%%%%%%%%%%%%%%   define kernel   %%%%%%%%%%%%%%
%%----------------------------------------------
sq=ones(3,3);
%-----------------------------------------------
%%%%%%%%%%%%%%   dilation   %%%%%%%%%%%%%%
%%----------------------------------------------
rd=imdilate(r,sq);
figure,imshow(rd);
%-----------------------------------------------
%%%%%%%%%%%%%%   erosion   %%%%%%%%%%%%%%
%%----------------------------------------------
re=imerode(r,sq);
figure,imshow(re);
%-----------------------------------------------
%%%%%%%%%%%%%%   edge detection   %%%%%%%%%%%%%%
%%----------------------------------------------
%-----------------------------------------------
%%%%   internel boundary   %%%%%%%%%%%%%%
%%----------------------------------------------
rwb=r>130;
figure,imshow(rwb);
r_internal_boundary=imerode(rwb,sq);
r_int=rwb&~r_internal_boundary;
figure,imshow(r_int);
%---------------------------------------------------------------------
%%%%   externel boundary & morphological gradient %%%%%%%%%%%%%%
%%--------------------------------------------------------------------
r_externel_boundary=imdilate(rwb,sq);
r_ext=r_externel_boundary&~rwb;
r_grad=r_externel_boundary&~r_internal_boundary;
figure,imshow(r_ext);
figure,imshow(r_grad);

