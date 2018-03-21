clear all;
a=[0 0 1 1 ; 0 0 1 1 ; 0 2 2 2 ;  2 2 3 3];
glcm_matrix=graycomatrix(a,'GrayLimits',[0,3],'NumLevels',4,'offset',[0,1],'Symmetric',true);