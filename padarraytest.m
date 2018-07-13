clear all;
a=[8 1 6; 3 5 7 ; 4 1 2];
a1=padarray(a,[0 2],9);
a2=padarray(a,[0 2],9,'pre');
a3=padarray(a,[0 4],'circular','post');
a4=padarray(a,[2 2],'symmetric');