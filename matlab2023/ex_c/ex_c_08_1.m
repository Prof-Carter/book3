disp('++++++++++++++++++++++++++++++')
disp('��� C.8 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

P = [ 2        sqrt(2)
      sqrt(2)  3       ] 

n = length(P);

disp(' ')
disp('--- �Ώ̍s�� P �̌ŗL�l ---------')
lambda = eig(P)

disp(' ')
if lambda > 0
    disp('P �͐���ł���')
else
    disp('P �͐���ł͂Ȃ�')
end

