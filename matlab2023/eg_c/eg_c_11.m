disp('++++++++++++++++++++++++++++++')
disp('�� C.11')
disp('++++++++++++++++++++++++++++++')

clear
format compact

P = [ 2  1
      1  2 ] 

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
