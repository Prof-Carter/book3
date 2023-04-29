disp('++++++++++++++++++++++++++++++')
disp('問題 C.8 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

P = [ 2        sqrt(2)
      sqrt(2)  3       ] 

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

