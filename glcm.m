clear all;
a=[0 0 1 1 ; 0 0 1 1 ; 0 2 2 2 ;  2 2 3 3];
glcm_matrix=graycomatrix(a,'GrayLimits',[0,3],'NumLevels',4,'offset',[0,1],'Symmetric',true);
stats = graycoprops(glcm_matrix);

% clear all;
% glcm_matrix=[0 1 2 3;1 1 2 3;1 0 2 0;0 0 0 3];
% stats = graycoprops(glcm_matrix);



% stats = graycoprops(glcm_matrix,'Correlation');
% clear all;
% a=[0 0 1 1 ; 0 0 1 1 ; 0 2 2 2 ;  2 2 3 3];
% glcm_matrix=graycomatrix(a,'GrayLimits',[0,3],'NumLevels',4,'offset',[0,1],'Symmetric',false);
% 
% clear all;
% a=[0 0 1 1 ; 0 0 1 1 ; 0 2 2 2 ;  2 2 3 3];
% glcm_matrix=graycomatrix(a,'GrayLimits',[0,3],'NumLevels',4,'offset',[0,-1],'Symmetric',false);