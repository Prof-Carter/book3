disp('++++++++++++++++++++++++++++++')
disp('例 C.11')
disp('++++++++++++++++++++++++++++++')

clear
format compact

P = [ 2  1
      1  2 ] 

n = length(P);


disp(' ')
disp('--- 対称行列 P の固有値 ---------')
lambda = eig(P)

disp(' ')
if lambda > 0
    disp('P は正定である')
else
    disp('P は正定ではない')
end
