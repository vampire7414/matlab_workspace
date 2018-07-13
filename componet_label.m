clear all;
a=[0 0 0 0 0 0 0 0 ; 1 1 1 0 1 1 1 0 ; 1 1 0 0 1 1 1 0 ; 0 0 0 0 1 1 1 0 ; 1 1 0 0 0 0 0 0 ; 1 1 0 0 0 1 0 0 ; 0 0 0 0 1 1 0 0];
% L_4=bwlabel(a,4);
% L_8=bwlabel(a,8);
[label,label_max] = bwlabel(a,8);
[row,col] = size( label );
result    = zeros(row,col);

for k = 1:label_max
        label_area(k) = length( find(label==k) ); % ��Ulabel���n
        if (label_area(k) < 5)
            for i=1:row
                for j=1:col
                    if (label(i,j)==k)
                        label(i,j)=0;   
                    end
                end
            end
        end
    end
    
    % �p�G label != 0�A�N�⵲�G�ϳ]��1 (�e��)
    % �p�G label == 0�A�N�⵲�G�ϳ]��0 (�I��)
    for i = 1:row
        for j = 1:col
            if( label(i,j)>0 )
               result(i,j) = 1;
            else
                result(i,j) = 0; 
            end
        end
    end
    
